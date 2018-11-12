SELECT p.nome AS Titular, po.nome AS "Nome do posto", me.nome AS Medicamento, s.quantidademedicamento "Quantidade de Medicamentos" FROM pessoa AS p
    INNER JOIN titular AS t ON (p.idpessoa = t.idpessoa)
    INNER JOIN solicitacao AS s ON (s.idtitular = t.idpessoa)
    INNER JOIN medicamento_posto AS mp ON (mp.idmedicamentoposto = s.idmedicamentoposto)
    INNER JOIN posto AS po ON (po.idposto = mp.idposto)
    INNER JOIN medicamento AS me ON (me.idmedicamento = mp.idmedicamento)
    ORDER BY p.nome, po.nome

select * from solicitacao limit 10;
select * from titular
select * from medicamento_posto

    create index fk_idtitular on solicitacao (idtitular)
    create index fk_idmedicamentoposto on solicitacao (idmedicamentoposto)
    create index fk_pessoa on titular (idpessoa)
    create index fk_idposto on medicamento_posto (idposto)
    create index fk_idmedicamento on medicamento_posto (idmedicamento)
    create index index_idmedicamentoposto on recebimento (idmedicamentoposto);
    create index index_idpessoa on recebimento (idpessoa);
    create index index_idatendente on recebimento (idatendente);


DROP FUNCTION verifica_solicitacao_por_pessoa(integer)

CREATE OR REPLACE FUNCTION verifica_estado_solicitacao(int)
   RETURNS SETOF solicitacao AS 'select * from solicitacao where estadosolicitacao=$1 limit 100'
   LANGUAGE SQL;

CREATE OR REPLACE FUNCTION verifica_solicitacao_por_pessoa(int)
   RETURNS table(idtitular int, qtd_solicitado bigint, estadosolicitacao int) AS $$ select idtitular, sum(quantidademedicamento), estadosolicitacao from solicitacao where estadosolicitacao=$1 
	group by idtitular, estadosolicitacao limit 100; $$
   LANGUAGE SQL;

   select idtitular, sum(quantidademedicamento) from solicitacao where estadosolicitacao=1 
	group by idtitular limit 100
   
    
SELECT * FROM verifica_estado_solicitacao(1);
SELECT * FROM verifica_solicitacao_por_pessoa(1);



    