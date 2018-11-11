DROP FUNCTION IF EXISTS get_solicitacoes_pelo_estado(int, int);
DROP FUNCTION IF EXISTS verifica_qntsolicitacao_pelo_estado(int, int);
DROP FUNCTION IF EXISTS medicamentos_postos(idPosto INTEGER);
DROP FUNCTION IF EXISTS quantidade_recebimento_por_atendente(idPosto INTEGER);
DROP FUNCTION IF EXISTS filtrar_pessoa(VARCHAR(30));
DROP FUNCTION IF EXISTS filtrar_dependentes_pelo_idtitular(idTitular INTEGER);

-- Pega todos os campos da solicitação passando como parâmetro o estado da solitação e o limite de linhas retornadas
CREATE OR REPLACE FUNCTION get_solicitacoes_pelo_estado(int, int)
RETURNS SETOF solicitacao AS 
	'SELECT * FROM solicitacao WHERE estadosolicitacao=$1 LIMIT $2'
LANGUAGE SQL;

-- Pega a quantidade de medicamentos solicitados pelo Titular a partir do estado e a quantidade de linhas limites retornadas
CREATE OR REPLACE FUNCTION verifica_qntsolicitacao_pelo_estado(int, int)
RETURNS TABLE(idtitular int, qtd_solicitado bigint, estadosolicitacao int) AS $$
	SELECT idtitular, sum(quantidademedicamento), estadosolicitacao FROM solicitacao
	WHERE estadosolicitacao=$1
	GROUP BY idtitular, estadosolicitacao 
	LIMIT $2; 
$$
LANGUAGE SQL;

-- Pega os medicamentos e sua quantidade em estoque a partir do id do posto
CREATE OR REPLACE FUNCTION medicamentos_postos(idPosto INTEGER)
RETURNS TABLE("Medicamento" VARCHAR(100), "Quantidade" INTEGER, "Data de Vencimento" TIMESTAMP) AS 
	'SELECT me.nome, mp.quantidade, mp.datavencimento FROM medicamento AS me
	INNER JOIN medicamento_posto AS mp ON (mp.idmedicamento = me.idmedicamento)
	WHERE mp.idposto=$1
	ORDER BY me.nome;'
LANGUAGE SQL;

-- Pega a quantidade de recebimentos realizados pelo atendente a partir do id do posto
CREATE FUNCTION quantidade_recebimento_por_atendente(idPosto INTEGER)
RETURNS TABLE("Registro Geral" VARCHAR(10), "Nome" VARCHAR(50), "Quantidade de Retiradas" BIGINT)
AS $$
	SELECT ate.numeroregistro, pe.nome, COUNT(re.idatendente) FROM pessoa AS pe
	INNER JOIN atendente AS ate ON (ate.idpessoa = pe.idpessoa)
	INNER JOIN recebimento AS re ON (re.idatendente = ate.idpessoa)
	INNER JOIN medicamento_posto AS mp ON (mp.idmedicamentoposto = re.idmedicamentoposto)
	WHERE mp.idposto = $1
	GROUP BY ate.numeroregistro, pe.nome
	ORDER BY 3 DESC;
$$
LANGUAGE SQL;

-- Filtrar pessoas passando como parâmetro o nome
CREATE FUNCTION filtrar_pessoa(VARCHAR(30))
RETURNS SETOF pessoa 
AS $$
	SELECT * FROM pessoa WHERE nome=$1;
$$
LANGUAGE SQL;

-- Filtrar os dependentes pelo id do titular
CREATE FUNCTION filtrar_dependentes_pelo_idtitular(idTitular INTEGER)
RETURNS TABLE("Nome" VARCHAR(40), "Sexo" INTEGER, "Data de Nascimento" TIMESTAMP)
AS $$
	SELECT pe.nome, pe.sexo, pe.datanascimento FROM pessoa AS pe
	INNER JOIN titular AS ti ON(ti.idpessoa = pe.idpessoa)
	INNER JOIN dependente AS de ON (de.idtitular = ti.idpessoa)
	WHERE de.idtitular = $1;
$$
LANGUAGE SQL;

-- Selects das functions	
SELECT * FROM get_solicitacoes_pelo_estado(2, 150);
SELECT * FROM verifica_qntsolicitacao_pelo_estado(1, 200);
SELECT * FROM medicamentos_postos(3);
SELECT * FROM quantidade_recebimento_por_atendente(1);
SELECT * FROM filtrar_pessoa('Soraia Outeiro');
SELECT * FROM filtrar_dependentes_pelo_idtitular(32514);