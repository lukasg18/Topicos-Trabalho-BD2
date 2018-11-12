/*CREATE VIEW view_retirar_medicamentos_solicitados AS*/
EXPLAIN ANALYSE SELECT pe.nome AS "Paciente", me.nome AS "Medicamento", mp.quantidade AS "Quantidade", so.estadosolicitacao AS "Estado" FROM pessoa AS pe
INNER JOIN titular AS ti ON (ti.idpessoa = pe.idpessoa)
INNER JOIN solicitacao AS so ON (so.idtitular = ti.idpessoa)
INNER JOIN medicamento_posto AS mp ON (mp.idmedicamentoposto = so.idmedicamentoposto)
INNER JOIN medicamento AS me ON (me.idmedicamento = mp.idmedicamento)
where estadosolicitacao = 1

/* CREATE VIEW view_medicamentos_mais_retirados_por_quantidade AS*/
EXPLAIN ANALYSE SELECT me.nome, SUM(re.quantidademedicamentos) AS "Quantidade" FROM medicamento AS me
INNER JOIN medicamento_posto AS mp ON (mp.idmedicamento = me.idmedicamento)
INNER JOIN recebimento AS re ON (re.idmedicamentoposto = mp.idmedicamentoposto)
GROUP BY me.idmedicamento
having SUM(re.quantidademedicamentos) >= 8500 
ORDER BY "Quantidade" DESC limit 10

/*CREATE VIEW view_medicamentos_mais_solicitados_por_quantidade AS*/
EXPLAIN ANALYSE SELECT me.nome, SUM(me.idmedicamento) AS "Quantidade" FROM medicamento AS me
INNER JOIN medicamento_posto AS mp ON (mp.idmedicamento = me.idmedicamento)
INNER JOIN solicitacao AS so ON (so.idmedicamentoposto = mp.idmedicamentoposto)
GROUP BY me.idmedicamento
having SUM(me.idmedicamento) >= 1600000
ORDER BY "Quantidade" DESC;

/* CREATE VIEW view_medicamentos_mais_solicitados_por_numero_solicitacoes AS */
EXPLAIN ANALYSE SELECT me.nome, COUNT(me.idmedicamento) AS "Número de Solicitações" FROM medicamento AS me
INNER JOIN medicamento_posto AS mp ON (mp.idmedicamento = me.idmedicamento)
INNER JOIN solicitacao AS so ON (so.idmedicamentoposto = mp.idmedicamentoposto)
GROUP BY me.idmedicamento
having COUNT(me.idmedicamento) >= 25000 and nome ilike 'A%'
ORDER BY "Número de Solicitações" DESC;

/* CREATE VIEW view_medicamentos_mais_retirados_por_numero_retiradas AS */
EXPLAIN ANALYSE SELECT me.nome, COUNT(me.idmedicamento) AS "Número de Retiradas" FROM medicamento AS me
INNER JOIN medicamento_posto AS mp ON (mp.idmedicamento = me.idmedicamento)
INNER JOIN recebimento AS re ON (re.idmedicamentoposto = mp.idmedicamentoposto)
GROUP BY me.idmedicamento
having COUNT(me.idmedicamento) >= 1600 and nome ilike 'A%'
ORDER BY "Número de Retiradas" DESC;
