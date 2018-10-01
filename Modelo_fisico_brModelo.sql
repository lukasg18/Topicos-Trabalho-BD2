/* Modelo_Fisico: */

CREATE TABLE Medicamento (
    nome VARCHAR(80),
    bula VARCHAR(200),
    idMedicamento SERIAL PRIMARY KEY
);

CREATE TABLE Solicitacao (
    data_hora TIMESTAMP,
    idSolicitacao SERIAL PRIMARY KEY,
    quantidadeMedicamento INTEGER,
    idEstadoSolicitacao SERIAL,
    idTitular SERIAL
);

CREATE TABLE EstadoSolicitacao (
    tipo VARCHAR(30),
    idEstadoSolicitacao SERIAL PRIMARY KEY
);

CREATE TABLE Titular (
    numeroSUS VARCHAR(16),
    idPessoa SERIAL PRIMARY KEY
);

CREATE TABLE Pessoa (
    idPessoa SERIAL PRIMARY KEY,
    nome VARCHAR(100),
    dataNascimento DATE,
    cpf VARCHAR(12),
    sexo INTEGER,
    rg INTEGER
);

CREATE TABLE Posto (
    idPosto SERIAL PRIMARY KEY,
    complemento VARCHAR(200),
    cep INTEGER,
    numero INTEGER,
    coordGeoLong DOUBLE PRECISION,
    coordGeoLat DOUBLE PRECISION,
    idBairro SERIAL,
    nome VARCHAR(100),
    rua VARCHAR(100)
);

CREATE TABLE Bairro (
    idBairro SERIAL PRIMARY KEY,
    nome VARCHAR(30),
    idMunicipio SERIAL
);

CREATE TABLE Estado (
    idEstado SERIAL PRIMARY KEY,
    nome VARCHAR(30)
);

CREATE TABLE Municipio (
    idMunicipio SERIAL PRIMARY KEY,
    nome VARCHAR(80),
    idEstado SERIAL
);

CREATE TABLE Controle (
    quantidade INTEGER,
    codigoBarras INTEGER,
    idControle SERIAL PRIMARY KEY,
    data_hora TIMESTAMP,
    tipoControle INTEGER,
    idMedicamentoPosto SERIAL,
    idAtendente SERIAL
);

CREATE TABLE Lote (
    idLote SERIAL PRIMARY KEY,
    quantidade INTEGER,
    dataVencimento DATE,
    numero INTEGER,
    idMedicamentoPosto SERIAL
);

CREATE TABLE Medicamento_Posto (
    idMedicamentoPosto SERIAL PRIMARY KEY,
    estadoMedicamento INTEGER,
    idPosto SERIAL,
    idMedicamento SERIAL
);

CREATE TABLE Atendente (
    numeroRegistro INTEGER,
    idPessoa SERIAL PRIMARY KEY,
    idPosto SERIAL
);

CREATE TABLE Recebimento (
    quantidadeMedicamentos INTEGER,
    idRecebimento SERIAL PRIMARY KEY,
    data_hora TIMESTAMP,
    idPessoa SERIAL
);

CREATE TABLE Medicamento_Categoria (
    idCategoria SERIAL,
    idMedicamento SERIAL
);

CREATE TABLE Medicamento_Laboratorio (
    idLaboratorio SERIAL,
    idMedicamento SERIAL
);

CREATE TABLE Categoria (
    tipo VARCHAR(20),
    idCategoria SERIAL PRIMARY KEY
);

CREATE TABLE Laboratorio (
    nome VARCHAR(30),
    idLaboratorio SERIAL PRIMARY KEY
);

CREATE TABLE Dependente (
    idPessoa SERIAL PRIMARY KEY,
    idTitular SERIAL
);

CREATE TABLE Solicitacao_MedicamentoPosto (
    idMedicamentoPosto SERIAL,
    idSolicitacao SERIAL
);

CREATE TABLE Recebimento_MedicamentoPosto (
    idAtendente SERIAL,
    idMedicamentoPosto SERIAL,
    idRecebimento SERIAL
);
 
ALTER TABLE Solicitacao ADD CONSTRAINT FK_Solicitacao_1
    FOREIGN KEY (idEstadoSolicitacao)
    REFERENCES EstadoSolicitacao (idEstadoSolicitacao)
    ON DELETE CASCADE ON UPDATE CASCADE;
 
ALTER TABLE Solicitacao ADD CONSTRAINT FK_Solicitacao_2
    FOREIGN KEY (idTitular)
    REFERENCES Titular (idPessoa)
    ON DELETE CASCADE ON UPDATE CASCADE;
 
ALTER TABLE Titular ADD CONSTRAINT FK_Titular_1
    FOREIGN KEY (idPessoa)
    REFERENCES Pessoa (idPessoa)
    ON DELETE CASCADE ON UPDATE CASCADE;
 
ALTER TABLE Posto ADD CONSTRAINT FK_Posto_1
    FOREIGN KEY (idBairro)
    REFERENCES Bairro (idBairro)
    ON DELETE CASCADE ON UPDATE CASCADE;
 
ALTER TABLE Bairro ADD CONSTRAINT FK_Bairro_1
    FOREIGN KEY (idMunicipio)
    REFERENCES Municipio (idMunicipio)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE Municipio ADD CONSTRAINT FK_Municipio_1
    FOREIGN KEY (idEstado)
    REFERENCES Estado (idEstado)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE Controle ADD CONSTRAINT FK_Controle_1
    FOREIGN KEY (idMedicamentoPosto)
    REFERENCES Medicamento_Posto (idMedicamentoPosto)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE Controle ADD CONSTRAINT FK_Controle_2
    FOREIGN KEY (idAtendente)
    REFERENCES Atendente (idPessoa)
    ON DELETE CASCADE ON UPDATE CASCADE;
 
ALTER TABLE Lote ADD CONSTRAINT FK_Lote_1
    FOREIGN KEY (idMedicamentoPosto)
    REFERENCES Medicamento_Posto (idMedicamentoPosto)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE Medicamento_Posto ADD CONSTRAINT FK_Medicamento_Posto_1
    FOREIGN KEY (idPosto)
    REFERENCES Posto (idPosto);
 
ALTER TABLE Medicamento_Posto ADD CONSTRAINT FK_Medicamento_Posto_2
    FOREIGN KEY (idMedicamento)
    REFERENCES Medicamento (idMedicamento);
 
ALTER TABLE Atendente ADD CONSTRAINT FK_Atendente_1
    FOREIGN KEY (idPessoa)
    REFERENCES Pessoa (idPessoa)
    ON DELETE CASCADE ON UPDATE CASCADE;
 
ALTER TABLE Atendente ADD CONSTRAINT FK_Atendente_2
    FOREIGN KEY (idPosto)
    REFERENCES Posto (idPosto)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE Recebimento ADD CONSTRAINT FK_Recebimento_1
    FOREIGN KEY (idPessoa)
    REFERENCES Pessoa (idPessoa)
    ON DELETE CASCADE ON UPDATE CASCADE;
 
ALTER TABLE Medicamento_Categoria ADD CONSTRAINT FK_Medicamento_Categoria_0
    FOREIGN KEY (idCategoria)
    REFERENCES Categoria (idCategoria);
 
ALTER TABLE Medicamento_Categoria ADD CONSTRAINT FK_Medicamento_Categoria_1
    FOREIGN KEY (idMedicamento)
    REFERENCES Medicamento (idMedicamento);
 
ALTER TABLE Medicamento_Laboratorio ADD CONSTRAINT FK_Medicamento_Laboratorio_0
    FOREIGN KEY (idLaboratorio)
    REFERENCES Laboratorio (idLaboratorio);
 
ALTER TABLE Medicamento_Laboratorio ADD CONSTRAINT FK_Medicamento_Laboratorio_1
    FOREIGN KEY (idMedicamento)
    REFERENCES Medicamento (idMedicamento);
 
ALTER TABLE Dependente ADD CONSTRAINT FK_Dependente_1
    FOREIGN KEY (idPessoa)
    REFERENCES Pessoa (idPessoa)
    ON DELETE CASCADE ON UPDATE CASCADE;
 
ALTER TABLE Dependente ADD CONSTRAINT FK_Dependente_2
    FOREIGN KEY (idTitular)
    REFERENCES Titular (idPessoa)
    ON DELETE CASCADE ON UPDATE CASCADE;
 
ALTER TABLE Solicitacao_MedicamentoPosto ADD CONSTRAINT FK_Solicitacao_MedicamentoPosto_0
    FOREIGN KEY (idMedicamentoPosto)
    REFERENCES Medicamento_Posto (idMedicamentoPosto);
 
ALTER TABLE Solicitacao_MedicamentoPosto ADD CONSTRAINT FK_Solicitacao_MedicamentoPosto_1
    FOREIGN KEY (idSolicitacao)
    REFERENCES Solicitacao (idSolicitacao);
 
ALTER TABLE Recebimento_MedicamentoPosto ADD CONSTRAINT FK_Recebimento_MedicamentoPosto_0
    FOREIGN KEY (idAtendente)
    REFERENCES Atendente (idPessoa)
    ON DELETE CASCADE ON UPDATE CASCADE;
 
ALTER TABLE Recebimento_MedicamentoPosto ADD CONSTRAINT FK_Recebimento_MedicamentoPosto_1
    FOREIGN KEY (idMedicamentoPosto)
    REFERENCES Medicamento_Posto (idMedicamentoPosto);
 
ALTER TABLE Recebimento_MedicamentoPosto ADD CONSTRAINT FK_Recebimento_MedicamentoPosto_2
    FOREIGN KEY (idRecebimento)
    REFERENCES Recebimento (idRecebimento);
