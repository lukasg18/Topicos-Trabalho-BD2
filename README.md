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
O registro dos medicamentos são feitos assim que chegam na unidade, registrando assim o nome, o lote, a validade e a fabricação do medicamento. A cada transação é registrado no estoque o medicamento distribuído. A população para fazer a retirada de medicamentos deve levar a carteirinha do SUS, Receita médica emitida pelos serviços públicos de saúde e um documento original com foto. Cada pessoa pode registrar até 3 dependentes com motivos excepcionais para a retirada de remédio em seu lugar. Será feito um cadastro de cada pessoa através do cartão do SUS e outras informações pessoais para a retirada de medicamentos.<br>
A população pode consultar de maneira online os medicamentos disponíveis em determinados postos da região e solicitar um medicamento em um posto específico.<br>
O responsável pelo sistema terá que realizar a tarefa de cadastro de usuário, cadastro de remédio e registrar as transações efetuadas, além de poder emitir relatórios dos pacientes mensais, medicamentos que saíram no mês, entre outros relatórios. Ele também será notificado no sistema sobre medicamentos próximos de vencer ou sem ter no estoque para solicitar a substituição e o envio dos medicamentos.<br>
Será utilizado das informações de medicações e de dados de consumo médio para elaborar estoques mais flexíveis e também facilitar o rodízio de medicamentos menos usados de um posto para o outro.

### 4	RASCUNHOS BÁSICOS DA INTERFACE (MOCKUPS)<br>

[PDF Subsistema para Atendente do posto](https://github.com/lukasg18/Topicos-Trabalho-BD2/blob/master/Prot%C3%B3tipos/Atendente%20Web.pdf)
![Alt text](https://raw.githubusercontent.com/lukasg18/Topicos-Trabalho-BD2/master/Imagens/Prot%C3%B3tipos/Atendimento_posto.png)

[PDF Subsistema para solicitação de Medicamentos realizado pela População](https://github.com/lukasg18/Topicos-Trabalho-BD2/blob/master/Prot%C3%B3tipos/Popula%C3%A7%C3%A3o%20WebSite.pdf)
![Alt text](https://raw.githubusercontent.com/lukasg18/Topicos-Trabalho-BD2/master/Imagens/Prot%C3%B3tipos/Atendimento_populacao.png)

### 5	MODELO CONCEITUAL<br>
#### 5.1 NOTACAO ENTIDADE RELACIONAMENTO
![Alt text](https://raw.githubusercontent.com/lukasg18/Topicos-Trabalho-BD2/master/Imagens/Modelos/Modelo_Conceitual.png)
    
#### 5.2 NOTACAO UML (Caso esteja fazendo a disciplina de Projeto)

Subsistema para solicitação de Medicamentos realizado pela População
![Alt text](https://raw.githubusercontent.com/lukasg18/Topicos-Trabalho-BD2/master/Imagens/Modelos/Diagrama_classes_projeto_AtendimentoPopulacao.png)

Subsistema para Atendente do posto
![Alt text](https://raw.githubusercontent.com/lukasg18/Topicos-Trabalho-BD2/master/Imagens/Modelos/Diagrama_classes_projeto_ControleEstoque.png)

## Data de Entrega: (23/08/2018) 
(Apresentação para o professor em sala de aula)

#### 5.3 DECISÕES DE PROJETO
    - sexo: este campo se tornou um atributo em vez de uma tabela, pois em nível de código é um atributo/propriedade da classe Pessoa do tipo Enum Sexo. 
    Assim quando se utilizar o ORM para gerar as tabelas do banco de dados será mapeado com um código inteiro correspondente do Enum Sexo.
    - estadoMedicamento: Mesmos motivos do atributo sexo com diferença que a 
    propriedade é do tipo Enum EstadoMedicamento.
    - estadoSolicitacao: Mesmos motivos dos atributos sexo e estadoMedicamento. 
    Entretanto com a diferença que a propriedade é do tipo Enum EstadoSolicitacao.
    - endereço: como decisão foi decidido quebrar em três entidades que se relacionam, os quais são: Estado, Municipio e Bairro. 
    Além de a própria entidade posto também conter informações específicas de localização do posto, como latitude e longitude que tem como principal objetivo na visualização nas views que fazem o atendimento das solicitações da população.
    Outro ponto importante é mesmo que no estado inicial do software é voltado somente para o município de Fundão foram criados as entidades Município e Estado visando a escalabilidade e crescimento do sistema.
    - Dependente: apesar dessa entidade não conter nenhum atributo específico que não herde da entidade Pessoa foi decidido
    que existisse para que tivesse a separação apropriada entre os tipos de pessoas, 
    ou seja, caso queira pegar os atendentes do sistema só ir até a tabela de atendentes, assim como também tanto para o dependente quanto para o titular.
    - Entrada_Medicamento: é uma entidade surgida pelo relacionamento n:n de Atendente com Medicamento_Posto e 
    basicamente serve para o controle e registro de entrada medicamentos realizados pelo atendente do posto. 
    Anteriormente foram modelados diversas maneiras até chegar nessa entidade, mas que pode sofrer alterações futuras.
    - Recebimento: como foi citado acima sobre o controle de entrada de medicamentos, a entidade Recebimento surge também do relacionamento n:n de Pessoa com Medicamento_Posto e atua de maneira a controlar e 
    registrar a saída de medicamentos previamente solicitados pelos usuários referente a população.
    - dataVencimento: é um atributo da entidade Medicamento_Posto que indica a data de vencimento do medicamento referente ao determinado posto. 
    Em um sistema em produção e com aplicação real o ideal e coerente seria a utilização de uma entidade lote que se relaciona com Medicamento_Posto e teria como atributos: número do lote, assim como sua data de vencimento do lote em questão e a quantidade de medicamentos do lote. 
    Entretanto foi decidido ter somente um data de vencimento comum aos medicamentos em geral para facilitar no desenvolvimento do sistema para uma versão inicial. 
    Logo, claramente se fosse colocado o sistema em produção deveria adotar uma estratégia como a do lote mencionada anteriormente.
    - Medicamento: como no tópico anterior, o medicamento é uma entidade mais complexa e com mais características. Como decisão de projeto decidimos pegar somente algumas características mais relevantes até o momento. 
    Claramente que em versões posteriores ou até mesmo em uma aplicação real do software em produção ela seria uma classe mais bem trabalhada e detalhada, definindo os tipos de medicamentos, suas categorias e afins.

#### 5.4 DESCRIÇÃO DOS DADOS
    ATENDENTE: Tabela que contém os dados do atendente do posto.
        idpessoa: campo que armazena o Identificador de pessoa(o atendente no caso).
        numeroregistro: campo que armazena o registro de funcionário do posto.
        idposto: campo que armazena o Identificador do posto que o atendente está alocado.
        
    BAIRRO: Tabela que contém dados sobre o bairro em que o posto de saúde está localizado.
        idbairro: campo que armazena o identificador do bairro.
        nome: campo que armazena o nome do bairro.
        idmunicipio: campo que armazena o identificador do município que o bairro está alocado.

    DEPENDENTE: Tabela que armazena apenas os códigos de pessoa e titular ligados ao qual pertence
        idpessoa: campo que armazena o Identificador de pessoa(o dependente no caso).
        idtitular: campo que armazena o Identificador do titular ao qual o dependente está ligado.
    
    ESTADO: Tabela que contém dados sobre o estado em que o posto de saúde está localizado.
        idestado: campo que armazena o identificador do estado.
        nome: campo que armazena o nome do estado.
    
    LABORATORIO: Tabela que contém dados acerca do laboratório ao qual pertence o medicamento.
        idlaboratorio: campo que armazena o identificador do laboratório.
        nome: campo que armazena o nome do laboratório.
    
    MEDICAMENTO: Tabela que contém dados sobre o medicamento.
        idmedicamento: campo que armazena o identificador do medicamento.
        nome: campo que armazena o nome do medicamento.	
        bula: campo que armazena o link das páginas html sobre a bula do medicamento.
        
    MEDICAMENTO_LABORATORIO: Tabela que reúne dados das entidades Medicamento e Laboratório.
        idlaboratorio: campo que guarda o identificador do laboratório.
        idmedicamento: campo que guarda o identificador do Medicamento.
        
    MEDICAMENTO_POSTO: Tabela que contém os dados sobre os medicamentos de acordo com a localização do posto de saúde e reúne dados das entidades Posto e Medicamento.
        idmedicamentoPosto: campo que armazena o identificador do medicamento de acordo com o posto.
        estadomedicamento: campo que armazena a disponibilidade do medicamento de acordo com o posto(indisponível(0) e disponível(1)).
        quantidade: campo que guarda a quantidade de determinado medicamento de acordo com o posto.
        datavencimento: campo que guarda a data de vencimento do medicamento no dado posto.
        idposto: campo que armazena o identificador do posto.
        idmedicamento: campo que armazena o identificador do medicamento.
    
    MUNICIPIO: Tabela que contém dados sobre o município em que o posto de saúde está localizado.
        idmunicipio: campo que armazena o identificador do município.
        nome: campo que armazena o nome do município.
        idestado: campo que armazena o identificador do Estado em que o município está alocado.
    
    PESSOA: Tabela que contém os dados da pessoa.
        idpessoa: campo que armazena o Identificador de pessoa.
        nome: campo que armazena o nome da pessoa.
        datanascimento: campo que armazena a data de nascimento da pessoa.
        cpf: campo que armazena o cadastro de pessoa física da pessoa
        rg: campo que armazena o registro geral do documento de identidade da pessoa.
        sexo: campo que indica o sexo da pessoa, podendo ser masculino(0) e feminino(1).
        
    POSTO: Tabela que contém os dados relacionados ao posto de saúde.
        idposto: campo que armazena o identificador do posto de saúde.
        nome: campo que armazena o nome do posto de saúde.
        rua: campo que armazena o nome da rua na qual o posto está localizado.
        numero: número de endereço do posto de saúde.
        cep: campo que armazena o código de endereçamento postal dos posto de saúde.
        coordgeolong: campo que armazena as coordenadas geográficas de longitude da localização do posto de saúde.
        coordgeolat: campo que armazena as coordenadas geográficas de latitude da localização do posto de saúde.
        idbairro: campo que armazena o identificador do bairro em que o posto se encontra.
    
    RECEBIMENTO: Tabela que contém os dados sobre retirada dos medicamentos por uma pessoa.
        idrecebimento: campo que armazena o identificador do recebimento.
        data_hora: campo que armazena o registro de data e hora do recebimento.
        quantidademedicamento: armazena a quantidade de medicamentos retirados em um recebimento.
        idpessoa: campo que armazena o identificador da pessoa(titular ou dependente) que retira o medicamento.
        idatendente: campo que armazena o identificador do atendente que realiza a retirada do medicamento.
        idmedicamentoposto: campo que armazena o identificador do medicamento no determinado posto em que foi realizado a retirada de recebimento do medicamento.
        
    REGISTRO_MEDICAMENTO: Tabela que guarda os registro de entrada de novos medicamentos ou de medicamentos em falta no posto.
        idregistromedicamento: campo que armazena o identificador da entrada/registro de um medicamento.
        data_hora: campo que armazena o registro de data e hora da entrada de um medicamento.
        quantidade: campo que armazena a quantidade de medicamentos adquiridos(inseridos).
        idmedicamentoposto: campo que armazena o identificador do medicamento inserido no estoque do determinado posto.
        idatendente: campo que armazena o identificador do atendente que realiza a entrada de medicamentos no posto.
    
    SOLICITACAO: Tabela que contém os dados relacionados a uma solicitação de medicamento.
        idSolicitacao: campo que armazena o identificador da solicitação.
        data_hora: campo que armazena o registro de data e hora da solicitação.
        estadosolicitacao: campo que armazena o estado em que a solicitação encontra(comunicado(0), atendido(1) ou expirado(2)).
        quantidademedicamento: campo que armazena a quantidade de medicamentos solicitados.
        idtitular: campo que armazena o identificador da pessoa titular que solicitou os medicamentos.
        idmedicamentoposto: campo que armazena o identificador do medicamento no determinado posto em que foi realizado solicitação do medicamento desejado.

    TITULAR: Tabela que contém o código necessário para ser um solicitante de medicamento.
        idpessoa: campo que armazena o Identificador de pessoa(o titular no caso).
        numerosus: campo que armazena o número cadastrado da pessoa no Sistema único de Saúde.

### 6	MODELO LÓGICO<br>
![Alt text](https://raw.githubusercontent.com/lukasg18/Topicos-Trabalho-BD2/master/Imagens/Modelos/Modelo_Logico.png)

### 7	MODELO FÍSICO<br>
[Link modelo físico](https://raw.githubusercontent.com/lukasg18/Topicos-Trabalho-BD2/master/Modelagens/Modelo_Fisico.sql)
 
 ```sql
    /* Modelo Físico */
    
    
    CREATE TABLE public."Titular" (
        idpessoa integer NOT NULL,
        numerosus integer NOT NULL
    );

    CREATE TABLE public.atendente (
        idpessoa integer NOT NULL,
        numeroregistro character varying(10) NOT NULL,
        idposto integer
    );

    CREATE TABLE public.bairro (
        idbairro integer NOT NULL,
        nome character varying(30) NOT NULL,
        idmunicipio integer
    );

    CREATE TABLE public.depedente (
        idpessoa integer NOT NULL,
        idtitular integer
    );

    CREATE TABLE public.estado (
        idestado integer NOT NULL,
        nome character varying(30) NOT NULL
    );

    CREATE TABLE public.laboratorio (
        idlaboratorio integer NOT NULL,
        nome character varying(30) NOT NULL
    );

    CREATE TABLE public.medicamento (
        idmedicamento integer NOT NULL,
        nome character varying(80) NOT NULL,
        bula character varying(200) NOT NULL
    );

    CREATE TABLE public.medicamento_laboratorio (
        idmedicamento integer NOT NULL,
        idlaboratorio integer NOT NULL
    );

    CREATE TABLE public.medicamento_posto (
        idmedicamentoposto integer NOT NULL,
        estadomedicamento integer NOT NULL,
        quantidade integer NOT NULL,
        datavencimento timestamp without time zone NOT NULL,
        idposto integer,
        idmedicamento integer
    );

    CREATE TABLE public.municipio (
        idmunicipio integer NOT NULL,
        nome character varying(80) NOT NULL,
        idestado integer
    );


    CREATE TABLE public.pessoa (
        idpessoa integer NOT NULL,
        nome character varying(100) NOT NULL,
        datanascimento timestamp without time zone NOT NULL,
        cpf character varying(12) NOT NULL,
        sexo integer NOT NULL,
        rg character varying(10) NOT NULL
    );

    CREATE TABLE public.posto (
        idposto integer NOT NULL,
        complemento character varying(200) NOT NULL,
        nome character varying(200) NOT NULL,
        rua character varying(200) NOT NULL,
        cep integer NOT NULL,
        numero integer NOT NULL,
        coordgeolong double precision NOT NULL,
        coordgeolat double precision NOT NULL,
        idbairro integer
    );

    CREATE TABLE public.recebimento (
        idrecebimento integer NOT NULL,
        quantidademedicamentos integer NOT NULL,
        data_hora timestamp without time zone NOT NULL,
        idpessoa integer,
        idatedente integer,
        idmedicamentoposto integer
    );

    CREATE TABLE public.registro_medicamento (
        idregistromedicamento integer NOT NULL,
        quantidade integer NOT NULL,
        data_hora timestamp without time zone NOT NULL,
        idatendente integer,
        idmedicamentoposto integer
    );

    CREATE TABLE public.solicitacao (
        idsolicitacao integer NOT NULL,
        data_hora timestamp without time zone NOT NULL,
        quantidademedicamento integer NOT NULL,
        estadosolicitacao integer NOT NULL,
        idtitular integer,
        idmedicamentoposto integer
    );

    ALTER TABLE ONLY public.pessoa
        ADD CONSTRAINT "PK_103e8f7f4ebf0ca871bbe4f8a3c" PRIMARY KEY (idpessoa);


    --
    -- TOC entry 2122 (class 2606 OID 61959)
    -- Name: PK_4fdaa48a8d5b79bfc8f5959251a; Type: CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.bairro
        ADD CONSTRAINT "PK_4fdaa48a8d5b79bfc8f5959251a" PRIMARY KEY (idbairro);


    --
    -- TOC entry 2130 (class 2606 OID 61994)
    -- Name: PK_55f589d48cf08820e62c4218619; Type: CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.medicamento_posto
        ADD CONSTRAINT "PK_55f589d48cf08820e62c4218619" PRIMARY KEY (idmedicamentoposto);


    --
    -- TOC entry 2112 (class 2606 OID 61928)
    -- Name: PK_746650b7410a8cea3f66aa08e96; Type: CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.recebimento
        ADD CONSTRAINT "PK_746650b7410a8cea3f66aa08e96" PRIMARY KEY (idrecebimento);


    --
    -- TOC entry 2118 (class 2606 OID 61943)
    -- Name: PK_81df0554baeeb3c342378a627ad; Type: CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.estado
        ADD CONSTRAINT "PK_81df0554baeeb3c342378a627ad" PRIMARY KEY (idestado);


    --
    -- TOC entry 2120 (class 2606 OID 61951)
    -- Name: PK_9288f1d12a5d8150c355b5e9b16; Type: CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.municipio
        ADD CONSTRAINT "PK_9288f1d12a5d8150c355b5e9b16" PRIMARY KEY (idmunicipio);


    --
    -- TOC entry 2126 (class 2606 OID 61978)
    -- Name: PK_a02d191f1adefa1e3c2b21ef553; Type: CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.laboratorio
        ADD CONSTRAINT "PK_a02d191f1adefa1e3c2b21ef553" PRIMARY KEY (idlaboratorio);


    --
    -- TOC entry 2114 (class 2606 OID 61933)
    -- Name: PK_a5b0986f6decfe7ce7d287a8afc; Type: CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.atendente
        ADD CONSTRAINT "PK_a5b0986f6decfe7ce7d287a8afc" PRIMARY KEY (idpessoa);


    --
    -- TOC entry 2134 (class 2606 OID 62007)
    -- Name: PK_aae06f9c94ee75703a930472480; Type: CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.depedente
        ADD CONSTRAINT "PK_aae06f9c94ee75703a930472480" PRIMARY KEY (idpessoa);


    --
    -- TOC entry 2136 (class 2606 OID 62012)
    -- Name: PK_b641f90e20dbdd9a429a5af575d; Type: CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public."Titular"
        ADD CONSTRAINT "PK_b641f90e20dbdd9a429a5af575d" PRIMARY KEY (idpessoa);


    --
    -- TOC entry 2128 (class 2606 OID 61986)
    -- Name: PK_c9eba17e6634c1e256d21d9ff33; Type: CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.medicamento
        ADD CONSTRAINT "PK_c9eba17e6634c1e256d21d9ff33" PRIMARY KEY (idmedicamento);


    --
    -- TOC entry 2110 (class 2606 OID 61920)
    -- Name: PK_caa0afb5240252ec27258f685d5; Type: CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.registro_medicamento
        ADD CONSTRAINT "PK_caa0afb5240252ec27258f685d5" PRIMARY KEY (idregistromedicamento);


    --
    -- TOC entry 2124 (class 2606 OID 61970)
    -- Name: PK_cc32119736b40c091e8bb97c554; Type: CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.posto
        ADD CONSTRAINT "PK_cc32119736b40c091e8bb97c554" PRIMARY KEY (idposto);


    --
    -- TOC entry 2144 (class 2606 OID 62029)
    -- Name: PK_df376ac8b15a58f4693f765dbc7; Type: CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.medicamento_laboratorio
        ADD CONSTRAINT "PK_df376ac8b15a58f4693f765dbc7" PRIMARY KEY (idmedicamento, idlaboratorio);


    --
    -- TOC entry 2132 (class 2606 OID 62002)
    -- Name: PK_ffd64b9cb2dfb73cf046c16907a; Type: CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.solicitacao
        ADD CONSTRAINT "PK_ffd64b9cb2dfb73cf046c16907a" PRIMARY KEY (idsolicitacao);


    --
    -- TOC entry 2140 (class 2606 OID 62024)
    -- Name: UQ_70e82a4695f07a6ce61fc9492b6; Type: CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.pessoa
        ADD CONSTRAINT "UQ_70e82a4695f07a6ce61fc9492b6" UNIQUE (rg);


    --
    -- TOC entry 2116 (class 2606 OID 61935)
    -- Name: UQ_a134eaf7339d2c607039333f008; Type: CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.atendente
        ADD CONSTRAINT "UQ_a134eaf7339d2c607039333f008" UNIQUE (numeroregistro);


    --
    -- TOC entry 2142 (class 2606 OID 62022)
    -- Name: UQ_ee80cc840596cc1bca8a149bcd5; Type: CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.pessoa
        ADD CONSTRAINT "UQ_ee80cc840596cc1bca8a149bcd5" UNIQUE (cpf);


    --
    -- TOC entry 2152 (class 2606 OID 62065)
    -- Name: FK_00033fc05927f355f13fe4aabe6; Type: FK CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.municipio
        ADD CONSTRAINT "FK_00033fc05927f355f13fe4aabe6" FOREIGN KEY (idestado) REFERENCES public.estado(idestado);


    --
    -- TOC entry 2155 (class 2606 OID 62080)
    -- Name: FK_34211f805b13249a304d0490fb3; Type: FK CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.medicamento_posto
        ADD CONSTRAINT "FK_34211f805b13249a304d0490fb3" FOREIGN KEY (idposto) REFERENCES public.posto(idposto);


    --
    -- TOC entry 2159 (class 2606 OID 62100)
    -- Name: FK_444445956119983f6d824840cd5; Type: FK CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.depedente
        ADD CONSTRAINT "FK_444445956119983f6d824840cd5" FOREIGN KEY (idtitular) REFERENCES public."Titular"(idpessoa);


    --
    -- TOC entry 2149 (class 2606 OID 62050)
    -- Name: FK_475829d5c50c3859ce7ccb37646; Type: FK CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.recebimento
        ADD CONSTRAINT "FK_475829d5c50c3859ce7ccb37646" FOREIGN KEY (idmedicamentoposto) REFERENCES public.medicamento_posto(idmedicamentoposto);


    --
    -- TOC entry 2150 (class 2606 OID 62055)
    -- Name: FK_590cc4410853d91b70266bdfde0; Type: FK CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.atendente
        ADD CONSTRAINT "FK_590cc4410853d91b70266bdfde0" FOREIGN KEY (idposto) REFERENCES public.posto(idposto);


    --
    -- TOC entry 2162 (class 2606 OID 62115)
    -- Name: FK_59f71b7b9ec062ef9be80f527f0; Type: FK CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.medicamento_laboratorio
        ADD CONSTRAINT "FK_59f71b7b9ec062ef9be80f527f0" FOREIGN KEY (idmedicamento) REFERENCES public.medicamento(idmedicamento) ON DELETE CASCADE;


    --
    -- TOC entry 2153 (class 2606 OID 62070)
    -- Name: FK_6ac866ccb173b3b7698a49541ff; Type: FK CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.bairro
        ADD CONSTRAINT "FK_6ac866ccb173b3b7698a49541ff" FOREIGN KEY (idmunicipio) REFERENCES public.municipio(idmunicipio);


    --
    -- TOC entry 2148 (class 2606 OID 62045)
    -- Name: FK_816a839606b454616adab6960fd; Type: FK CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.recebimento
        ADD CONSTRAINT "FK_816a839606b454616adab6960fd" FOREIGN KEY (idatedente) REFERENCES public.atendente(idpessoa);


    --
    -- TOC entry 2151 (class 2606 OID 62060)
    -- Name: FK_a5b0986f6decfe7ce7d287a8afc; Type: FK CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.atendente
        ADD CONSTRAINT "FK_a5b0986f6decfe7ce7d287a8afc" FOREIGN KEY (idpessoa) REFERENCES public.pessoa(idpessoa);


    --
    -- TOC entry 2160 (class 2606 OID 62105)
    -- Name: FK_aae06f9c94ee75703a930472480; Type: FK CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.depedente
        ADD CONSTRAINT "FK_aae06f9c94ee75703a930472480" FOREIGN KEY (idpessoa) REFERENCES public.pessoa(idpessoa);


    --
    -- TOC entry 2161 (class 2606 OID 62110)
    -- Name: FK_b641f90e20dbdd9a429a5af575d; Type: FK CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public."Titular"
        ADD CONSTRAINT "FK_b641f90e20dbdd9a429a5af575d" FOREIGN KEY (idpessoa) REFERENCES public.pessoa(idpessoa);


    --
    -- TOC entry 2154 (class 2606 OID 62075)
    -- Name: FK_c52dd314fd94874d9d261059c2e; Type: FK CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.posto
        ADD CONSTRAINT "FK_c52dd314fd94874d9d261059c2e" FOREIGN KEY (idbairro) REFERENCES public.bairro(idbairro);


    --
    -- TOC entry 2146 (class 2606 OID 62035)
    -- Name: FK_c6c78ca2cfd73ad0dbdafcc5005; Type: FK CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.registro_medicamento
        ADD CONSTRAINT "FK_c6c78ca2cfd73ad0dbdafcc5005" FOREIGN KEY (idmedicamentoposto) REFERENCES public.medicamento_posto(idmedicamentoposto);


    --
    -- TOC entry 2158 (class 2606 OID 62095)
    -- Name: FK_d38b3913472dde9e8bdd6c7f15f; Type: FK CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.solicitacao
        ADD CONSTRAINT "FK_d38b3913472dde9e8bdd6c7f15f" FOREIGN KEY (idmedicamentoposto) REFERENCES public.medicamento_posto(idmedicamentoposto);


    --
    -- TOC entry 2163 (class 2606 OID 62120)
    -- Name: FK_d8109f3516752ce13ee32b692ce; Type: FK CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.medicamento_laboratorio
        ADD CONSTRAINT "FK_d8109f3516752ce13ee32b692ce" FOREIGN KEY (idlaboratorio) REFERENCES public.laboratorio(idlaboratorio) ON DELETE CASCADE;


    --
    -- TOC entry 2147 (class 2606 OID 62040)
    -- Name: FK_ddf1939ef15cc85d043eecb2d88; Type: FK CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.recebimento
        ADD CONSTRAINT "FK_ddf1939ef15cc85d043eecb2d88" FOREIGN KEY (idpessoa) REFERENCES public.pessoa(idpessoa);


    --
    -- TOC entry 2156 (class 2606 OID 62085)
    -- Name: FK_e12054ea5e6bedd76415f02b4bb; Type: FK CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.medicamento_posto
        ADD CONSTRAINT "FK_e12054ea5e6bedd76415f02b4bb" FOREIGN KEY (idmedicamento) REFERENCES public.medicamento(idmedicamento);


    --
    -- TOC entry 2145 (class 2606 OID 62030)
    -- Name: FK_e7076e84095a8abb5cff10db3b0; Type: FK CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.registro_medicamento
        ADD CONSTRAINT "FK_e7076e84095a8abb5cff10db3b0" FOREIGN KEY (idatendente) REFERENCES public.atendente(idpessoa);


    --
    -- TOC entry 2157 (class 2606 OID 62090)
    -- Name: FK_f61371e9c058a6d9c9ab83d99fa; Type: FK CONSTRAINT; Schema: public; Owner: postgres
    --

    ALTER TABLE ONLY public.solicitacao
        ADD CONSTRAINT "FK_f61371e9c058a6d9c9ab83d99fa" FOREIGN KEY (idtitular) REFERENCES public."Titular"(idpessoa);


    --
    -- TOC entry 2312 (class 0 OID 0)
    -- Dependencies: 6
    -- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
    --

    REVOKE ALL ON SCHEMA public FROM PUBLIC;
    REVOKE ALL ON SCHEMA public FROM postgres;
    GRANT ALL ON SCHEMA public TO postgres;
    GRANT ALL ON SCHEMA public TO PUBLIC;


    -- Completed on 2018-10-11 09:28:17 BRT

    --
    -- PostgreSQL database dump complete
    --
```




### 8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>
#### 8.1 DETALHAMENTO DAS INFORMAÇÕES

[Nomes de laboratórios](https://guiadafarmacia.com.br/industrias/)<br>
[Nomes comuns de pessoas](https://github.com/emersonsoares/SampleDataGenerator/blob/master/SampleDataGenerator/Resources/nomes.txt)<br>
[Sobrenomes comuns](https://pt.wiktionary.org/wiki/Ap%C3%AAndice:Sobrenomes_em_portugu%C3%AAs)<br>
[Nomes de Composições quimicas / remedios](http://www.subpav.org/aaz/)<br>
[Nomes de bairros](https://pt.wikipedia.org/wiki/Lista_de_bairros_de_Fund%C3%A3o_(Esp%C3%ADrito_Santo))<br>

     
        
#### 8.2 INCLUSÃO DO SCRIPT PARA CRIAÇÃO DE TABELAS E INSERÇÃO DOS DADOS (ARQUIVO ÚNICO COM):
        
[Biblioteca do gerador](https://github.com/lukasg18/Topicos-Trabalho-BD2/blob/master/GeradorDeDados/Luiz_code/gerador.py)<br>
[Gerador de inserção dados](https://github.com/lukasg18/Topicos-Trabalho-BD2/blob/master/GeradorDeDados/Luiz_code/geradorExecutar.py)

     
* 1 - Abrir o arquivo geradorExecutar.py
* 2 - Para executar o programa, abra o terminal e digite:
```shell
    python3 geradorExecutar.py
```
        

### 9	TABELAS E PRINCIPAIS CONSULTAS<br>
#### 9.1	GERACAO DE DADOS (MÍNIMO DE 10 REGISTROS PARA CADA TABELA NO BANCO DE DADOS)<br>
    Foram registrados mais de 10 registros em cada tabela com exceção nas tabelas:
        * Estado, pois está sendo levado em consideração somente o ES;
        * Municipio, onde também está sendo levado em consideração somente Fundão no escopo do projeto;

## Data de Entrega: (06/09/2018)

<br>
OBS: Incluir para os tópicos 9.2 e 9.3 as instruções SQL + imagens (print da tela) mostrando os resultados.<br>

#### 9.2	SELECT DAS TABELAS COM PRIMEIROS 10 REGISTROS INSERIDOS <br>
[Selects de todas as tabelas](https://raw.githubusercontent.com/lukasg18/Topicos-Trabalho-BD2/master/Queries/selects_10_primeiros_registros.sql)

```sql 
    SELECT * FROM atendente limit 10;
```    
![Alt text](https://github.com/lukasg18/Topicos-Trabalho-BD2/blob/master/Imagens/Tabelas%20e%20Principais%20Consultas/Selects%2010%20primeiros%20registros/atendente.png)

```sql
    SELECT * FROM bairro limit 10;
```
![Alt text](https://github.com/lukasg18/Topicos-Trabalho-BD2/blob/master/Imagens/Tabelas%20e%20Principais%20Consultas/Selects%2010%20primeiros%20registros/bairro.png)

```sql
    SELECT * FROM dependente limit 10;
```
![Alt text](https://github.com/lukasg18/Topicos-Trabalho-BD2/blob/master/Imagens/Tabelas%20e%20Principais%20Consultas/Selects%2010%20primeiros%20registros/depedente.png)

```sql
    SELECT * FROM estado limit 10;
```
![Alt text](https://github.com/lukasg18/Topicos-Trabalho-BD2/blob/master/Imagens/Tabelas%20e%20Principais%20Consultas/Selects%2010%20primeiros%20registros/estado.png)

```sql
    SELECT * FROM laboratorio limit 10;
```
![Alt text](https://github.com/lukasg18/Topicos-Trabalho-BD2/blob/master/Imagens/Tabelas%20e%20Principais%20Consultas/Selects%2010%20primeiros%20registros/laboratorio.png)

```sql
    SELECT * FROM medicamento limit 10;
```
![Alt text](https://github.com/lukasg18/Topicos-Trabalho-BD2/blob/master/Imagens/Tabelas%20e%20Principais%20Consultas/Selects%2010%20primeiros%20registros/medicamento.png)

```sql
    SELECT * FROM medicamento_laboratorio limit 10;
```
![Alt text](https://github.com/lukasg18/Topicos-Trabalho-BD2/blob/master/Imagens/Tabelas%20e%20Principais%20Consultas/Selects%2010%20primeiros%20registros/medicamento_laboratorio.png)

```sql
    SELECT * FROM medicamento_posto limit 10;
```
![Alt text](https://github.com/lukasg18/Topicos-Trabalho-BD2/blob/master/Imagens/Tabelas%20e%20Principais%20Consultas/Selects%2010%20primeiros%20registros/medicamento_posto.png)

```sql
    SELECT * FROM municipio limit 10;
```
![Alt text](https://github.com/lukasg18/Topicos-Trabalho-BD2/blob/master/Imagens/Tabelas%20e%20Principais%20Consultas/Selects%2010%20primeiros%20registros/municipio.png)

```sql
    SELECT * FROM pessoa limit 10;
```
![Alt text](https://github.com/lukasg18/Topicos-Trabalho-BD2/blob/master/Imagens/Tabelas%20e%20Principais%20Consultas/Selects%2010%20primeiros%20registros/pessoa.png)

```sql
    SELECT * FROM posto limit 10;
```
![Alt text](https://github.com/lukasg18/Topicos-Trabalho-BD2/blob/master/Imagens/Tabelas%20e%20Principais%20Consultas/Selects%2010%20primeiros%20registros/posto.png)

```sql
    SELECT * FROM recebimento limit 10;
```
![Alt text](https://github.com/lukasg18/Topicos-Trabalho-BD2/blob/master/Imagens/Tabelas%20e%20Principais%20Consultas/Selects%2010%20primeiros%20registros/recebimento.png)

```sql
    SELECT * FROM registro_medicamento limit 10;
```
![Alt text](https://github.com/lukasg18/Topicos-Trabalho-BD2/blob/master/Imagens/Tabelas%20e%20Principais%20Consultas/Selects%2010%20primeiros%20registros/registro_medicamento.png)

```sql
    SELECT * FROM solicitacao limit 10;
```
![Alt text](https://github.com/lukasg18/Topicos-Trabalho-BD2/blob/master/Imagens/Tabelas%20e%20Principais%20Consultas/Selects%2010%20primeiros%20registros/solicitacao.png)

```sql
    SELECT * FROM titular limit 10;
```
![Alt text](https://github.com/lukasg18/Topicos-Trabalho-BD2/blob/master/Imagens/Tabelas%20e%20Principais%20Consultas/Selects%2010%20primeiros%20registros/titular.png)

#### 9.3	SELECT DAS VISÕES COM PRIMEIROS 10 REGISTROS DA VIEW <br>
        a) Descrição da view sobre que grupos de usuários (operacional/estratégico) <br>
        e necessidade ela contempla.
        b) Descrição das permissões de acesso e usuários correlacionados (após definição <br>
        destas características)
        c) as funcionalidades informadas no minimundo ou nos mockups(protótipos), que representarem 
        views do sistema (relatórios, informações disponíveis para os usuários, etc) devem estar 
        presentes aqui. 
<br>

[Criação das views](https://raw.githubusercontent.com/lukasg18/Topicos-Trabalho-BD2/master/Queries/Principais_Views.sql) <br>
[Selects de todas as views](https://raw.githubusercontent.com/lukasg18/Topicos-Trabalho-BD2/master/Queries/Selects%20das%20Principais%20views.sql)

```sql
    SELECT * FROM view_cadastro_medicamentos LIMIT 10;
```
![Alt text](https://github.com/lukasg18/Topicos-Trabalho-BD2/blob/master/Imagens/Tabelas%20e%20Principais%20Consultas/Principais%20Views/View%20Atendente%20Cadastro%20Medicamentos.png)

    - Público alvo: Voltado os usuários atendentes dos postos para o CRUD geral de medicamentos no sistema, onde todos os
    atendentes do determinado posto terão permissões de consultas, inserções, deleções e edição dos medicamentos
    - View relacionadas: Página de cadastro de medicamentos retirada do protótipo do sistema.

![Alt text](https://github.com/lukasg18/Topicos-Trabalho-BD2/blob/master/Imagens/Prot%C3%B3tipos/view%20cadastrar%20medicamentos.png)


```sql
    SELECT * FROM view_cadastro_pacientes LIMIT 10;
```
![Alt text](https://github.com/lukasg18/Topicos-Trabalho-BD2/blob/master/Imagens/Tabelas%20e%20Principais%20Consultas/Principais%20Views/View%20Atendente%20Cadastro%20Pacientes.png)

    - Público alvo: Voltado aos usuários atendentes dos postos para o CRUD geral de pacientes no sistema, onde todos os
    atendentes do determinado posto terão permissões de consultas, inserções, deleções e edição dos pacientes. Lembrando
    que os pacientes é o mesmo que a população em geral que solicitam medicamentos através do sistema.
    - View relacionadas: Página de cadastro de pacientes retirada do protótipo do sistema.

![Alt text](https://github.com/lukasg18/Topicos-Trabalho-BD2/blob/master/Imagens/Prot%C3%B3tipos/view%20cadastrar%20pacientes.png)


```sql
    SELECT * FROM view_retirar_medicamentos_solicitados LIMIT 10;
```
![Alt text](https://github.com/lukasg18/Topicos-Trabalho-BD2/blob/master/Imagens/Tabelas%20e%20Principais%20Consultas/Principais%20Views/View%20Atendente%20retirar%20medicamentos%20solicitados.png)

    - Público alvo: Voltado aos usuários atendentes dos postos retirada dos medicamentos solicitados realizado pelos
    pacientes/população, onde os atendentes tem as permissões de excluir, consultar e editar somente um campo de estado
    da solicitação feita pelo paciente, onde assumirá o estado de expirado ou atendido.
    - View relacionadas: Página de retirar medicamentos solicitados do protótipo do sistema.

![Alt text](https://github.com/lukasg18/Topicos-Trabalho-BD2/blob/master/Imagens/Prot%C3%B3tipos/view%20retirar%20medicamentos%20solicitados.png)

    OBS.: Note que na tabela do banco a coluna estado da solicitação possui valores de 1 a 3, onde estes são redenrizados 
    na data table do front em comunicado, atendido e experido.


```sql
    SELECT * FROM view_medicamentos_mais_retirados_por_quantidade LIMIT 10;
```
![Alt text](https://github.com/lukasg18/Topicos-Trabalho-BD2/blob/master/Imagens/Tabelas%20e%20Principais%20Consultas/Principais%20Views/View%20Atendente%20Medicamentos%20mais%20retirados.png)
    
    - Público alvo: Voltado aos usuários atendentes dos postos para geração de relatórios de medicamentos mais retirados
    por quantidade, ou seja, pela quantidade unidades retiradas em cada retirada dos medicamentos nos postos.
    - View relacionadas: Página de gerar relatórios do protótipo do sistema.

![Alt text](https://github.com/lukasg18/Topicos-Trabalho-BD2/blob/master/Imagens/Prot%C3%B3tipos/view%20gerar%20relat%C3%B3rios.png)


```sql
    SELECT * FROM view_medicamentos_mais_retirados_por_numero_retiradas LIMIT 10;
```
![Alt text](https://github.com/lukasg18/Topicos-Trabalho-BD2/blob/master/Imagens/Tabelas%20e%20Principais%20Consultas/Principais%20Views/View%20Atendente%20Medicamentos%20mais%20retirados%20por%20n%C3%BAmero%20de%20retiradas.png)
    
    - Público alvo: Voltado aos usuários atendentes dos postos para geração de relatórios de medicamentos mais retirados
    por número de retiradas feitas pelos pacientes, ou seja, pela quantidade de retiradas e não pelo quantidade de
    medicamentos em cada retirada.
    - View relacionadas: Página de gerar relatórios do protótipo do sistema.

![Alt text](https://github.com/lukasg18/Topicos-Trabalho-BD2/blob/master/Imagens/Prot%C3%B3tipos/view%20gerar%20relat%C3%B3rios.png)


```sql
    SELECT * FROM view_medicamentos_mais_solicitados_por_quantidade LIMIT 10;
```
![Alt text](https://github.com/lukasg18/Topicos-Trabalho-BD2/blob/master/Imagens/Tabelas%20e%20Principais%20Consultas/Principais%20Views/View%20Atendente%20Medicamentos%20mais%20solicitados%20por%20quantidade.png)

    - Público alvo: Voltado aos usuários atendentes dos postos para geração de relatórios de medicamentos mais solicitados
    por quantidade, ou seja, pela quantidade unidades solicitadas em cada solicitação dos medicamentos nos postos.
    - View relacionadas: Página de gerar relatórios do protótipo do sistema.

![Alt text](https://github.com/lukasg18/Topicos-Trabalho-BD2/blob/master/Imagens/Prot%C3%B3tipos/view%20gerar%20relat%C3%B3rios.png)


```sql
    SELECT * FROM view_medicamentos_mais_solicitados_por_numero_solicitacoes LIMIT 10;
```
![Alt text](https://github.com/lukasg18/Topicos-Trabalho-BD2/blob/master/Imagens/Tabelas%20e%20Principais%20Consultas/Principais%20Views/View%20Atendente%20Medicamentos%20mais%20retirados%20por%20n%C3%BAmero%20de%20retiradas.png)

    - Público alvo: Voltado aos usuários atendentes dos postos para geração de relatórios de medicamentos mais solicitados
    por número de solicitações feitas pelos pacientes, ou seja, pela quantidade de solicitações e não pelo quantidade de
    medicamentos em cada solicitação.
    - View relacionadas: Página de gerar relatórios do protótipo do sistema.

![Alt text](https://github.com/lukasg18/Topicos-Trabalho-BD2/blob/master/Imagens/Prot%C3%B3tipos/view%20gerar%20relat%C3%B3rios.png)


```sql
    SELECT * FROM view_medicamentos_para_solicitacao LIMIT 10;
```
![Alt text](https://github.com/lukasg18/Topicos-Trabalho-BD2/blob/master/Imagens/Tabelas%20e%20Principais%20Consultas/Principais%20Views/View%20Popula%C3%A7%C3%A3o%20medicamento%20para%20solicita%C3%A7%C3%A3o%20nos%20postos.png) 
    
    - Público alvo: Voltado para a população/pacientes que desejam solicitar medicamentos nos postos. Assim é possível
    de verificar e solicitar medicamentos, caso estejam disponível, e retirá-los nos postos.
    - View relacionadas: Página de solicitações de medicamentos do protótipo do sistema.

![Alt text](https://github.com/lukasg18/Topicos-Trabalho-BD2/blob/master/Imagens/Prot%C3%B3tipos/view%20retirar%20medicamentos%20solicitados.png)

    OBS.: Note que não tem a coluna posto na view, pois não há necessidade, dado que a tabela que aparece dos medicamentos
    é no próprio posto, pois o paciente escolhe o posto através do mapa. Outro ponto é que a disponibilidade é 1 para
    indisponível e 2 para disponível na tabela do banco. Já na view isso é redenrizado em run-time na data table.



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

```sql
    create index index_idtitular on solicitacao (idtitular)    
    create index index_idmedicamentoposto on solicitacao (idmedicamentoposto)
    create index index_pessoa on titular (idpessoa)
    create index index_idmedicamento on medicamento_posto (idmedicamento)
```

## Performances
### Query de teste base

```sql
    SELECT p.nome AS Titular, po.nome AS "Nome do posto", me.nome AS Medicamento, s.quantidademedicamento "Quantidade de Medicamentos" FROM pessoa AS p
    INNER JOIN titular AS t ON (p.idpessoa = t.idpessoa)
    INNER JOIN solicitacao AS s ON (s.idtitular = t.idpessoa)
    INNER JOIN medicamento_posto AS mp ON (mp.idmedicamentoposto = s.idmedicamentoposto)
    INNER JOIN posto AS po ON (po.idposto = mp.idposto)
    INNER JOIN medicamento AS me ON (me.idmedicamento = mp.idmedicamento)
    ORDER BY p.nome, po.nome 
```
### Query com indices

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



