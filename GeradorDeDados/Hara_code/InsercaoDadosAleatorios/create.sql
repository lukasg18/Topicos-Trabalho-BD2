CREATE TABLE Medicamento (
nome VARCHAR(80),
idMedicamento SERIAL PRIMARY KEY,
bula VARCHAR(200),
FK_EstadoMedicamento_idEstadoMedicamento SERIAL,
FK_Solicitacao_idSolicitacao SERIAL
);
