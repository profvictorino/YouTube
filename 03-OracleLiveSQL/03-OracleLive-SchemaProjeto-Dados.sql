-- -----------------------------------------------------
-- Table  Projeto 
-- -----------------------------------------------------
INSERT INTO projeto ( Codigo ,  Descricao ) VALUES (1122, 'BI');
INSERT INTO projeto  ( Codigo ,  Descricao ) VALUES (3344, 'GTI');
INSERT INTO projeto  ( Codigo ,  Descricao ) VALUES (5566, 'SIG');

-- -----------------------------------------------------
-- Table  Pessoa 
-- -----------------------------------------------------
INSERT INTO pessoa  ( CPF ,  Nome ,  Sexo ,  Idade ) VALUES (123, 'Rubi', 'F', 35);
INSERT INTO pessoa  ( CPF ,  Nome ,  Sexo ,  Idade ) VALUES (456, 'Igor', 'M', 40);
INSERT INTO pessoa  ( CPF ,  Nome ,  Sexo ,  Idade ) VALUES (789, 'Luiz', 'M', 38);
INSERT INTO pessoa  ( CPF ,  Nome ,  Sexo ,  Idade ) VALUES (147, 'Maria', 'F', 42);
INSERT INTO pessoa  ( CPF ,  Nome ,  Sexo ,  Idade ) VALUES (258, 'Edu', 'M', 45);

-- -------------------------------------------
-- Table  Aloca 
-- -----------------------------------------------------
INSERT INTO  aloca  ( Projeto_Codigo ,  Pessoa_CPF ) VALUES (1122, 123);
INSERT INTO  aloca  ( Projeto_Codigo ,  Pessoa_CPF ) VALUES (3344, 123);
INSERT INTO  aloca  ( Projeto_Codigo ,  Pessoa_CPF ) VALUES (5566, 123);
INSERT INTO  aloca  ( Projeto_Codigo ,  Pessoa_CPF ) VALUES (1122, 456);
INSERT INTO  aloca  ( Projeto_Codigo ,  Pessoa_CPF ) VALUES (5566, 456);
INSERT INTO  aloca  ( Projeto_Codigo ,  Pessoa_CPF ) VALUES (3344, 789);
INSERT INTO  aloca  ( Projeto_Codigo ,  Pessoa_CPF ) VALUES (3344, 147);