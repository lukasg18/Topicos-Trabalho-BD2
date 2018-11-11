/* VOLTADO PARA O SUBSISTEMA DE CONTROLE DO ESTOQUE PARA ATENDENTE DO POSTO */
DROP VIEW IF EXISTS view_cadastro_medicamentos;
DROP VIEW IF EXISTS view_cadastro_pacientes;
DROP VIEW IF EXISTS view_retirar_medicamentos_solicitados;
DROP VIEW IF EXISTS view_medicamentos_mais_retirados_por_quantidade;
DROP VIEW IF EXISTS view_medicamentos_mais_retirados_por_numero_retiradas;
DROP VIEW IF EXISTS view_medicamentos_mais_solicitados_por_quantidade;
DROP VIEW IF EXISTS view_medicamentos_mais_solicitados_por_numero_solicitacoes;

-- Para cadastro de medicamentos
CREATE VIEW view_cadastro_medicamentos AS
SELECT me.nome AS "Nome", mp.datavencimento AS "Data de Vencimento", mp.quantidade AS "Quantidade", la.nome AS "Laboratório" FROM medicamento_posto AS mp
INNER JOIN medicamento AS me ON (me.idmedicamento = mp.idmedicamento)
INNER JOIN medicamento_laboratorio AS ml ON (ml.idmedicamento = me.idmedicamento)
INNER JOIN laboratorio AS la ON (la.idlaboratorio = ml.idlaboratorio);

-- Para cadastro de pacientes/população que solicitam os medicamentos
CREATE VIEW view_cadastro_pacientes AS
SELECT pe.nome AS "Nome", ti.numerosus AS "Nº SUS", pe.cpf AS "CPF", pe.rg AS "Registro Geral" FROM pessoa AS pe
INNER JOIN titular AS ti ON (ti.idpessoa = pe.idpessoa)
ORDER BY pe.nome;

-- Para retirada de medicamentos solicitados pela população/pacientes
CREATE VIEW view_retirar_medicamentos_solicitados AS
SELECT pe.nome AS "Paciente", me.nome AS "Medicamento", mp.quantidade AS "Quantidade", so.estadosolicitacao AS "Estado" FROM pessoa AS pe
INNER JOIN titular AS ti ON (ti.idpessoa = pe.idpessoa)
INNER JOIN solicitacao AS so ON (so.idtitular = ti.idpessoa)
INNER JOIN medicamento_posto AS mp ON (mp.idmedicamentoposto = so.idmedicamentoposto)
INNER JOIN medicamento AS me ON (me.idmedicamento = mp.idmedicamento);

-- Para relatório de medicamento mais retirados pelos pacientes em relação a quantidade retirada no estoque
CREATE VIEW view_medicamentos_mais_retirados_por_quantidade AS
SELECT me.nome, SUM(re.quantidademedicamentos) AS "Quantidade" FROM medicamento AS me
INNER JOIN medicamento_posto AS mp ON (mp.idmedicamento = me.idmedicamento)
INNER JOIN recebimento AS re ON (re.idmedicamentoposto = mp.idmedicamentoposto)
GROUP BY me.idmedicamento
ORDER BY "Quantidade" DESC;

-- Para relatório de medicamento mais retirados pelos pacientes em relação por quantidade de retiradas
CREATE VIEW view_medicamentos_mais_retirados_por_numero_retiradas AS
SELECT me.nome, COUNT(me.idmedicamento) AS "Número de Retiradas" FROM medicamento AS me
INNER JOIN medicamento_posto AS mp ON (mp.idmedicamento = me.idmedicamento)
INNER JOIN recebimento AS re ON (re.idmedicamentoposto = mp.idmedicamentoposto)
GROUP BY me.idmedicamento
ORDER BY "Número de Retiradas" DESC;

-- Para relatório de medicamento mais solicitados pelos pacientes em relação a quantidade solicitada do estoque
CREATE VIEW view_medicamentos_mais_solicitados_por_quantidade AS
SELECT me.nome, SUM(me.idmedicamento) AS "Quantidade" FROM medicamento AS me
INNER JOIN medicamento_posto AS mp ON (mp.idmedicamento = me.idmedicamento)
INNER JOIN solicitacao AS so ON (so.idmedicamentoposto = mp.idmedicamentoposto)
GROUP BY me.idmedicamento
ORDER BY "Quantidade" DESC;

-- Para relatório de medicamento mais solicitados pelos pacientes em relação por quantidade de solicatações
CREATE VIEW view_medicamentos_mais_solicitados_por_numero_solicitacoes AS
SELECT me.nome, COUNT(me.idmedicamento) AS "Número de Solicitações" FROM medicamento AS me
INNER JOIN medicamento_posto AS mp ON (mp.idmedicamento = me.idmedicamento)
INNER JOIN solicitacao AS so ON (so.idmedicamentoposto = mp.idmedicamentoposto)
GROUP BY me.idmedicamento
ORDER BY "Número de Solicitações" DESC;

/* VOLTADO PARA O SUBSISTEMA DE SOLICITACAO DE MEDICAMENTOS REALIZADO PELA POPULAÇÃO */
DROP VIEW IF EXISTS view_medicamentos_para_solicitacao;

CREATE VIEW view_medicamentos_para_solicitacao AS
SELECT me.nome AS "Nome", po.nome AS "Posto", la.nome AS "Laboratório", mp.estadomedicamento AS "Disponibilidade" FROM medicamento AS me
INNER JOIN medicamento_laboratorio AS ml ON(ml.idmedicamento = me.idmedicamento)
INNER JOIN laboratorio AS la ON (la.idlaboratorio = ml.idlaboratorio)
INNER JOIN medicamento_posto AS mp ON (mp.idmedicamento = me.idmedicamento)
INNER JOIN posto AS po ON (po.idposto = mp.idposto);
