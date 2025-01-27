-- -----------------------------------------------------
-- Table `Pessoa`
-- -----------------------------------------------------
CREATE TABLE Pessoa (
  CPF VARCHAR(11) NOT NULL,
  Nome VARCHAR(45) NOT NULL,
  Sexo CHAR(1) NULL,
  PRIMARY KEY (CPF));


-- -----------------------------------------------------
-- Table `Piloto`
-- -----------------------------------------------------
CREATE TABLE Piloto (
  Pessoa_CPF VARCHAR(11) NOT NULL,
  Licenca VARCHAR(10) NULL,
  PRIMARY KEY (Pessoa_CPF),
  CONSTRAINT fk_Piloto_Pessoa
    FOREIGN KEY (Pessoa_CPF)
    REFERENCES Pessoa (CPF));


-- -----------------------------------------------------
-- Table `Passageiro`
-- -----------------------------------------------------
CREATE TABLE Passageiro (
  Pessoa_CPF VARCHAR(11) NOT NULL,
  Categoria VARCHAR(10) NULL,
  PRIMARY KEY (Pessoa_CPF),
  CONSTRAINT fk_Passageiro_Pessoa1
    FOREIGN KEY (Pessoa_CPF)
    REFERENCES Pessoa (CPF));


-- -----------------------------------------------------
-- Table `Voo`
-- -----------------------------------------------------
CREATE TABLE Voo (
  numero INT NOT NULL,
  Data DATE NOT NULL,
  Piloto_Pessoa_CPF VARCHAR(11) NOT NULL,
  PRIMARY KEY (numero),
  CONSTRAINT fk_Voo_Piloto1 FOREIGN KEY (Piloto_Pessoa_CPF)
    REFERENCES Piloto (Pessoa_CPF));


-- -----------------------------------------------------
-- Table `Voo_has_Passageiro`
-- -----------------------------------------------------
CREATE TABLE Voo_has_Passageiro (
  Voo_numero INT NOT NULL,
  Passageiro_Pessoa_CPF VARCHAR(11) NOT NULL,
  PRIMARY KEY (Passageiro_Pessoa_CPF, Voo_numero),
  CONSTRAINT fk_Voo_has_Passageiro_Voo1
    FOREIGN KEY (Voo_numero)
    REFERENCES Voo (numero),
  CONSTRAINT fk_Voo_has_Passageiro_Passageiro1
    FOREIGN KEY (Passageiro_Pessoa_CPF)
    REFERENCES Passageiro (Pessoa_CPF));


-- -----------------------------------------------------
-- Table `Telefone`
-- -----------------------------------------------------
CREATE TABLE Telefone (
  Numero INT NOT NULL,
  Passageiro_Pessoa_CPF VARCHAR(11) NOT NULL,
  PRIMARY KEY (Numero, Passageiro_Pessoa_CPF),
  CONSTRAINT fk_Telefone_Passageiro1
    FOREIGN KEY (Passageiro_Pessoa_CPF)
    REFERENCES Passageiro (Pessoa_CPF));
