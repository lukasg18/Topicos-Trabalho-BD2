/* Modelo Físico: */

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

CREATE TABLE Medicamento_Laboratorio_esta_em (
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
 
ALTER TABLE Medicamento_Laboratorio_esta_em ADD CONSTRAINT FK_Medicamento_Laboratorio_esta_em_0
    FOREIGN KEY (FK_Laboratorio_idLaboratorio)
    REFERENCES Laboratorio (idLaboratorio);
 
ALTER TABLE Medicamento_Laboratorio_esta_em ADD CONSTRAINT FK_Medicamento_Laboratorio_esta_em_1
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
