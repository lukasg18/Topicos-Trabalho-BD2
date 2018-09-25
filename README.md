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

    CREATE TABLE public.atendente (
    idatendente integer NOT NULL,
    numeroregistro integer NOT NULL,
    idposto integer,
    idcontrole integer,
    idpessoa integer
    );

    CREATE TABLE public.bairro (
        idbairro integer NOT NULL,
        nome character varying(30) NOT NULL,
        idmunicipio integer
    );

    CREATE TABLE public.categoria (
        idcategoria integer NOT NULL,
        tipo character varying(20) NOT NULL
    );

    CREATE TABLE public.controle (
        idcontrole integer NOT NULL,
        quantidade integer NOT NULL,
        codigobarras integer NOT NULL,
        datahora timestamp without time zone NOT NULL,
        idtipocontrole integer,
        idmedicamentoposto integer
    );

    CREATE TABLE public.depedente (
        id integer NOT NULL,
        nome character varying(100) NOT NULL,
        datanascimento timestamp without time zone NOT NULL,
        cpf character varying(12) NOT NULL,
        rg integer NOT NULL,
        idtitular integer,
        idpessoa integer
    );

    CREATE TABLE public.estado (
        idestado integer NOT NULL,
        nome character varying(30) NOT NULL
    );

    CREATE TABLE public.estado_medicamento (
        idestadomedicamento integer NOT NULL,
        tipo character varying(30) NOT NULL
    );

    CREATE TABLE public.estado_solicitacao (
        idestadosolicitacao integer NOT NULL,
        tipo character varying(30) NOT NULL
    );

    CREATE TABLE public.laboratorio (
        idlaboratorio integer NOT NULL,
        nome character varying(30) NOT NULL
    );

    CREATE TABLE public.lote (
        idlote integer NOT NULL,
        quantidade integer NOT NULL,
        datavencimento timestamp without time zone NOT NULL,
        numero integer NOT NULL,
        idmedicamentoposto integer
    );

    CREATE TABLE public.medicamento (
        idmedicamento integer NOT NULL,
        nome character varying(80) NOT NULL,
        bula character varying(200) NOT NULL,
        idestadomedicamento integer,
        idrecebimentomedicamento integer
    );

    CREATE TABLE public.medicamento_categoria (
        idmedicamento integer NOT NULL,
        idcategoria integer NOT NULL
    );

    CREATE TABLE public.medicamento_laboratorio (
        idmedicamento integer NOT NULL,
        idlaboratorio integer NOT NULL
    );

    CREATE TABLE public.medicamento_posto (
        idmedicamentoposto integer NOT NULL,
        idposto integer,
        idmedicamento integer,
        idlote integer
    );

    CREATE TABLE public.medicamento_solicitacao (
        idmedicamento integer NOT NULL,
        idsolicitacao integer NOT NULL
    );

    CREATE TABLE public.municipio (
        idmunicipio integer NOT NULL,
        nome character varying(80) NOT NULL,
        idestado integer
    );

    CREATE TABLE public.pessoa (
        id integer NOT NULL,
        nome character varying(100) NOT NULL,
        datanascimento timestamp without time zone NOT NULL,
        cpf character varying(12) NOT NULL,
        rg integer NOT NULL,
        idsexo integer
    );

    CREATE TABLE public.posto (
        idposto integer NOT NULL,
        complemento character varying(200) NOT NULL,
        cep integer NOT NULL,
        numero integer NOT NULL,
        coordgeolong character varying(20) NOT NULL,
        coordgeolat character varying(20) NOT NULL,
        idbairro integer
    );

    CREATE TABLE public.recebimento (
        idrecebimento integer NOT NULL,
        quantidademedicamentos integer NOT NULL,
        datahora timestamp without time zone NOT NULL,
        idpessoa integer
    );

    CREATE TABLE public.recebimento_medicamento (
        idrecebimentomedicamento integer NOT NULL,
        quantidademedicamentos integer NOT NULL,
        datahora timestamp without time zone NOT NULL,
        idatendente integer,
        idrecebimento integer
    );

    CREATE TABLE public.sexo (
        idsexo integer NOT NULL,
        tipo character varying(10) NOT NULL
    );

    CREATE TABLE public.solicitacao (
        idsolicitacao integer NOT NULL,
        datahora timestamp without time zone NOT NULL,
        idestadosolicitacao integer,
        idtitular integer
    );

    CREATE TABLE public.tipo_controle (
        "idtipoControle" integer NOT NULL,
        nome character varying(30) NOT NULL
    );

    CREATE TABLE public.titular (
        idtitular integer NOT NULL,
        numerosus integer NOT NULL,
        idpessoa integer
    );

    ALTER TABLE ONLY public.estado_medicamento
        ADD CONSTRAINT "PK_38a121cdb7308f5383deaa3e893" PRIMARY KEY (idestadomedicamento);


    --
    -- TOC entry 2978 (class 2606 OID 23734)
    -- Name: recebimento_medicamento PK_3af415980e80b41cec112d74af7; Type: CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.recebimento_medicamento
        ADD CONSTRAINT "PK_3af415980e80b41cec112d74af7" PRIMARY KEY (idrecebimentomedicamento);


    --
    -- TOC entry 2986 (class 2606 OID 23760)
    -- Name: medicamento_categoria PK_3e0158b973c2f1b06d9985de14c; Type: CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.medicamento_categoria
        ADD CONSTRAINT "PK_3e0158b973c2f1b06d9985de14c" PRIMARY KEY (idmedicamento, idcategoria);


    --
    -- TOC entry 2970 (class 2606 OID 23702)
    -- Name: controle PK_49c50228e4c0e69e63d26d93f7b; Type: CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.controle
        ADD CONSTRAINT "PK_49c50228e4c0e69e63d26d93f7b" PRIMARY KEY (idcontrole);


    --
    -- TOC entry 2956 (class 2606 OID 23646)
    -- Name: bairro PK_4fdaa48a8d5b79bfc8f5959251a; Type: CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.bairro
        ADD CONSTRAINT "PK_4fdaa48a8d5b79bfc8f5959251a" PRIMARY KEY (idbairro);


    --
    -- TOC entry 2972 (class 2606 OID 23710)
    -- Name: medicamento_posto PK_55f589d48cf08820e62c4218619; Type: CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.medicamento_posto
        ADD CONSTRAINT "PK_55f589d48cf08820e62c4218619" PRIMARY KEY (idmedicamentoposto);


    --
    -- TOC entry 2948 (class 2606 OID 23614)
    -- Name: titular PK_67423dc3145b922e957cd6a3572; Type: CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.titular
        ADD CONSTRAINT "PK_67423dc3145b922e957cd6a3572" PRIMARY KEY (idtitular);


    --
    -- TOC entry 2950 (class 2606 OID 23622)
    -- Name: sexo PK_7174713409d72b841bedc5e86bd; Type: CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.sexo
        ADD CONSTRAINT "PK_7174713409d72b841bedc5e86bd" PRIMARY KEY (idsexo);


    --
    -- TOC entry 2980 (class 2606 OID 23742)
    -- Name: recebimento PK_746650b7410a8cea3f66aa08e96; Type: CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.recebimento
        ADD CONSTRAINT "PK_746650b7410a8cea3f66aa08e96" PRIMARY KEY (idrecebimento);


    --
    -- TOC entry 2952 (class 2606 OID 23630)
    -- Name: estado PK_81df0554baeeb3c342378a627ad; Type: CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.estado
        ADD CONSTRAINT "PK_81df0554baeeb3c342378a627ad" PRIMARY KEY (idestado);


    --
    -- TOC entry 2976 (class 2606 OID 23726)
    -- Name: atendente PK_88005ebf54c891298de85c65e67; Type: CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.atendente
        ADD CONSTRAINT "PK_88005ebf54c891298de85c65e67" PRIMARY KEY (idatendente);


    --
    -- TOC entry 2954 (class 2606 OID 23638)
    -- Name: municipio PK_9288f1d12a5d8150c355b5e9b16; Type: CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.municipio
        ADD CONSTRAINT "PK_9288f1d12a5d8150c355b5e9b16" PRIMARY KEY (idmunicipio);


    --
    -- TOC entry 2960 (class 2606 OID 23662)
    -- Name: categoria PK_9d3cc004e86fc94714b2bca1d86; Type: CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.categoria
        ADD CONSTRAINT "PK_9d3cc004e86fc94714b2bca1d86" PRIMARY KEY (idcategoria);


    --
    -- TOC entry 2958 (class 2606 OID 23654)
    -- Name: laboratorio PK_a02d191f1adefa1e3c2b21ef553; Type: CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.laboratorio
        ADD CONSTRAINT "PK_a02d191f1adefa1e3c2b21ef553" PRIMARY KEY (idlaboratorio);


    --
    -- TOC entry 2966 (class 2606 OID 23686)
    -- Name: lote PK_a8b09f0345f5c68eb282321b11b; Type: CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.lote
        ADD CONSTRAINT "PK_a8b09f0345f5c68eb282321b11b" PRIMARY KEY (idlote);


    --
    -- TOC entry 2942 (class 2606 OID 23590)
    -- Name: estado_solicitacao PK_ac06cf438442a26ddf9b6ae4019; Type: CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.estado_solicitacao
        ADD CONSTRAINT "PK_ac06cf438442a26ddf9b6ae4019" PRIMARY KEY (idestadosolicitacao);


    --
    -- TOC entry 2968 (class 2606 OID 23694)
    -- Name: tipo_controle PK_b701131277b2eacfd010bf0514e; Type: CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.tipo_controle
        ADD CONSTRAINT "PK_b701131277b2eacfd010bf0514e" PRIMARY KEY ("idtipoControle");


    --
    -- TOC entry 2982 (class 2606 OID 23750)
    -- Name: pessoa PK_bb879ac36994545a5a917a09ba5; Type: CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.pessoa
        ADD CONSTRAINT "PK_bb879ac36994545a5a917a09ba5" PRIMARY KEY (id);


    --
    -- TOC entry 2964 (class 2606 OID 23678)
    -- Name: medicamento PK_c9eba17e6634c1e256d21d9ff33; Type: CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.medicamento
        ADD CONSTRAINT "PK_c9eba17e6634c1e256d21d9ff33" PRIMARY KEY (idmedicamento);


    --
    -- TOC entry 2974 (class 2606 OID 23718)
    -- Name: posto PK_cc32119736b40c091e8bb97c554; Type: CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.posto
        ADD CONSTRAINT "PK_cc32119736b40c091e8bb97c554" PRIMARY KEY (idposto);


    --
    -- TOC entry 2988 (class 2606 OID 23765)
    -- Name: medicamento_solicitacao PK_dbd198e6d24cbef7af4af002ae0; Type: CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.medicamento_solicitacao
        ADD CONSTRAINT "PK_dbd198e6d24cbef7af4af002ae0" PRIMARY KEY (idmedicamento, idsolicitacao);


    --
    -- TOC entry 2984 (class 2606 OID 23755)
    -- Name: medicamento_laboratorio PK_df376ac8b15a58f4693f765dbc7; Type: CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.medicamento_laboratorio
        ADD CONSTRAINT "PK_df376ac8b15a58f4693f765dbc7" PRIMARY KEY (idmedicamento, idlaboratorio);


    --
    -- TOC entry 2946 (class 2606 OID 23606)
    -- Name: depedente PK_e8d1c1611d7429d91bbf7f90e49; Type: CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.depedente
        ADD CONSTRAINT "PK_e8d1c1611d7429d91bbf7f90e49" PRIMARY KEY (id);


    --
    -- TOC entry 2944 (class 2606 OID 23598)
    -- Name: solicitacao PK_ffd64b9cb2dfb73cf046c16907a; Type: CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.solicitacao
        ADD CONSTRAINT "PK_ffd64b9cb2dfb73cf046c16907a" PRIMARY KEY (idsolicitacao);


    --
    -- TOC entry 2994 (class 2606 OID 23791)
    -- Name: municipio FK_00033fc05927f355f13fe4aabe6; Type: FK CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.municipio
        ADD CONSTRAINT "FK_00033fc05927f355f13fe4aabe6" FOREIGN KEY (idestado) REFERENCES public.estado(idestado);


    --
    -- TOC entry 2999 (class 2606 OID 23816)
    -- Name: controle FK_24a46e2e828ba39a4eeba528570; Type: FK CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.controle
        ADD CONSTRAINT "FK_24a46e2e828ba39a4eeba528570" FOREIGN KEY (idtipocontrole) REFERENCES public.tipo_controle("idtipoControle");


    --
    -- TOC entry 3015 (class 2606 OID 23896)
    -- Name: medicamento_categoria FK_2a2a7242ecc8b3cb043b4305853; Type: FK CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.medicamento_categoria
        ADD CONSTRAINT "FK_2a2a7242ecc8b3cb043b4305853" FOREIGN KEY (idcategoria) REFERENCES public.categoria(idcategoria) ON DELETE CASCADE;


    --
    -- TOC entry 3016 (class 2606 OID 23901)
    -- Name: medicamento_solicitacao FK_2bb977760e5d8d724e7990faca7; Type: FK CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.medicamento_solicitacao
        ADD CONSTRAINT "FK_2bb977760e5d8d724e7990faca7" FOREIGN KEY (idmedicamento) REFERENCES public.medicamento(idmedicamento) ON DELETE CASCADE;


    --
    -- TOC entry 3001 (class 2606 OID 23826)
    -- Name: medicamento_posto FK_34211f805b13249a304d0490fb3; Type: FK CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.medicamento_posto
        ADD CONSTRAINT "FK_34211f805b13249a304d0490fb3" FOREIGN KEY (idposto) REFERENCES public.posto(idposto);


    --
    -- TOC entry 3008 (class 2606 OID 23861)
    -- Name: recebimento_medicamento FK_385b45f7880e44a717bba3a3253; Type: FK CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.recebimento_medicamento
        ADD CONSTRAINT "FK_385b45f7880e44a717bba3a3253" FOREIGN KEY (idatendente) REFERENCES public.atendente(idatendente);


    --
    -- TOC entry 2991 (class 2606 OID 23776)
    -- Name: depedente FK_444445956119983f6d824840cd5; Type: FK CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.depedente
        ADD CONSTRAINT "FK_444445956119983f6d824840cd5" FOREIGN KEY (idtitular) REFERENCES public.titular(idtitular);


    --
    -- TOC entry 2993 (class 2606 OID 23786)
    -- Name: titular FK_52a860fd27254e95d135301b989; Type: FK CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.titular
        ADD CONSTRAINT "FK_52a860fd27254e95d135301b989" FOREIGN KEY (idpessoa) REFERENCES public.pessoa(id);


    --
    -- TOC entry 2998 (class 2606 OID 23811)
    -- Name: lote FK_5339b040f519fe74d3bc84ac26a; Type: FK CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.lote
        ADD CONSTRAINT "FK_5339b040f519fe74d3bc84ac26a" FOREIGN KEY (idmedicamentoposto) REFERENCES public.medicamento_posto(idmedicamentoposto);


    --
    -- TOC entry 3005 (class 2606 OID 23846)
    -- Name: atendente FK_590cc4410853d91b70266bdfde0; Type: FK CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.atendente
        ADD CONSTRAINT "FK_590cc4410853d91b70266bdfde0" FOREIGN KEY (idposto) REFERENCES public.posto(idposto);


    --
    -- TOC entry 3012 (class 2606 OID 23881)
    -- Name: medicamento_laboratorio FK_59f71b7b9ec062ef9be80f527f0; Type: FK CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.medicamento_laboratorio
        ADD CONSTRAINT "FK_59f71b7b9ec062ef9be80f527f0" FOREIGN KEY (idmedicamento) REFERENCES public.medicamento(idmedicamento) ON DELETE CASCADE;


    --
    -- TOC entry 3000 (class 2606 OID 23821)
    -- Name: controle FK_605b7a2719c836838d164db3e09; Type: FK CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.controle
        ADD CONSTRAINT "FK_605b7a2719c836838d164db3e09" FOREIGN KEY (idmedicamentoposto) REFERENCES public.medicamento_posto(idmedicamentoposto);


    --
    -- TOC entry 3017 (class 2606 OID 23906)
    -- Name: medicamento_solicitacao FK_61f113f26f807ddcd733b6a4fad; Type: FK CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.medicamento_solicitacao
        ADD CONSTRAINT "FK_61f113f26f807ddcd733b6a4fad" FOREIGN KEY (idsolicitacao) REFERENCES public.solicitacao(idsolicitacao) ON DELETE CASCADE;


    --
    -- TOC entry 3006 (class 2606 OID 23851)
    -- Name: atendente FK_63688f6c845296109e7153e4fcc; Type: FK CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.atendente
        ADD CONSTRAINT "FK_63688f6c845296109e7153e4fcc" FOREIGN KEY (idcontrole) REFERENCES public.controle(idcontrole);


    --
    -- TOC entry 2995 (class 2606 OID 23796)
    -- Name: bairro FK_6ac866ccb173b3b7698a49541ff; Type: FK CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.bairro
        ADD CONSTRAINT "FK_6ac866ccb173b3b7698a49541ff" FOREIGN KEY (idmunicipio) REFERENCES public.municipio(idmunicipio);


    --
    -- TOC entry 3009 (class 2606 OID 23866)
    -- Name: recebimento_medicamento FK_88b673959fa960c6a90e8a2751b; Type: FK CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.recebimento_medicamento
        ADD CONSTRAINT "FK_88b673959fa960c6a90e8a2751b" FOREIGN KEY (idrecebimento) REFERENCES public.recebimento(idrecebimento);


    --
    -- TOC entry 3011 (class 2606 OID 23876)
    -- Name: pessoa FK_8ef48590b6acd25e029dc2e24a9; Type: FK CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.pessoa
        ADD CONSTRAINT "FK_8ef48590b6acd25e029dc2e24a9" FOREIGN KEY (idsexo) REFERENCES public.sexo(idsexo);


    --
    -- TOC entry 3014 (class 2606 OID 23891)
    -- Name: medicamento_categoria FK_a0dae1546e187ca046c394e17c7; Type: FK CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.medicamento_categoria
        ADD CONSTRAINT "FK_a0dae1546e187ca046c394e17c7" FOREIGN KEY (idmedicamento) REFERENCES public.medicamento(idmedicamento) ON DELETE CASCADE;


    --
    -- TOC entry 3007 (class 2606 OID 23856)
    -- Name: atendente FK_a5b0986f6decfe7ce7d287a8afc; Type: FK CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.atendente
        ADD CONSTRAINT "FK_a5b0986f6decfe7ce7d287a8afc" FOREIGN KEY (idpessoa) REFERENCES public.pessoa(id);


    --
    -- TOC entry 2992 (class 2606 OID 23781)
    -- Name: depedente FK_aae06f9c94ee75703a930472480; Type: FK CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.depedente
        ADD CONSTRAINT "FK_aae06f9c94ee75703a930472480" FOREIGN KEY (idpessoa) REFERENCES public.pessoa(id);


    --
    -- TOC entry 2996 (class 2606 OID 23801)
    -- Name: medicamento FK_b1117995aeb4d2e9d85377a1baf; Type: FK CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.medicamento
        ADD CONSTRAINT "FK_b1117995aeb4d2e9d85377a1baf" FOREIGN KEY (idestadomedicamento) REFERENCES public.estado_medicamento(idestadomedicamento);


    --
    -- TOC entry 2989 (class 2606 OID 23766)
    -- Name: solicitacao FK_b2fdfa09b7b540599334ddcd0c9; Type: FK CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.solicitacao
        ADD CONSTRAINT "FK_b2fdfa09b7b540599334ddcd0c9" FOREIGN KEY (idestadosolicitacao) REFERENCES public.estado_solicitacao(idestadosolicitacao);


    --
    -- TOC entry 3004 (class 2606 OID 23841)
    -- Name: posto FK_c52dd314fd94874d9d261059c2e; Type: FK CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.posto
        ADD CONSTRAINT "FK_c52dd314fd94874d9d261059c2e" FOREIGN KEY (idbairro) REFERENCES public.bairro(idbairro);


    --
    -- TOC entry 3013 (class 2606 OID 23886)
    -- Name: medicamento_laboratorio FK_d8109f3516752ce13ee32b692ce; Type: FK CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.medicamento_laboratorio
        ADD CONSTRAINT "FK_d8109f3516752ce13ee32b692ce" FOREIGN KEY (idlaboratorio) REFERENCES public.laboratorio(idlaboratorio) ON DELETE CASCADE;


    --
    -- TOC entry 3003 (class 2606 OID 23836)
    -- Name: medicamento_posto FK_da4fc83a19865dd6e72b9e93a60; Type: FK CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.medicamento_posto
        ADD CONSTRAINT "FK_da4fc83a19865dd6e72b9e93a60" FOREIGN KEY (idlote) REFERENCES public.lote(idlote);


    --
    -- TOC entry 2997 (class 2606 OID 23806)
    -- Name: medicamento FK_da5f50458fa1eade784d01475d4; Type: FK CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.medicamento
        ADD CONSTRAINT "FK_da5f50458fa1eade784d01475d4" FOREIGN KEY (idrecebimentomedicamento) REFERENCES public.recebimento_medicamento(idrecebimentomedicamento);


    --
    -- TOC entry 3010 (class 2606 OID 23871)
    -- Name: recebimento FK_ddf1939ef15cc85d043eecb2d88; Type: FK CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.recebimento
        ADD CONSTRAINT "FK_ddf1939ef15cc85d043eecb2d88" FOREIGN KEY (idpessoa) REFERENCES public.pessoa(id);


    --
    -- TOC entry 3002 (class 2606 OID 23831)
    -- Name: medicamento_posto FK_e12054ea5e6bedd76415f02b4bb; Type: FK CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.medicamento_posto
        ADD CONSTRAINT "FK_e12054ea5e6bedd76415f02b4bb" FOREIGN KEY (idmedicamento) REFERENCES public.medicamento(idmedicamento);


    --
    -- TOC entry 2990 (class 2606 OID 23771)
    -- Name: solicitacao FK_f61371e9c058a6d9c9ab83d99fa; Type: FK CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.solicitacao
        ADD CONSTRAINT "FK_f61371e9c058a6d9c9ab83d99fa" FOREIGN KEY (idtitular) REFERENCES public.titular(idtitular);


    -- Completed on 2018-09-24 14:12:47 -03

    --
    -- PostgreSQL database dump complete
    --


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



