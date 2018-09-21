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
    "idMedicamento" integer NOT NULL,
    "idCategoria" integer NOT NULL
    );


    CREATE TABLE public."Medicamento_Laboratorio" (
        "idMedicamento" integer NOT NULL,
        "idLaboratorio" integer NOT NULL
    );

    CREATE TABLE public."Medicamento_Solicitacao" (
        "idMedicamento" integer NOT NULL,
        "idSolicitacao" integer NOT NULL
    );

    CREATE TABLE public.atendente (
        "idAtendente" integer NOT NULL,
        numero_registro integer NOT NULL,
        "idPosto" integer,
        "idControle" integer,
        "idPessoa" integer
    );

    CREATE TABLE public.bairro (
        "idBairro" integer NOT NULL,
        nome character varying(30) NOT NULL,
        "idMunicipio" integer
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
        "idTipoControle" integer,
        "idMedicamentoPosto" integer
    );

    CREATE TABLE public.depedente (
        id integer NOT NULL,
        nome character varying(100) NOT NULL,
        data_nascimento timestamp without time zone NOT NULL,
        cpf character varying(12) NOT NULL,
        rg integer NOT NULL,
        "idTitular" integer,
        "idPessoa" integer
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
        "idMedicamentoPosto" integer
    );

    CREATE TABLE public.medicamento (
        "idMedicamento" integer NOT NULL,
        nome character varying(80) NOT NULL,
        bula character varying(200) NOT NULL,
        "idEstadoMedicamento" integer,
        "idRecebimentoMedicamento" integer
    );

    CREATE TABLE public.medicamento_posto (
        "idMedicamentoPosto" integer NOT NULL,
        "idPosto" integer,
        "idMedicamento" integer,
        "idLote" integer
    );

    CREATE TABLE public.municipio (
        "idMunicipio" integer NOT NULL,
        nome character varying(80) NOT NULL,
        "idEstado" integer
    );

    CREATE TABLE public.pessoa (
        id integer NOT NULL,
        nome character varying(100) NOT NULL,
        data_nascimento timestamp without time zone NOT NULL,
        cpf character varying(12) NOT NULL,
        rg integer NOT NULL,
        "idSexo" integer
    );

    CREATE TABLE public.posto (
        "idPosto" integer NOT NULL,
        complemento character varying(200) NOT NULL,
        cep integer NOT NULL,
        numero integer NOT NULL,
        "coordGeoLong" character varying(20) NOT NULL,
        "coordGeoLat" character varying(20) NOT NULL,
        "idBairro" integer
    );

    CREATE TABLE public.recebimento (
        "idRecebimento" integer NOT NULL,
        "quantidadeMedicamentos" integer NOT NULL,
        data_hora timestamp without time zone NOT NULL,
        "idPessoa" integer
    );

    CREATE TABLE public.recebimento_medicamento (
        "idRecebimentoMedicamento" integer NOT NULL,
        "quantidadeMedicamentos" integer NOT NULL,
        data_hora timestamp without time zone NOT NULL,
        "idAtendente" integer,
        "idRecebimento" integer
    );

    CREATE TABLE public.sexo (
        "idSexo" integer NOT NULL,
        tipo character varying(10) NOT NULL
    );

    CREATE TABLE public.solicitacao (
        "idSolicitacao" integer NOT NULL,
        data_hora timestamp without time zone NOT NULL,
        "idEstadoSolicitacao" integer,
        "idTitular" integer
    );

    CREATE TABLE public.tipo_controle (
        "idTipoControle" integer NOT NULL
    );

    CREATE TABLE public.titular (
        "idTitular" integer NOT NULL,
        "numero_SUS" integer NOT NULL,
        "idPessoa" integer
    );

    ALTER TABLE ONLY public.atendente
        ADD CONSTRAINT "PK_047e5e1ef9e589024076f6a85fd" PRIMARY KEY ("idAtendente");


    --
    -- TOC entry 2213 (class 2606 OID 26712)
    -- Name: PK_183e2a97fc87bf9fde51308fd2e; Type: CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.recebimento
        ADD CONSTRAINT "PK_183e2a97fc87bf9fde51308fd2e" PRIMARY KEY ("idRecebimento");


    --
    -- TOC entry 2183 (class 2606 OID 26592)
    -- Name: PK_185ecaade5c014ed3b0d61d096b; Type: CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.sexo
        ADD CONSTRAINT "PK_185ecaade5c014ed3b0d61d096b" PRIMARY KEY ("idSexo");


    --
    -- TOC entry 2177 (class 2606 OID 26568)
    -- Name: PK_1ea30abea1e1617f161924c33eb; Type: CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.solicitacao
        ADD CONSTRAINT "PK_1ea30abea1e1617f161924c33eb" PRIMARY KEY ("idSolicitacao");


    --
    -- TOC entry 2205 (class 2606 OID 26680)
    -- Name: PK_346e0166e819419b545f6e60ecd; Type: CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.medicamento_posto
        ADD CONSTRAINT "PK_346e0166e819419b545f6e60ecd" PRIMARY KEY ("idMedicamentoPosto");


    --
    -- TOC entry 2191 (class 2606 OID 26624)
    -- Name: PK_3ec6e8865a74b47499a298b59e0; Type: CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.laboratorio
        ADD CONSTRAINT "PK_3ec6e8865a74b47499a298b59e0" PRIMARY KEY ("idLaboratorio");


    --
    -- TOC entry 2193 (class 2606 OID 26632)
    -- Name: PK_477e91f3922a7b98a2a036d62cd; Type: CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.categoria
        ADD CONSTRAINT "PK_477e91f3922a7b98a2a036d62cd" PRIMARY KEY ("idCategoria");


    --
    -- TOC entry 2195 (class 2606 OID 26640)
    -- Name: PK_613472a14875390d66c94d97104; Type: CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.estado_medicamento
        ADD CONSTRAINT "PK_613472a14875390d66c94d97104" PRIMARY KEY ("idEstadoMedicamento");


    --
    -- TOC entry 2211 (class 2606 OID 26704)
    -- Name: PK_67d63c6e5d3f99cc91bbf40b0d8; Type: CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.recebimento_medicamento
        ADD CONSTRAINT "PK_67d63c6e5d3f99cc91bbf40b0d8" PRIMARY KEY ("idRecebimentoMedicamento");


    --
    -- TOC entry 2175 (class 2606 OID 26560)
    -- Name: PK_733c8b1c458f84241e314dc5c65; Type: CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.estado_solicitacao
        ADD CONSTRAINT "PK_733c8b1c458f84241e314dc5c65" PRIMARY KEY ("idEstadoSolicitacao");


    --
    -- TOC entry 2221 (class 2606 OID 26887)
    -- Name: PK_8fa3a602f6da3d1e48c1e8075b8; Type: CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public."Medicamento_Solicitacao"
        ADD CONSTRAINT "PK_8fa3a602f6da3d1e48c1e8075b8" PRIMARY KEY ("idMedicamento", "idSolicitacao");


    --
    -- TOC entry 2207 (class 2606 OID 26688)
    -- Name: PK_951c400e4d50fd54f00b92c3bb1; Type: CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.posto
        ADD CONSTRAINT "PK_951c400e4d50fd54f00b92c3bb1" PRIMARY KEY ("idPosto");


    --
    -- TOC entry 2189 (class 2606 OID 26616)
    -- Name: PK_95e218378cc8819aa39cf99919d; Type: CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.bairro
        ADD CONSTRAINT "PK_95e218378cc8819aa39cf99919d" PRIMARY KEY ("idBairro");


    --
    -- TOC entry 2181 (class 2606 OID 26584)
    -- Name: PK_aabb105ab1e1dd437a7cc53542b; Type: CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.titular
        ADD CONSTRAINT "PK_aabb105ab1e1dd437a7cc53542b" PRIMARY KEY ("idTitular");


    --
    -- TOC entry 2185 (class 2606 OID 26600)
    -- Name: PK_b241aab02622741e8d03e871ada; Type: CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.estado
        ADD CONSTRAINT "PK_b241aab02622741e8d03e871ada" PRIMARY KEY ("idEstado");


    --
    -- TOC entry 2215 (class 2606 OID 26720)
    -- Name: PK_bb879ac36994545a5a917a09ba5; Type: CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.pessoa
        ADD CONSTRAINT "PK_bb879ac36994545a5a917a09ba5" PRIMARY KEY (id);


    --
    -- TOC entry 2197 (class 2606 OID 26648)
    -- Name: PK_bcf1d0917b42f29db9155021321; Type: CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.medicamento
        ADD CONSTRAINT "PK_bcf1d0917b42f29db9155021321" PRIMARY KEY ("idMedicamento");


    --
    -- TOC entry 2203 (class 2606 OID 26672)
    -- Name: PK_bf8daf4d5b21fe93238ab13b377; Type: CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.controle
        ADD CONSTRAINT "PK_bf8daf4d5b21fe93238ab13b377" PRIMARY KEY ("idControle");


    --
    -- TOC entry 2187 (class 2606 OID 26608)
    -- Name: PK_d510a7de2b2c1b93c004449a765; Type: CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.municipio
        ADD CONSTRAINT "PK_d510a7de2b2c1b93c004449a765" PRIMARY KEY ("idMunicipio");


    --
    -- TOC entry 2199 (class 2606 OID 26656)
    -- Name: PK_d5181dc5ec69ce4937527cf6a05; Type: CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.lote
        ADD CONSTRAINT "PK_d5181dc5ec69ce4937527cf6a05" PRIMARY KEY ("idLote");


    --
    -- TOC entry 2201 (class 2606 OID 26664)
    -- Name: PK_dcdf3a4e5cf930e4e6e3122a277; Type: CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.tipo_controle
        ADD CONSTRAINT "PK_dcdf3a4e5cf930e4e6e3122a277" PRIMARY KEY ("idTipoControle");


    --
    -- TOC entry 2219 (class 2606 OID 26909)
    -- Name: PK_e84caec7d0749d508c1b1990010; Type: CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public."Medicamento_Categoria"
        ADD CONSTRAINT "PK_e84caec7d0749d508c1b1990010" PRIMARY KEY ("idMedicamento", "idCategoria");


    --
    -- TOC entry 2179 (class 2606 OID 26576)
    -- Name: PK_e8d1c1611d7429d91bbf7f90e49; Type: CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.depedente
        ADD CONSTRAINT "PK_e8d1c1611d7429d91bbf7f90e49" PRIMARY KEY (id);


    --
    -- TOC entry 2217 (class 2606 OID 26905)
    -- Name: PK_fb2270c21dddeb51e640f3f2ced; Type: CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public."Medicamento_Laboratorio"
        ADD CONSTRAINT "PK_fb2270c21dddeb51e640f3f2ced" PRIMARY KEY ("idMedicamento", "idLaboratorio");


    --
    -- TOC entry 2249 (class 2606 OID 26888)
    -- Name: FK_112b76c1d121d967537c4f773c2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public."Medicamento_Solicitacao"
        ADD CONSTRAINT "FK_112b76c1d121d967537c4f773c2" FOREIGN KEY ("idMedicamento") REFERENCES public.medicamento("idMedicamento") ON DELETE CASCADE;


    --
    -- TOC entry 2224 (class 2606 OID 26746)
    -- Name: FK_14e43dd1898a4e5f2425cf395e6; Type: FK CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.depedente
        ADD CONSTRAINT "FK_14e43dd1898a4e5f2425cf395e6" FOREIGN KEY ("idTitular") REFERENCES public.titular("idTitular");


    --
    -- TOC entry 2250 (class 2606 OID 26893)
    -- Name: FK_166b267ce848696cb361fae65fe; Type: FK CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public."Medicamento_Solicitacao"
        ADD CONSTRAINT "FK_166b267ce848696cb361fae65fe" FOREIGN KEY ("idSolicitacao") REFERENCES public.solicitacao("idSolicitacao") ON DELETE CASCADE;


    --
    -- TOC entry 2232 (class 2606 OID 26786)
    -- Name: FK_24dd7e75561f9c8b1e9f87314c2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.controle
        ADD CONSTRAINT "FK_24dd7e75561f9c8b1e9f87314c2" FOREIGN KEY ("idTipoControle") REFERENCES public.tipo_controle("idTipoControle");


    --
    -- TOC entry 2244 (class 2606 OID 26846)
    -- Name: FK_2fdd94c6218074933927bdb9466; Type: FK CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.pessoa
        ADD CONSTRAINT "FK_2fdd94c6218074933927bdb9466" FOREIGN KEY ("idSexo") REFERENCES public.sexo("idSexo");


    --
    -- TOC entry 2229 (class 2606 OID 26771)
    -- Name: FK_3012f51258ac1377dea0cd560c0; Type: FK CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.medicamento
        ADD CONSTRAINT "FK_3012f51258ac1377dea0cd560c0" FOREIGN KEY ("idEstadoMedicamento") REFERENCES public.estado_medicamento("idEstadoMedicamento");


    --
    -- TOC entry 2225 (class 2606 OID 26751)
    -- Name: FK_3ad9105260c84ed58140d59af02; Type: FK CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.depedente
        ADD CONSTRAINT "FK_3ad9105260c84ed58140d59af02" FOREIGN KEY ("idPessoa") REFERENCES public.pessoa(id);


    --
    -- TOC entry 2247 (class 2606 OID 26920)
    -- Name: FK_5155ff23f1378ebb595c21a33b8; Type: FK CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public."Medicamento_Categoria"
        ADD CONSTRAINT "FK_5155ff23f1378ebb595c21a33b8" FOREIGN KEY ("idMedicamento") REFERENCES public.medicamento("idMedicamento") ON DELETE CASCADE;


    --
    -- TOC entry 2239 (class 2606 OID 26821)
    -- Name: FK_517b1a1e04528f46a9b83c61e4b; Type: FK CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.atendente
        ADD CONSTRAINT "FK_517b1a1e04528f46a9b83c61e4b" FOREIGN KEY ("idControle") REFERENCES public.controle("idControle");


    --
    -- TOC entry 2237 (class 2606 OID 26811)
    -- Name: FK_5f071a723a1c31f17da02b5c258; Type: FK CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.posto
        ADD CONSTRAINT "FK_5f071a723a1c31f17da02b5c258" FOREIGN KEY ("idBairro") REFERENCES public.bairro("idBairro");


    --
    -- TOC entry 2227 (class 2606 OID 26761)
    -- Name: FK_6523ec81c05ab07375927c32739; Type: FK CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.municipio
        ADD CONSTRAINT "FK_6523ec81c05ab07375927c32739" FOREIGN KEY ("idEstado") REFERENCES public.estado("idEstado");


    --
    -- TOC entry 2222 (class 2606 OID 26736)
    -- Name: FK_660b56639042b8263593ca9f313; Type: FK CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.solicitacao
        ADD CONSTRAINT "FK_660b56639042b8263593ca9f313" FOREIGN KEY ("idEstadoSolicitacao") REFERENCES public.estado_solicitacao("idEstadoSolicitacao");


    --
    -- TOC entry 2243 (class 2606 OID 26841)
    -- Name: FK_6cb50726019f0db418590a5d266; Type: FK CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.recebimento
        ADD CONSTRAINT "FK_6cb50726019f0db418590a5d266" FOREIGN KEY ("idPessoa") REFERENCES public.pessoa(id);


    --
    -- TOC entry 2226 (class 2606 OID 26756)
    -- Name: FK_70caba7e5af8f8322697a9d4de8; Type: FK CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.titular
        ADD CONSTRAINT "FK_70caba7e5af8f8322697a9d4de8" FOREIGN KEY ("idPessoa") REFERENCES public.pessoa(id);


    --
    -- TOC entry 2240 (class 2606 OID 26826)
    -- Name: FK_842f2d3d36e34add53e9e7401e2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.atendente
        ADD CONSTRAINT "FK_842f2d3d36e34add53e9e7401e2" FOREIGN KEY ("idPessoa") REFERENCES public.pessoa(id);


    --
    -- TOC entry 2246 (class 2606 OID 26915)
    -- Name: FK_8717de229ddfebb2b23232da8d0; Type: FK CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public."Medicamento_Laboratorio"
        ADD CONSTRAINT "FK_8717de229ddfebb2b23232da8d0" FOREIGN KEY ("idLaboratorio") REFERENCES public.laboratorio("idLaboratorio") ON DELETE CASCADE;


    --
    -- TOC entry 2235 (class 2606 OID 26801)
    -- Name: FK_8d2af46514530652469a590681f; Type: FK CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.medicamento_posto
        ADD CONSTRAINT "FK_8d2af46514530652469a590681f" FOREIGN KEY ("idMedicamento") REFERENCES public.medicamento("idMedicamento");


    --
    -- TOC entry 2245 (class 2606 OID 26910)
    -- Name: FK_8d976377355b346454bc7943fd6; Type: FK CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public."Medicamento_Laboratorio"
        ADD CONSTRAINT "FK_8d976377355b346454bc7943fd6" FOREIGN KEY ("idMedicamento") REFERENCES public.medicamento("idMedicamento") ON DELETE CASCADE;


    --
    -- TOC entry 2248 (class 2606 OID 26925)
    -- Name: FK_95ae3bdad991d76569acd753a3b; Type: FK CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public."Medicamento_Categoria"
        ADD CONSTRAINT "FK_95ae3bdad991d76569acd753a3b" FOREIGN KEY ("idCategoria") REFERENCES public.categoria("idCategoria") ON DELETE CASCADE;


    --
    -- TOC entry 2233 (class 2606 OID 26791)
    -- Name: FK_a857347ce8930d639b0df6ca248; Type: FK CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.controle
        ADD CONSTRAINT "FK_a857347ce8930d639b0df6ca248" FOREIGN KEY ("idMedicamentoPosto") REFERENCES public.medicamento_posto("idMedicamentoPosto");


    --
    -- TOC entry 2228 (class 2606 OID 26766)
    -- Name: FK_aa99249764da549829ff3c72615; Type: FK CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.bairro
        ADD CONSTRAINT "FK_aa99249764da549829ff3c72615" FOREIGN KEY ("idMunicipio") REFERENCES public.municipio("idMunicipio");


    --
    -- TOC entry 2234 (class 2606 OID 26796)
    -- Name: FK_ae65af188a8e5d9e203f624ef6f; Type: FK CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.medicamento_posto
        ADD CONSTRAINT "FK_ae65af188a8e5d9e203f624ef6f" FOREIGN KEY ("idPosto") REFERENCES public.posto("idPosto");


    --
    -- TOC entry 2238 (class 2606 OID 26816)
    -- Name: FK_b88a970cd7bb312c1c670a424e8; Type: FK CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.atendente
        ADD CONSTRAINT "FK_b88a970cd7bb312c1c670a424e8" FOREIGN KEY ("idPosto") REFERENCES public.posto("idPosto");


    --
    -- TOC entry 2230 (class 2606 OID 26776)
    -- Name: FK_c1024416a7feb22a1c1f41ebd65; Type: FK CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.medicamento
        ADD CONSTRAINT "FK_c1024416a7feb22a1c1f41ebd65" FOREIGN KEY ("idRecebimentoMedicamento") REFERENCES public.recebimento_medicamento("idRecebimentoMedicamento");


    --
    -- TOC entry 2241 (class 2606 OID 26831)
    -- Name: FK_c4f4ee02539993196aae2ca33fe; Type: FK CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.recebimento_medicamento
        ADD CONSTRAINT "FK_c4f4ee02539993196aae2ca33fe" FOREIGN KEY ("idAtendente") REFERENCES public.atendente("idAtendente");


    --
    -- TOC entry 2231 (class 2606 OID 26781)
    -- Name: FK_cac4a32907078152eeb18f1d01d; Type: FK CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.lote
        ADD CONSTRAINT "FK_cac4a32907078152eeb18f1d01d" FOREIGN KEY ("idMedicamentoPosto") REFERENCES public.medicamento_posto("idMedicamentoPosto");


    --
    -- TOC entry 2242 (class 2606 OID 26836)
    -- Name: FK_cb87e6d8e53fbb5ad5a6d72057f; Type: FK CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.recebimento_medicamento
        ADD CONSTRAINT "FK_cb87e6d8e53fbb5ad5a6d72057f" FOREIGN KEY ("idRecebimento") REFERENCES public.recebimento("idRecebimento");


    --
    -- TOC entry 2223 (class 2606 OID 26741)
    -- Name: FK_dca580c0e1979f1565dbe7f1136; Type: FK CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.solicitacao
        ADD CONSTRAINT "FK_dca580c0e1979f1565dbe7f1136" FOREIGN KEY ("idTitular") REFERENCES public.titular("idTitular");


    --
    -- TOC entry 2236 (class 2606 OID 26806)
    -- Name: FK_f2f65e4114006bde0f6a359b693; Type: FK CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.medicamento_posto
        ADD CONSTRAINT "FK_f2f65e4114006bde0f6a359b693" FOREIGN KEY ("idLote") REFERENCES public.lote("idLote");

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



