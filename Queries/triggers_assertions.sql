DROP FUNCTION IF EXISTS isValidMudancaEstado() CASCADE;
DROP FUNCTION IF EXISTS novo_dependente() CASCADE;
DROP FUNCTION IF EXISTS verifica_solicitacao_estado_comunicado() CASCADE;
DROP FUNCTION IF EXISTS muda_estado_medicamento_basedon_quantidade() CASCADE;

/* Função da trigger que só permite a atualização do estado do medicamento para:
	Disponível: caso exista medicamentos no estoque
	Indisponível caso não exista medicamentos no estoque */
CREATE FUNCTION isValidMudancaEstado() RETURNS TRIGGER AS
$$ BEGIN
 	IF (NEW.estadomedicamento = 1) THEN 
 	    IF (NEW.quantidade > 0) THEN
 		RAISE EXCEPTION 'Erro: Não pode modificar estado do medicamento para INDISPONÍVEL porque existem medicamentos no estoque';
 	    END IF;
 	ELSE
 	    IF (NEW.quantidade = 0) THEN
 		RAISE EXCEPTION 'Erro: Não pode modificar estado do medicamento para DISPONÍVEL porque não existem medicamentos no estoque';
 	    END IF;
 	END IF;
 	RETURN NEW;
 END; $$
 LANGUAGE plpgsql;

--Trigger que chama a função que permite ou não o estado de disponibilidade do medicamento
CREATE TRIGGER tr_estado_medicamento
BEFORE UPDATE OF estadomedicamento ON medicamento_posto
FOR EACH ROW
EXECUTE PROCEDURE isValidMudancaEstado();


/* Função da trigger que só permite a inserção de um novo dependente ao titular caso este não 
tenha 3 dependentes que é o máximo definido nas regras de negócio */
CREATE FUNCTION novo_dependente() RETURNS TRIGGER AS
$$ BEGIN
	IF EXISTS(
	   SELECT COUNT(idtitular) FROM dependente
	   WHERE idtitular = NEW.idtitular
	   GROUP BY idtitular
	   HAVING COUNT(idtitular) > 3
	) THEN 
		RAISE EXCEPTION 'Erro: O titular associado a este dependente já possui o número máximo de dependentes, ou seja, 3.';
	END IF;
	RETURN NULL;
END; $$
LANGUAGE plpgsql;

-- Trigger que chama a função que permite a inserção ou não de um novo dependente
CREATE TRIGGER tr_novo_dependente
AFTER INSERT ON dependente
FOR EACH ROW 
EXECUTE PROCEDURE novo_dependente();


-- Função da trigger que só permite a inserção de dados caso tenha até 5 solicitações no estado COMUNICADO = 1
CREATE FUNCTION verifica_solicitacao_estado_comunicado() RETURNS TRIGGER AS
$$ BEGIN
	IF EXISTS(
	   SELECT COUNT(idtitular) FROM solicitacao
	   WHERE idtitular = NEW.idtitular AND estadosolicitacao = 1
	   GROUP BY idtitular
	   HAVING COUNT(idtitular) > 5
	) THEN 
		RAISE EXCEPTION 'Erro: Este titular já possui 5 solicitações no estado comunicado realizadas.';
	END IF;
	RETURN NULL;
END; $$
LANGUAGE plpgsql;


-- Trigger que chama a função que permite a nova solicitação da pessoa
CREATE TRIGGER tr_verifica_solicitacao_estado_comunicado
AFTER INSERT ON solicitacao
FOR EACH ROW
EXECUTE PROCEDURE verifica_solicitacao_estado_comunicado();


-- Mudança do estado do medicamento a partir da quantidade de medicamentos no posto
CREATE FUNCTION muda_estado_medicamento_basedon_quantidade() RETURNS TRIGGER AS
$$ BEGIN
	IF (NEW.quantidade > 0) THEN 
	    IF (NEW.estadomedicamento = 1) THEN
		UPDATE medicamento_posto SET estadomedicamento = 2 WHERE NEW.idmedicamentoposto = idmedicamentoposto;
	    END IF;
	ELSE
	    IF (NEW.estadomedicamento = 2) THEN
	        UPDATE medicamento_posto SET estadomedicamento = 1 WHERE NEW.idmedicamentoposto = idmedicamentoposto;
	    END IF;
	END IF;
	RETURN NEW;
END; $$
LANGUAGE plpgsql;

-- Trigger que chama a função responsável pelo update do estado medicamento com a mudança da quantidade
CREATE TRIGGER tr_muda_estado_medicamento_basedon_quantidade
AFTER INSERT OR UPDATE OF quantidade ON medicamento_posto
FOR EACH ROW
EXECUTE PROCEDURE muda_estado_medicamento_basedon_quantidade();
