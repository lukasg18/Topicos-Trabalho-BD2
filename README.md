# TRABALHO 01 : Sistema de Gerenciamento de Medicamentos para População de Fundão

Trabalho desenvolvido durante a disciplina de BD

    O referido projeto poderá ser:
        a) Um novo sistema/projeto 
        b) Uma expansão de sistema/projeto previamente desenvolvido em disciplinas anteriores 
        (ex: Expansão dos módulos do sistema desenvolvidos em BD1 - incremento mínimo de 50% nos 
        requisitos/complexidade)
        c) Nas avaliações parciais do professor, o grupo deverá anotar todas as observaçoes que forem feitas pelo professor 
        e pelo proprio grupo, enviar uma cópia das atividades por e-mail para o grupo e postar imediatamente estas observaçõe
        como tarefas a serem realizadas como tarefas por meio do gerenciador de projetos do git.
        d) Todas as tarefas devem ser realizadas e deve-se atentar para distribuição igualitária de atividades levando-se 
        em consideração o peso destas.
        e) Os tópicos numerados para cada atividade no devem ser removidos do trabalho. Entretanto, os conteúdos de exemplo 
        em cada tópico devem ser substituídos pelo conteúdo do trabalho em desenvolvimento.
        f) sprints de entrega serão quinzenais ou mensais definidos em aula juntamente com o professor
    
    OBS Importantes: 
        a) Os projetos/sistemas propostos serão validados pelo professor e pela turma
        b) Se possível é interessante que os novos sistemas estejam correlacionados com alguma área 
        previamente estudada pelo aluno
        c) Caso dependa de alguma instituição/parceiro externo, a base de dados e informações pertinentes 
        a esta devem ser obtidas no prazo de até 15 dias apos aprovação da proposta do trabalho 
        (caso contrário, nova proposta deverá ser apresentada a turma implicando logicamente em um prazo 
        mais curto para realização das atividades e conclusão do trabalho)
    
DICA: 
    O kickstart normalmente lança inovaçôes em termos de Sofwares e Apps, portanto pode ser interessante 
    olhar os lançamentos recentes para incrementar as possibilidades e aguçar a criatividade, o que pode 
    auxiliar o grupo com novas ideias na solução proposta. Acesse os links abaixo do para explorar sobre apps e softwares no Kickstarter.
    <br>
    https://www.kickstarter.com/discover/categories/technology/software
    <br>
    https://www.kickstarter.com/discover/categories/technology/apps
# Sumário

### 1	COMPONENTES<br>
* Harã Heique: heikacademicos@hotmail.com
* Jennifer Amaral: jennifergamaral@gmail.com
* Lucas Gomes: lukas.gomes2010@gmail.com
* Luiz Henrique: luiz.lk.lima@gmail.com

### 2	INTRODUÇÃO E MOTIVAÇAO<br>
Os motivos da escolha do sistema proposto são da população não ter a necessidade de ir até o posto sem ter a certeza da obtenção do medicamento, o que consequentemente evitaria filas enormes para a solicitação. Com isso facilitaria a solicitação de medicamentos pela população local, além de ajudar os atendentes internos que trabalham nos postos de controlar e administrar o sistema de forma mais eficiente.
      
### 3	MINI-MUNDO<br>
O registro dos medicamentos são feitos assim que chegam na unidade, registrando assim o nome, o lote, a validade e a fabricação do medicamento. A cada transação é registrado no estoque o medicamento distribuído. A população para fazer a retirada de medicamentos deve levar a carteirinha do SUS, Receita médica emitida pelos serviços públicos de saúde e um documento original com foto. Cada pessoa pode registrar até 3 dependentes com motivos excepcionais para a retirada de remédio em seu lugar, ou para a retirada de medicamentos de crianças de até 7 anos que não tenham o cartão. Será feito um cadastro de cada pessoa através do cartão do SUS e outras informações pessoais para a retirada de medicamentos.<br>
A população pode consultar de maneira online os medicamentos disponíveis em determinados postos da região e solicitar um medicamento em um posto específico.<br>
O responsável pelo sistema terá que realizar a tarefa de cadastro de usuário, cadastro de remédio e registrar as transações efetuadas, além de poder emitir relatórios dos pacientes mensais, medicamentos que saíram no mês, entre outros relatórios. Ele também será notificado no sistema sobre medicamentos próximos de vencer ou sem ter no estoque para solicitar a substituição e o envio dos medicamentos.<br>
Será utilizado das informações de medicações e de dados de consumo médio para elaborar estoques mais flexíveis e também facilitar o rodízio de medicamentos menos usados de um posto para o outro.

### 4	RASCUNHOS BÁSICOS DA INTERFACE (MOCKUPS)<br>

[PDF Subsistema para Atendente do posto](https://github.com/lukasg18/Topicos-Trabalho-BD2/blob/master/Prot%C3%B3tipos/Prot%C3%B3tipo%20PS%20-%20Atendente%20App%20Desktop%202.pdf)
![Alt text](https://raw.githubusercontent.com/lukasg18/Topicos-Trabalho-BD2/master/Imagens/Atendente_posto.png)

[PDF Subsistema para solicitação de Medicamentos realizado pela População](https://github.com/lukasg18/Topicos-Trabalho-BD2/blob/master/Prot%C3%B3tipos/Prot%C3%B3tipo%20PS%20-%20Popula%C3%A7%C3%A3o%20website.pdf)
![Alt text](https://raw.githubusercontent.com/lukasg18/Topicos-Trabalho-BD2/master/Imagens/Atendimento_populacao.png)

### 5	MODELO CONCEITUAL<br>
#### 5.1 NOTACAO ENTIDADE RELACIONAMENTO
![Alt text](https://raw.githubusercontent.com/lukasg18/Topicos-Trabalho-BD2/master/Imagens/Modelo%20Conceitual.png)
    
#### 5.2 NOTACAO UML (Caso esteja fazendo a disciplina de Projeto)

Subsistema para solicitação de Medicamentos realizado pela População
![Alt text](https://raw.githubusercontent.com/lukasg18/Topicos-Trabalho-BD2/master/Imagens/Diagrama%20de%20Classe%20do%20Projeto%20-%20Subsistema%20atendimentoPopulacao.png)

Subsistema para Atendente do posto
![Alt text](https://raw.githubusercontent.com/lukasg18/Topicos-Trabalho-BD2/master/Imagens/Diagrama%20de%20Classe%20do%20Projeto%20-%20Subsistema%20controleEstoque.png)

## Data de Entrega: (23/08/2018) 
(Apresentação para o professor em sala de aula)

#### 5.3 DECISÕES DE PROJETO
    [atributo]: [descrição da decisão]
    
    EXEMPLO:
    a) Campo endereço: em nosso projeto optamos por um campo multivalorado e composto, pois a empresa 
    pode possuir para cada departamento mais de uma localização... 
    b) justifique!

#### 5.4 DESCRIÇÃO DOS DADOS 
    [objeto]: [descrição do objeto]
    
    EXEMPLO:
    CLIENTE: Tabela que armazena as informações relativas ao cliente<br>
    CPF: campo que armazena o número de Cadastro de Pessoa Física para cada cliente da empresa.<br>

### 6	MODELO LÓGICO<br>
![Alt text](https://raw.githubusercontent.com/lukasg18/Topicos-Trabalho-BD2/master/Imagens/Modelo%20L%C3%B3gico.png)

### 7	MODELO FÍSICO<br>
[Link modelo físico](https://raw.githubusercontent.com/lukasg18/Topicos-Trabalho-BD2/master/modeloFisico.sql)

    /* Modelo Físico: */

    CREATE TABLE public."Medicamento_Categoria" (
    "medicamentoIdMedicamento" integer NOT NULL,
    "categoriaIdCategoria" integer NOT NULL
    );

    CREATE TABLE public."Medicamento_Laboratorio" (
        "medicamentoIdMedicamento" integer NOT NULL,
        "laboratorioIdLaboratorio" integer NOT NULL
    );

    CREATE TABLE public."Medicamento_Solicitacao" (
        "medicamentoIdMedicamento" integer NOT NULL,
        "solicitacaoIdSolicitacao" integer NOT NULL
    );

    CREATE TABLE public.atendente (
        id integer NOT NULL,
        nome character varying(100) NOT NULL,
        data_nascimento timestamp without time zone NOT NULL,
        cpf character varying(12) NOT NULL,
        numero_registro integer NOT NULL,
        rg character varying(20) NOT NULL,
        "postoIdPosto" integer,
        "controleIdControle" integer
    );

    CREATE TABLE public.bairro (
        "idBairro" integer NOT NULL,
        nome character varying(30) NOT NULL,
        "municipioIdMunicipio" integer
    );

    CREATE TABLE public.categoria (
        "idCategoria" integer NOT NULL,
        tipo character varying(20) NOT NULL
    );

    CREATE TABLE public.controle (
        "idControle" integer NOT NULL,
        quantidade integer NOT NULL,
        "codigoBarras" integer NOT NULL,
        data_hora timestamp without time zone NOT NULL,
        "tipoControleIdTipoControle" integer,
        "medicamentoPostoIdMedicamentoPosto" integer
    );

    CREATE TABLE public.estado (
        "idEstado" integer NOT NULL,
        nome character varying(30) NOT NULL
    );

    CREATE TABLE public.estado_medicamento (
        "idEstadoMedicamento" integer NOT NULL,
        tipo character varying(30) NOT NULL
    );

    CREATE TABLE public.estado_solicitacao (
        "idEstadoSolicitacao" integer NOT NULL,
        tipo character varying(30) NOT NULL
    );

    CREATE TABLE public.laboratorio (
        "idLaboratorio" integer NOT NULL,
        nome character varying(30) NOT NULL
    );

    CREATE TABLE public.lote (
        "idLote" integer NOT NULL,
        quantidade integer NOT NULL,
        "dataVencimento" timestamp without time zone NOT NULL,
        numero integer NOT NULL,
        "medicamentoPostoIdMedicamentoPosto" integer
    );

    CREATE TABLE public.medicamento (
        "idMedicamento" integer NOT NULL,
        nome character varying(80) NOT NULL,
        bula character varying(200) NOT NULL,
        "estadoMedicamentoIdEstadoMedicamento" integer,
        "recebimentoMedicamentoIdRecebimento" integer
    );

    CREATE TABLE public.medicamento_posto (
        "idMedicamentoPosto" integer NOT NULL,
        "postoIdPosto" integer,
        "medicamentoIdMedicamento" integer,
        "loteIdLote" integer
    );

    CREATE TABLE public.municipio (
        "idMunicipio" integer NOT NULL,
        nome character varying(80) NOT NULL,
        "estadoIdEstado" integer
    );

    CREATE TABLE public.pessoa (
        id integer NOT NULL,
        nome character varying(100) NOT NULL,
        data_nascimento timestamp without time zone NOT NULL,
        cpf character varying(12) NOT NULL,
        "titularId" integer,
        "sexoIdSexo" integer
    );

    CREATE TABLE public.posto (
        "idPosto" integer NOT NULL,
        complemento character varying(200) NOT NULL,
        cep integer NOT NULL,
        numero integer NOT NULL,
        "coordGeoLong" character varying(20) NOT NULL,
        "coordGeoLat" character varying(20) NOT NULL,
        "bairroIdBairro" integer
    );

    CREATE TABLE public.recebimento (
        "idRecebimento" integer NOT NULL,
        "quantidadeMedicamentos" integer NOT NULL,
        data_hora timestamp without time zone NOT NULL,
        "pessoaId" integer,
        "titularId" integer
    );

    CREATE TABLE public.recebimento_medicamento (
        "idRecebimento" integer NOT NULL,
        "quantidadeMedicamentos" integer NOT NULL,
        data_hora timestamp without time zone NOT NULL,
        "atedenteId" integer,
        "recebimentoIdRecebimento" integer
    );


    CREATE TABLE public.sexo (
        id_sexo integer NOT NULL,
        tipo character varying(10) NOT NULL
    );

    CREATE TABLE public.solicitacao (
        "idSolicitacao" integer NOT NULL,
        data_hora timestamp without time zone NOT NULL,
        "estadoSolicitacaoIdEstadoSolicitacao" integer,
        "titularId" integer
    );

    CREATE TABLE public.tipo_controle (
        "idTipoControle" integer NOT NULL
    );

    CREATE TABLE public.titular (
        id integer NOT NULL,
        nome character varying(100) NOT NULL,
        data_nascimento timestamp without time zone NOT NULL,
        cpf character varying(12) NOT NULL,
        "numero_SUS" integer NOT NULL,
        rg integer NOT NULL
    );


    ALTER TABLE ONLY public.titular
        ADD CONSTRAINT "PK_17a47f8d3e52e735ab39702880b" PRIMARY KEY (id);


    --
    -- TOC entry 2200 (class 2606 OID 26126)
    -- Name: PK_183e2a97fc87bf9fde51308fd2e; Type: CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.recebimento
        ADD CONSTRAINT "PK_183e2a97fc87bf9fde51308fd2e" PRIMARY KEY ("idRecebimento");


    --
    -- TOC entry 2170 (class 2606 OID 26006)
    -- Name: PK_1ea30abea1e1617f161924c33eb; Type: CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.solicitacao
        ADD CONSTRAINT "PK_1ea30abea1e1617f161924c33eb" PRIMARY KEY ("idSolicitacao");


    --
    -- TOC entry 2192 (class 2606 OID 26094)
    -- Name: PK_346e0166e819419b545f6e60ecd; Type: CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.medicamento_posto
        ADD CONSTRAINT "PK_346e0166e819419b545f6e60ecd" PRIMARY KEY ("idMedicamentoPosto");


    --
    -- TOC entry 2178 (class 2606 OID 26038)
    -- Name: PK_3ec6e8865a74b47499a298b59e0; Type: CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.laboratorio
        ADD CONSTRAINT "PK_3ec6e8865a74b47499a298b59e0" PRIMARY KEY ("idLaboratorio");


    --
    -- TOC entry 2180 (class 2606 OID 26046)
    -- Name: PK_477e91f3922a7b98a2a036d62cd; Type: CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.categoria
        ADD CONSTRAINT "PK_477e91f3922a7b98a2a036d62cd" PRIMARY KEY ("idCategoria");


    --
    -- TOC entry 2182 (class 2606 OID 26054)
    -- Name: PK_613472a14875390d66c94d97104; Type: CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.estado_medicamento
        ADD CONSTRAINT "PK_613472a14875390d66c94d97104" PRIMARY KEY ("idEstadoMedicamento");


    --
    -- TOC entry 2196 (class 2606 OID 26110)
    -- Name: PK_695420d3280fdd5b0270622775f; Type: CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.atendente
        ADD CONSTRAINT "PK_695420d3280fdd5b0270622775f" PRIMARY KEY (id);


    --
    -- TOC entry 2168 (class 2606 OID 25998)
    -- Name: PK_733c8b1c458f84241e314dc5c65; Type: CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.estado_solicitacao
        ADD CONSTRAINT "PK_733c8b1c458f84241e314dc5c65" PRIMARY KEY ("idEstadoSolicitacao");


    --
    -- TOC entry 2194 (class 2606 OID 26102)
    -- Name: PK_951c400e4d50fd54f00b92c3bb1; Type: CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.posto
        ADD CONSTRAINT "PK_951c400e4d50fd54f00b92c3bb1" PRIMARY KEY ("idPosto");


    --
    -- TOC entry 2176 (class 2606 OID 26030)
    -- Name: PK_95e218378cc8819aa39cf99919d; Type: CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.bairro
        ADD CONSTRAINT "PK_95e218378cc8819aa39cf99919d" PRIMARY KEY ("idBairro");


    --
    -- TOC entry 2208 (class 2606 OID 26155)
    -- Name: PK_a48ae4f9df96e345949e25443b2; Type: CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public."Medicamento_Laboratorio"
        ADD CONSTRAINT "PK_a48ae4f9df96e345949e25443b2" PRIMARY KEY ("medicamentoIdMedicamento", "laboratorioIdLaboratorio");


    --
    -- TOC entry 2172 (class 2606 OID 26014)
    -- Name: PK_b241aab02622741e8d03e871ada; Type: CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.estado
        ADD CONSTRAINT "PK_b241aab02622741e8d03e871ada" PRIMARY KEY ("idEstado");


    --
    -- TOC entry 2206 (class 2606 OID 26150)
    -- Name: PK_bb879ac36994545a5a917a09ba5; Type: CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.pessoa
        ADD CONSTRAINT "PK_bb879ac36994545a5a917a09ba5" PRIMARY KEY (id);


    --
    -- TOC entry 2184 (class 2606 OID 26062)
    -- Name: PK_bcf1d0917b42f29db9155021321; Type: CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.medicamento
        ADD CONSTRAINT "PK_bcf1d0917b42f29db9155021321" PRIMARY KEY ("idMedicamento");


    --
    -- TOC entry 2190 (class 2606 OID 26086)
    -- Name: PK_bf8daf4d5b21fe93238ab13b377; Type: CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.controle
        ADD CONSTRAINT "PK_bf8daf4d5b21fe93238ab13b377" PRIMARY KEY ("idControle");


    --
    -- TOC entry 2198 (class 2606 OID 26118)
    -- Name: PK_cb87e6d8e53fbb5ad5a6d72057f; Type: CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.recebimento_medicamento
        ADD CONSTRAINT "PK_cb87e6d8e53fbb5ad5a6d72057f" PRIMARY KEY ("idRecebimento");


    --
    -- TOC entry 2174 (class 2606 OID 26022)
    -- Name: PK_d510a7de2b2c1b93c004449a765; Type: CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.municipio
        ADD CONSTRAINT "PK_d510a7de2b2c1b93c004449a765" PRIMARY KEY ("idMunicipio");


    --
    -- TOC entry 2186 (class 2606 OID 26070)
    -- Name: PK_d5181dc5ec69ce4937527cf6a05; Type: CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.lote
        ADD CONSTRAINT "PK_d5181dc5ec69ce4937527cf6a05" PRIMARY KEY ("idLote");


    --
    -- TOC entry 2212 (class 2606 OID 26165)
    -- Name: PK_d8b6c88b3005737849ec9ef25e9; Type: CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public."Medicamento_Solicitacao"
        ADD CONSTRAINT "PK_d8b6c88b3005737849ec9ef25e9" PRIMARY KEY ("medicamentoIdMedicamento", "solicitacaoIdSolicitacao");


    --
    -- TOC entry 2204 (class 2606 OID 26142)
    -- Name: PK_d9405c325ee4fbffcbe8f83ee37; Type: CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.sexo
        ADD CONSTRAINT "PK_d9405c325ee4fbffcbe8f83ee37" PRIMARY KEY (id_sexo);


    --
    -- TOC entry 2188 (class 2606 OID 26078)
    -- Name: PK_dcdf3a4e5cf930e4e6e3122a277; Type: CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.tipo_controle
        ADD CONSTRAINT "PK_dcdf3a4e5cf930e4e6e3122a277" PRIMARY KEY ("idTipoControle");


    --
    -- TOC entry 2210 (class 2606 OID 26160)
    -- Name: PK_fd518b34e3d743151329cb4a8cf; Type: CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public."Medicamento_Categoria"
        ADD CONSTRAINT "PK_fd518b34e3d743151329cb4a8cf" PRIMARY KEY ("medicamentoIdMedicamento", "categoriaIdCategoria");


    --
    -- TOC entry 2231 (class 2606 OID 26256)
    -- Name: FK_00abfcae567f96c0e2107b82bed; Type: FK CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.recebimento
        ADD CONSTRAINT "FK_00abfcae567f96c0e2107b82bed" FOREIGN KEY ("titularId") REFERENCES public.titular(id);


    --
    -- TOC entry 2218 (class 2606 OID 26191)
    -- Name: FK_14c55ec51da084d2c99171dbcf2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.medicamento
        ADD CONSTRAINT "FK_14c55ec51da084d2c99171dbcf2" FOREIGN KEY ("recebimentoMedicamentoIdRecebimento") REFERENCES public.recebimento_medicamento("idRecebimento");


    --
    -- TOC entry 2221 (class 2606 OID 26206)
    -- Name: FK_1808309ac2bdd3b42444e816242; Type: FK CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.controle
        ADD CONSTRAINT "FK_1808309ac2bdd3b42444e816242" FOREIGN KEY ("medicamentoPostoIdMedicamentoPosto") REFERENCES public.medicamento_posto("idMedicamentoPosto");


    --
    -- TOC entry 2223 (class 2606 OID 26216)
    -- Name: FK_19388db293da3dbd9a8673ee90b; Type: FK CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.medicamento_posto
        ADD CONSTRAINT "FK_19388db293da3dbd9a8673ee90b" FOREIGN KEY ("medicamentoIdMedicamento") REFERENCES public.medicamento("idMedicamento");


    --
    -- TOC entry 2233 (class 2606 OID 26266)
    -- Name: FK_19448d9959b32dc614ce2dd70fd; Type: FK CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.pessoa
        ADD CONSTRAINT "FK_19448d9959b32dc614ce2dd70fd" FOREIGN KEY ("sexoIdSexo") REFERENCES public.sexo(id_sexo);


    --
    -- TOC entry 2239 (class 2606 OID 26296)
    -- Name: FK_1f1e0f7afe0558188b62d29c038; Type: FK CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public."Medicamento_Solicitacao"
        ADD CONSTRAINT "FK_1f1e0f7afe0558188b62d29c038" FOREIGN KEY ("solicitacaoIdSolicitacao") REFERENCES public.solicitacao("idSolicitacao") ON DELETE CASCADE;


    --
    -- TOC entry 2230 (class 2606 OID 26251)
    -- Name: FK_307bb1dcc300ea2a83ef65a3cdb; Type: FK CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.recebimento
        ADD CONSTRAINT "FK_307bb1dcc300ea2a83ef65a3cdb" FOREIGN KEY ("pessoaId") REFERENCES public.pessoa(id);


    --
    -- TOC entry 2224 (class 2606 OID 26221)
    -- Name: FK_31c0dc608d28f80f59748fdd10c; Type: FK CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.medicamento_posto
        ADD CONSTRAINT "FK_31c0dc608d28f80f59748fdd10c" FOREIGN KEY ("loteIdLote") REFERENCES public.lote("idLote");


    --
    -- TOC entry 2214 (class 2606 OID 26171)
    -- Name: FK_339a02417d43cdf673f2ece9738; Type: FK CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.solicitacao
        ADD CONSTRAINT "FK_339a02417d43cdf673f2ece9738" FOREIGN KEY ("titularId") REFERENCES public.titular(id);


    --
    -- TOC entry 2226 (class 2606 OID 26231)
    -- Name: FK_35199ddca7478d340b04dfab9c7; Type: FK CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.atendente
        ADD CONSTRAINT "FK_35199ddca7478d340b04dfab9c7" FOREIGN KEY ("postoIdPosto") REFERENCES public.posto("idPosto");


    --
    -- TOC entry 2232 (class 2606 OID 26261)
    -- Name: FK_45e3ac61378f59226dc4091709d; Type: FK CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.pessoa
        ADD CONSTRAINT "FK_45e3ac61378f59226dc4091709d" FOREIGN KEY ("titularId") REFERENCES public.titular(id);


    --
    -- TOC entry 2217 (class 2606 OID 26186)
    -- Name: FK_4e1fc58b660419c267361765f40; Type: FK CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.medicamento
        ADD CONSTRAINT "FK_4e1fc58b660419c267361765f40" FOREIGN KEY ("estadoMedicamentoIdEstadoMedicamento") REFERENCES public.estado_medicamento("idEstadoMedicamento");


    --
    -- TOC entry 2234 (class 2606 OID 26271)
    -- Name: FK_4fa9d3691553f9af395acbe9013; Type: FK CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public."Medicamento_Laboratorio"
        ADD CONSTRAINT "FK_4fa9d3691553f9af395acbe9013" FOREIGN KEY ("medicamentoIdMedicamento") REFERENCES public.medicamento("idMedicamento") ON DELETE CASCADE;


    --
    -- TOC entry 2216 (class 2606 OID 26181)
    -- Name: FK_5b0755e03593b8a48da9e2d60a0; Type: FK CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.bairro
        ADD CONSTRAINT "FK_5b0755e03593b8a48da9e2d60a0" FOREIGN KEY ("municipioIdMunicipio") REFERENCES public.municipio("idMunicipio");


    --
    -- TOC entry 2238 (class 2606 OID 26291)
    -- Name: FK_622a5d1f8e6ae87d8ffb09a5085; Type: FK CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public."Medicamento_Solicitacao"
        ADD CONSTRAINT "FK_622a5d1f8e6ae87d8ffb09a5085" FOREIGN KEY ("medicamentoIdMedicamento") REFERENCES public.medicamento("idMedicamento") ON DELETE CASCADE;


    --
    -- TOC entry 2220 (class 2606 OID 26201)
    -- Name: FK_71c2ec99bc522269d7aa2e07a88; Type: FK CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.controle
        ADD CONSTRAINT "FK_71c2ec99bc522269d7aa2e07a88" FOREIGN KEY ("tipoControleIdTipoControle") REFERENCES public.tipo_controle("idTipoControle");


    --
    -- TOC entry 2215 (class 2606 OID 26176)
    -- Name: FK_768a707d408935484eafbd3bc3c; Type: FK CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.municipio
        ADD CONSTRAINT "FK_768a707d408935484eafbd3bc3c" FOREIGN KEY ("estadoIdEstado") REFERENCES public.estado("idEstado");


    --
    -- TOC entry 2227 (class 2606 OID 26236)
    -- Name: FK_7c23bbedbaaddef13c5b63345c4; Type: FK CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.atendente
        ADD CONSTRAINT "FK_7c23bbedbaaddef13c5b63345c4" FOREIGN KEY ("controleIdControle") REFERENCES public.controle("idControle");


    --
    -- TOC entry 2235 (class 2606 OID 26276)
    -- Name: FK_84ac9f70c43e620672e877e13fa; Type: FK CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public."Medicamento_Laboratorio"
        ADD CONSTRAINT "FK_84ac9f70c43e620672e877e13fa" FOREIGN KEY ("laboratorioIdLaboratorio") REFERENCES public.laboratorio("idLaboratorio") ON DELETE CASCADE;


    --
    -- TOC entry 2236 (class 2606 OID 26281)
    -- Name: FK_981c981d9237819ec1223eeed2b; Type: FK CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public."Medicamento_Categoria"
        ADD CONSTRAINT "FK_981c981d9237819ec1223eeed2b" FOREIGN KEY ("medicamentoIdMedicamento") REFERENCES public.medicamento("idMedicamento") ON DELETE CASCADE;


    --
    -- TOC entry 2219 (class 2606 OID 26196)
    -- Name: FK_a1ffcd0b739d528eb3800dd8500; Type: FK CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.lote
        ADD CONSTRAINT "FK_a1ffcd0b739d528eb3800dd8500" FOREIGN KEY ("medicamentoPostoIdMedicamentoPosto") REFERENCES public.medicamento_posto("idMedicamentoPosto");


    --
    -- TOC entry 2237 (class 2606 OID 26286)
    -- Name: FK_a6f055bb1802e8f95a9aef5ca2d; Type: FK CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public."Medicamento_Categoria"
        ADD CONSTRAINT "FK_a6f055bb1802e8f95a9aef5ca2d" FOREIGN KEY ("categoriaIdCategoria") REFERENCES public.categoria("idCategoria") ON DELETE CASCADE;


    --
    -- TOC entry 2229 (class 2606 OID 26246)
    -- Name: FK_a71e89b12d9e0bd3803b7ba5129; Type: FK CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.recebimento_medicamento
        ADD CONSTRAINT "FK_a71e89b12d9e0bd3803b7ba5129" FOREIGN KEY ("recebimentoIdRecebimento") REFERENCES public.recebimento("idRecebimento");


    --
    -- TOC entry 2213 (class 2606 OID 26166)
    -- Name: FK_b938895ecfe3741d96b4d847d6e; Type: FK CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.solicitacao
        ADD CONSTRAINT "FK_b938895ecfe3741d96b4d847d6e" FOREIGN KEY ("estadoSolicitacaoIdEstadoSolicitacao") REFERENCES public.estado_solicitacao("idEstadoSolicitacao");


    --
    -- TOC entry 2228 (class 2606 OID 26241)
    -- Name: FK_dc13d563d3e12e1c870cac3e83b; Type: FK CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.recebimento_medicamento
        ADD CONSTRAINT "FK_dc13d563d3e12e1c870cac3e83b" FOREIGN KEY ("atedenteId") REFERENCES public.atendente(id);


    --
    -- TOC entry 2225 (class 2606 OID 26226)
    -- Name: FK_e786411690f02097b73e8be731b; Type: FK CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.posto
        ADD CONSTRAINT "FK_e786411690f02097b73e8be731b" FOREIGN KEY ("bairroIdBairro") REFERENCES public.bairro("idBairro");


    --
    -- TOC entry 2222 (class 2606 OID 26211)
    -- Name: FK_ec1d4b0e6099481ab76718937db; Type: FK CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.medicamento_posto
        ADD CONSTRAINT "FK_ec1d4b0e6099481ab76718937db" FOREIGN KEY ("postoIdPosto") REFERENCES public.posto("idPosto");

### 8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>
#### 8.1 DETALHAMENTO DAS INFORMAÇÕES
        Detalhamento sobre as informações e processo de obtenção ou geração dos dados.
        Referenciar todas as fontes referentes a:
        a) obtenção dos dados
        b) obtenção de códigos reutilizados
        c) fontes de estudo para desenvolvimento do projeto
        
#### 8.2 INCLUSÃO DO SCRIPT PARA CRIAÇÃO DE TABELAS E INSERÇÃO DOS DADOS (ARQUIVO ÚNICO COM):
        a) inclusão das instruções para criação das tabelas e estruturas de amazenamento do BD
        b) inclusão das instruções de inserção dos dados nas referidas tabelas
        c) inclusão das instruções para execução de outros procedimentos necessários

### 9	TABELAS E PRINCIPAIS CONSULTAS<br>
#### 9.1	GERACAO DE DADOS (MÍNIMO DE 10 REGISTROS PARA CADA TABELA NO BANCO DE DADOS)<br>

## Data de Entrega: (06/09/2018)

<br>
OBS: Incluir para os tópicos 9.2 e 9.3 as instruções SQL + imagens (print da tela) mostrando os resultados.<br>

#### 9.2	SELECT DAS TABELAS COM PRIMEIROS 10 REGISTROS INSERIDOS <br> 
    
<br>

#### 9.3	SELECT DAS VISÕES COM PRIMEIROS 10 REGISTROS DA VIEW <br>
        a) Descrição da view sobre que grupos de usuários (operacional/estratégico) <br>
        e necessidade ela contempla.
        b) Descrição das permissões de acesso e usuários correlacionados (após definição <br>
        destas características)
        c) as funcionalidades informadas no minimundo ou nos mockups(protótipos), que representarem 
        views do sistema (relatórios, informações disponíveis para os usuários, etc) devem estar 
        presentes aqui. 
<br>

#### 9.4	LISTA DE CODIGOS DAS FUNÇÕES, ASSERÇOES E TRIGGERS<br>
        Detalhamento sobre funcionalidade de cada código.
        a) Objetivo
        b) Código do objeto (função/trigger/asserção)
        c) exemplo de dados para aplicação
        d) resultados em forma de tabela/imagem
<br>

## Data de Entrega: (27/09/2018)

#### 9.5	Administração do banco de dados<br>
        Descrição detalhada sobre como serão executadas no banco de dados as <br>
        seguintes atividades.
        a) Segurança e autorização de acesso: especificação básica de configurações de acesso remoto
        b) Estimativas de aquisição de recursos para armazenamento e processamento da informação
        c) Planejamento de rotinas de manutenção e monitoramento do banco
        d) Plano com frequencia de análises visando otimização de performance
<br>

#### 9.6	GERACAO DE DADOS (MÍNIMO DE 1,5 MILHÃO DE REGISTROS PARA PRINCIPAL RELAÇAO)<br>
        a) principal tabela do sistema deve ter no mínimo 1,5 milhão de registros
        b) tabelas diretamente relacionadas a tabela principal 100 mil registros
        c) tabelas auxiliares de relacao multivalorada mínimo de 10 registros
        d) registrar o tempo de inserção em cada uma das tabelas do banco de dados
        e) especificar a quantidade de registros inseridos em cada tabela
        Para melhor compreensão verifiquem o exemplo na base de testes:<br>
        https://github.com/discipbd2/base-de-testes-locadora
        
## Data de Entrega: (31/10/2018)

#### 9.7	Backup do Banco de Dados<br>
        Detalhamento do backup.
        a) Tempo
        b) Tamanho
        c) Teste de restauração (backup)
        d) Tempo para restauração
        e) Teste de restauração (script sql)
        f) Tempo para restauração (script sql)
<br>


#### 9.8	APLICAÇAO DE ÍNDICES E TESTES DE PERFORMANCE<br>
    a) Lista de índices, tipos de índices com explicação de porque foram implementados nas consultas 
    b) Performance esperada VS Resultados obtidos
    c) Tabela de resultados comparando velocidades antes e depois da aplicação dos índices (constando velocidade esperada com planejamento, sem indice e com índice Vs velocidade de execucao real com índice e sem índice).
    d) Escolher as consultas mais complexas para serem analisadas (consultas com menos de 2 joins não serão aceitas)
    e) As imagens do Explain devem ser inclusas no trabalho, bem como explicações sobre os resultados obtidos.
    f) Inclusão de tabela mostrando as 10 execuções, excluindo-se o maior e menor tempos para cada consulta e 
    obtendo-se a media dos outros valores como resultado médio final.
<br>

## Data de Entrega: (22/11/2018)

<br>   

#### 9.9 TRABALHO EM DUPLA - Machine Learning e Data Mining
### Estudar algum dos algoritmos abaixo
### Incluir no trabalho os seguintes tópicos: 
* Explicação/Fundamentação teórica sobre o método, objetivos e restrições! (formato doc/odt ou PDF)
* Onde/quando aplicar 
> ##### Estudar e explicar artigo que aplique o método de mineração de dados/machine learning escolhido
* exemplo de uso/aplicação 
> ##### a) Implementar algoritmo de básico de exemplo obtido na literatura (enviar código executável junto do trabalho com detalhamento de explicação para uso passo a passo)
> #####  b) Aplicar em alguma base de dados aberta (governamental ou sites de datasets disponíveis), registrar e apresentar resultados e algoritmo desenvolvido.

Exemplos de métodos/algoritmos a serem estudados
* "Nearest Neighbors" 
* "Linear SVM" 
* "RBF SVM" 
* "Decision Tree" 
* "Random Forest"
* Pca  
* "Naive Bayes"
<br>
Referência: http://scikit-learn.org/stable/index.html
<br>
Referências adicionais:
Scikit learning Map : http://scikit-learn.org/stable/tutorial/machine_learning_map/index.html
Machine learning in Python with scikit-learn: https://www.youtube.com/playlist?list=PL5-da3qGB5ICeMbQuqbbCOQWcS6OYBr5A



<br>

## Data de Entrega: (06/12/2018)


### 10	ATUALIZAÇÃO DA DOCUMENTAÇÃO/ SLIDES E ENTREGA FINAL<br>
       
### 11  FORMATACAO NO GIT: https://help.github.com/articles/basic-writing-and-formatting-syntax/
<comentario no git>
    
##### About Formatting
    https://help.github.com/articles/about-writing-and-formatting-on-github/
    
##### Basic Formatting in Git
    
    https://help.github.com/articles/basic-writing-and-formatting-syntax/#referencing-issues-and-pull-requests
    
    
##### Working with advanced formatting
    https://help.github.com/articles/working-with-advanced-formatting/
#### Mastering Markdown
    https://guides.github.com/features/mastering-markdown/

### OBSERVAÇÕES IMPORTANTES

#### Todos os arquivos que fazem parte do projeto (Imagens, pdfs, arquivos fonte, etc..), devem estar presentes no GIT. Os arquivos do projeto vigente não devem ser armazenados em quaisquer outras plataformas.
1. Caso existam arquivos com conteúdos sigilosos, comunicar o professor que definirá em conjunto com o grupo a melhor forma de armazenamento do arquivo.

#### Todos os grupos deverão fazer Fork deste repositório e dar permissões administrativas ao usuário deste GIT, para acompanhamento do trabalho.

#### Os usuários criados no GIT devem possuir o nome de identificação do aluno (não serão aceitos nomes como Eu123, meuprojeto, pro456, etc). Em caso de dúvida comunicar o professor.


Link para BrModelo:<br>
http://sis4.com/brModelo/brModelo/download.html
<br>


Link para curso de GIT<br>
![https://www.youtube.com/curso_git](https://www.youtube.com/playlist?list=PLo7sFyCeiGUdIyEmHdfbuD2eR4XPDqnN2?raw=true "Title")



