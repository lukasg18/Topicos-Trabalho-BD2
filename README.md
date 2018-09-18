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

    CREATE TABLE Medicamento (
        nome VARCHAR(80),
        idMedicamento SERIAL PRIMARY KEY,
        bula VARCHAR(200),
        FK_EstadoMedicamento_idEstadoMedicamento SERIAL,
        FK_Solicitacao_idSolicitacao SERIAL
    );

    CREATE TABLE EstadoMedicamento (
        tipo VARCHAR(30),
        idEstadoMedicamento SERIAL PRIMARY KEY
    );

    CREATE TABLE Solicitacao (
        data_hora DATE,
        idSolicitacao SERIAL PRIMARY KEY,
        FK_EstadoSolicitacao_idEstadoSolicitacao SERIAL,
        FK_Titular_FK_Pessoa_idPessoa SERIAL
    );

    CREATE TABLE EstadoSolicitacao (
        tipo VARCHAR(30),
        idEstadoSolicitacao SERIAL PRIMARY KEY
    );

    CREATE TABLE Titular (
        numeroSUS INTEGER,
        rg INTEGER,
        FK_Pessoa_idPessoa SERIAL PRIMARY KEY
    );

    CREATE TABLE Sexo (
        tipo VARCHAR(10),
        id_sexo SERIAL PRIMARY KEY
    );

    CREATE TABLE Pessoa (
        idPessoa SERIAL PRIMARY KEY,
        nome VARCHAR(100),
        dataNascimento DATE,
        cpf VARCHAR(12),
        FK_Sexo_id_sexo SERIAL,
        FK_Titular_FK_Pessoa_idPessoa SERIAL
    );

    CREATE TABLE Posto (
        idPosto SERIAL PRIMARY KEY,
        complemento VARCHAR(200),
        cep INTEGER,
        numero INTEGER,
        coordGeoLong VARCHAR(20),
        coordGeoLat VARCHAR(20),
        FK_Bairro_idBairro SERIAL
    );

    CREATE TABLE Bairro (
        idBairro SERIAL PRIMARY KEY,
        nome VARCHAR(30),
        FK_Municipio_idMunicipio SERIAL
    );

    CREATE TABLE Estado (
        idEstado SERIAL PRIMARY KEY,
        nome VARCHAR(30)
    );

    CREATE TABLE Municipio (
        idMunicipio SERIAL PRIMARY KEY,
        nome VARCHAR(80),
        FK_Estado_idEstado SERIAL
    );

    CREATE TABLE Controle (
        quantidade INTEGER,
        codigoBarras INTEGER,
        idControle SERIAL PRIMARY KEY,
        data_hora TIMESTAMP,
        FK_Medicamento_Posto_localizado_idMedicamentoPosto SERIAL,
        FK_TipoControle_idTipoControle SERIAL,
        FK_Atendente_FK_Pessoa_idPessoa SERIAL
    );

    CREATE TABLE Lote (
        idLote SERIAL PRIMARY KEY,
        quantidade INTEGER,
        dataVencimento DATE,
        numero INTEGER,
        FK_Medicamento_Posto_localizado_idMedicamentoPosto SERIAL
    );

    CREATE TABLE Medicamento_Posto_localizado (
        idMedicamentoPosto SERIAL PRIMARY KEY,
        FK_Medicamento_idMedicamento SERIAL,
        FK_Posto_idPosto SERIAL
    );

    CREATE TABLE TipoControle (
        idTipoControle SERIAL PRIMARY KEY,
        nome VARCHAR(10)
    );

    CREATE TABLE Atendente (
        numeroRegistro INTEGER,
        rg INTEGER,
        FK_Pessoa_idPessoa SERIAL PRIMARY KEY,
        FK_Posto_idPosto SERIAL
    );

    CREATE TABLE Recebimento (
        quantidadeMedicamentos INTEGER,
        idRecebimento SERIAL PRIMARY KEY,
        data_hora TIMESTAMP
    );

    CREATE TABLE Recebimento_Medicamento_tem (
        FK_Medicamento_idMedicamento SERIAL,
        FK_Recebimento_idRecebimento SERIAL
    );

    CREATE TABLE Medicamento_Categoria_possui (
        FK_Categoria_idCategoria SERIAL,
        FK_Medicamento_idMedicamento SERIAL
    );

    CREATE TABLE Medicamento_Laboratorio_esta em (
        FK_Laboratorio_idLaboratorio SERIAL,
        FK_Medicamento_idMedicamento SERIAL
    );

    CREATE TABLE Categoria (
        tipo VARCHAR(20),
        idCategoria SERIAL PRIMARY KEY
    );

    CREATE TABLE Laboratorio (
        nome VARCHAR(30),
        idLaboratorio SERIAL PRIMARY KEY
    );

    CREATE TABLE retira_Recebimento_Pessoa_Titular (
        FK_Recebimento_idRecebimento SERIAL,
        FK_Pessoa_idPessoa SERIAL,
        FK_Titular_FK_Pessoa_idPessoa SERIAL
    );

    CREATE TABLE efetua (
        FK_Atendente_FK_Pessoa_idPessoa SERIAL
    );

    ALTER TABLE Medicamento ADD CONSTRAINT FK_Medicamento_1
        FOREIGN KEY (FK_EstadoMedicamento_idEstadoMedicamento)
        REFERENCES EstadoMedicamento (idEstadoMedicamento)
        ON DELETE CASCADE ON UPDATE CASCADE;

    ALTER TABLE Medicamento ADD CONSTRAINT FK_Medicamento_2
        FOREIGN KEY (FK_Solicitacao_idSolicitacao)
        REFERENCES Solicitacao (idSolicitacao)
        ON DELETE RESTRICT ON UPDATE RESTRICT;

    ALTER TABLE Solicitacao ADD CONSTRAINT FK_Solicitacao_1
        FOREIGN KEY (FK_EstadoSolicitacao_idEstadoSolicitacao)
        REFERENCES EstadoSolicitacao (idEstadoSolicitacao)
        ON DELETE CASCADE ON UPDATE CASCADE;

    ALTER TABLE Solicitacao ADD CONSTRAINT FK_Solicitacao_2
        FOREIGN KEY (FK_Titular_FK_Pessoa_idPessoa)
        REFERENCES Titular (FK_Pessoa_idPessoa)
        ON DELETE CASCADE ON UPDATE CASCADE;

    ALTER TABLE Titular ADD CONSTRAINT FK_Titular_1
        FOREIGN KEY (FK_Pessoa_idPessoa)
        REFERENCES Pessoa (idPessoa)
        ON DELETE CASCADE ON UPDATE CASCADE;

    ALTER TABLE Pessoa ADD CONSTRAINT FK_Pessoa_1
        FOREIGN KEY (FK_Sexo_id_sexo)
        REFERENCES Sexo (id_sexo)
        ON DELETE RESTRICT ON UPDATE RESTRICT;

    ALTER TABLE Pessoa ADD CONSTRAINT FK_Pessoa_2
        FOREIGN KEY (FK_Titular_FK_Pessoa_idPessoa)
        REFERENCES Titular (FK_Pessoa_idPessoa)
        ON DELETE SET NULL ON UPDATE CASCADE;

    ALTER TABLE Posto ADD CONSTRAINT FK_Posto_1
        FOREIGN KEY (FK_Bairro_idBairro)
        REFERENCES Bairro (idBairro)
        ON DELETE CASCADE ON UPDATE CASCADE;

    ALTER TABLE Bairro ADD CONSTRAINT FK_Bairro_1
        FOREIGN KEY (FK_Municipio_idMunicipio)
        REFERENCES Municipio (idMunicipio)
        ON DELETE RESTRICT ON UPDATE RESTRICT;

    ALTER TABLE Municipio ADD CONSTRAINT FK_Municipio_1
        FOREIGN KEY (FK_Estado_idEstado)
        REFERENCES Estado (idEstado)
        ON DELETE RESTRICT ON UPDATE RESTRICT;

    ALTER TABLE Controle ADD CONSTRAINT FK_Controle_1
        FOREIGN KEY (FK_Medicamento_Posto_localizado_idMedicamentoPosto)
        REFERENCES Medicamento_Posto_localizado (idMedicamentoPosto)
        ON DELETE RESTRICT ON UPDATE RESTRICT;

    ALTER TABLE Controle ADD CONSTRAINT FK_Controle_2
        FOREIGN KEY (FK_TipoControle_idTipoControle)
        REFERENCES TipoControle (idTipoControle)
        ON DELETE CASCADE ON UPDATE CASCADE;

    ALTER TABLE Controle ADD CONSTRAINT FK_Controle_3
        FOREIGN KEY (FK_Atendente_FK_Pessoa_idPessoa)
        REFERENCES Atendente (FK_Pessoa_idPessoa)
        ON DELETE CASCADE ON UPDATE CASCADE;

    ALTER TABLE Lote ADD CONSTRAINT FK_Lote_1
        FOREIGN KEY (FK_Medicamento_Posto_localizado_idMedicamentoPosto)
        REFERENCES Medicamento_Posto_localizado (idMedicamentoPosto)
        ON DELETE RESTRICT ON UPDATE RESTRICT;

    ALTER TABLE Medicamento_Posto_localizado ADD CONSTRAINT FK_Medicamento_Posto_localizado_1
        FOREIGN KEY (FK_Medicamento_idMedicamento)
        REFERENCES Medicamento (idMedicamento);

    ALTER TABLE Medicamento_Posto_localizado ADD CONSTRAINT FK_Medicamento_Posto_localizado_2
        FOREIGN KEY (FK_Posto_idPosto)
        REFERENCES Posto (idPosto);

    ALTER TABLE Atendente ADD CONSTRAINT FK_Atendente_1
        FOREIGN KEY (FK_Pessoa_idPessoa)
        REFERENCES Pessoa (idPessoa)
        ON DELETE CASCADE ON UPDATE CASCADE;

    ALTER TABLE Atendente ADD CONSTRAINT FK_Atendente_2
        FOREIGN KEY (FK_Posto_idPosto)
        REFERENCES Posto (idPosto)
        ON DELETE RESTRICT ON UPDATE RESTRICT;

    ALTER TABLE Recebimento_Medicamento_tem ADD CONSTRAINT FK_Recebimento_Medicamento_tem_0
        FOREIGN KEY (FK_Medicamento_idMedicamento)
        REFERENCES Medicamento (idMedicamento);

    ALTER TABLE Recebimento_Medicamento_tem ADD CONSTRAINT FK_Recebimento_Medicamento_tem_1
        FOREIGN KEY (FK_Recebimento_idRecebimento)
        REFERENCES Recebimento (idRecebimento);

    ALTER TABLE Medicamento_Categoria_possui ADD CONSTRAINT FK_Medicamento_Categoria_possui_0
        FOREIGN KEY (FK_Categoria_idCategoria)
        REFERENCES Categoria (idCategoria);

    ALTER TABLE Medicamento_Categoria_possui ADD CONSTRAINT FK_Medicamento_Categoria_possui_1
        FOREIGN KEY (FK_Medicamento_idMedicamento)
        REFERENCES Medicamento (idMedicamento);

    ALTER TABLE Medicamento_Laboratorio_esta em ADD CONSTRAINT FK_Medicamento_Laboratorio_esta em_0
        FOREIGN KEY (FK_Laboratorio_idLaboratorio)
        REFERENCES Laboratorio (idLaboratorio);

    ALTER TABLE Medicamento_Laboratorio_esta em ADD CONSTRAINT FK_Medicamento_Laboratorio_esta em_1
        FOREIGN KEY (FK_Medicamento_idMedicamento)
        REFERENCES Medicamento (idMedicamento);

    ALTER TABLE retira_Recebimento_Pessoa_Titular ADD CONSTRAINT FK_retira_Recebimento_Pessoa_Titular_0
        FOREIGN KEY (FK_Recebimento_idRecebimento)
        REFERENCES Recebimento (idRecebimento)
        ON DELETE NO ACTION ON UPDATE NO ACTION;

    ALTER TABLE retira_Recebimento_Pessoa_Titular ADD CONSTRAINT FK_retira_Recebimento_Pessoa_Titular_1
        FOREIGN KEY (FK_Pessoa_idPessoa)
        REFERENCES Pessoa (idPessoa)
        ON DELETE NO ACTION ON UPDATE NO ACTION;

    ALTER TABLE retira_Recebimento_Pessoa_Titular ADD CONSTRAINT FK_retira_Recebimento_Pessoa_Titular_2
        FOREIGN KEY (FK_Titular_FK_Pessoa_idPessoa)
        REFERENCES Titular (FK_Pessoa_idPessoa)
        ON DELETE RESTRICT ON UPDATE RESTRICT;

    ALTER TABLE efetua ADD CONSTRAINT FK_efetua_0
        FOREIGN KEY (FK_Atendente_FK_Pessoa_idPessoa)
        REFERENCES Atendente (FK_Pessoa_idPessoa)
        ON DELETE RESTRICT ON UPDATE RESTRICT;

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



