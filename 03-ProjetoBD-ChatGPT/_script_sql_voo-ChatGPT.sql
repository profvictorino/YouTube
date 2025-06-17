
-- Tabela Pessoa
CREATE TABLE Pessoa (
    CPF CHAR(11) PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    Sexo CHAR(1) CHECK (Sexo IN ('M', 'F'))
);

-- Tabela Piloto
CREATE TABLE Piloto (
    CPF CHAR(11) PRIMARY KEY,
    LicencaVoo VARCHAR(20) NOT NULL,
    FOREIGN KEY (CPF) REFERENCES Pessoa(CPF)
);

-- Tabela Passageiro
CREATE TABLE Passageiro (
    CPF CHAR(11) PRIMARY KEY,
    Categoria VARCHAR(50) NOT NULL,
    FOREIGN KEY (CPF) REFERENCES Pessoa(CPF)
);

-- Tabela Telefone
CREATE TABLE Telefone (
    NumeroTelefone VARCHAR(15) PRIMARY KEY,
    CPF_Passageiro CHAR(11) NOT NULL,
    FOREIGN KEY (CPF_Passageiro) REFERENCES Passageiro(CPF)
);

-- Tabela Voo
CREATE TABLE Voo (
    NumeroVoo INT PRIMARY KEY,
    Data DATE NOT NULL,
    CPF_Piloto CHAR(11) NOT NULL,
    FOREIGN KEY (CPF_Piloto) REFERENCES Piloto(CPF)
);

-- Tabela Reserva
CREATE TABLE Reserva (
    CPF_Passageiro CHAR(11),
    NumeroVoo INT,
    PRIMARY KEY (CPF_Passageiro, NumeroVoo),
    FOREIGN KEY (CPF_Passageiro) REFERENCES Passageiro(CPF),
    FOREIGN KEY (NumeroVoo) REFERENCES Voo(NumeroVoo)
);
