------------------------------------------------------------------------------------------------------------
-- Visão com o CPF, Nome e Sexo das Pessoas.
------------------------------------------------------------------------------------------------------------
CREATE VIEW Pessoa_View AS
SELECT CPF, Nome , Sexo
FROM Pessoa;

------------------------------------------------------------------------------------------------------------
-- Visão com o nome das Pessoas e dos respectivos gerentes.
------------------------------------------------------------------------------------------------------------
SELECT P1.Nome , P2.Nome as Nome_Gerente
FROM pessoa P1 INNER JOIN pessoa P2
ON P1. Gerente_CPF = P2.CPF
WHERE P2.Nome = 'Rubi';

-------------------------------------------------------------
CREATE VIEW Gerencia AS
SELECT P1.Nome , P2.Nome as Nome_Gerente
FROM pessoa P1 INNER JOIN pessoa P2
ON P1. Gerente_CPF = P2.CPF;

SELECT Nome 
FROM Gerencia
WHERE Nome_Gerente = 'Rubi';

------------------------------------------------------------------------------------------------------------
-- Visão com o nome das Pessoas e Projetos em que estão alocadas.
------------------------------------------------------------------------------------------------------------
SELECT Nome, Descricao
FROM Projeto, Aloca, Pessoa						
WHERE Pessoa_CPF = CPF AND
      Codigo = Projeto_Codigo AND
      Descricao = 'GTI';
      
-------------------------------------------------------------
CREATE VIEW Alocacao AS
SELECT Nome, Descricao
FROM Projeto, Aloca, Pessoa						
WHERE Pessoa_CPF = CPF AND
      Codigo = Projeto_Codigo;
      
SELECT Nome
FROM Alocacao
WHERE Descricao = 'GTI';
      
------------------------------------------------------------------------------------------------------------
-- Atualização da tabela Pessoa por meio da visão Pessa_View.
------------------------------------------------------------------------------------------------------------
INSERT INTO Pessoa_View (CPF, Nome , Sexo) 
VALUES(999, 'João', 'M');
-------------------------------------------------------------
UPDATE Pessoa_View
SET Nome = 'João Silva'
WHERE CPF = 999;
-------------------------------------------------------------
DELETE FROM Pessoa_View
WHERE CPF = 999;

------------------------------------------------------------------------------------------------------------
-- Inline View.
------------------------------------------------------------------------------------------------------------
CREATE VIEW Pessoa_M AS
SELECT CPF, Nome , Sexo, Idade
FROM Pessoa
WHERE Sexo = 'M';

SELECT * FROM Pessoa_M
WHERE Idade > 40;
-------------------------------------------------------------
SELECT * FROM (SELECT CPF, Nome , Sexo, Idade
FROM Pessoa
WHERE SEXO = 'M') Pessoa_M_Nova
WHERE Pessoa_M_Nova.Idade > 40;

------------------------------------------------------------------------------------------------------------
-- Visões com a cláusula [WITH CHECK OPTION]
------------------------------------------------------------------------------------------------------------
-- Sem a cláusula [WITH CHECK OPTION]
CREATE VIEW Pessoa_Idade AS
SELECT CPF, Nome , Sexo, Idade
FROM Pessoa
WHERE Idade > 40;

INSERT INTO Pessoa_IDADE(CPF, Nome , Sexo, Idade) 
VALUES (111, 'Ana', 'F', 25);
-------------------------------------------------------------
-- Com a cláusula [WITH CHECK OPTION]
CREATE VIEW Pessoa_Idade_WCO AS
SELECT CPF, Nome , Sexo, Idade
FROM Pessoa
WHERE Idade > 40
WITH CHECK OPTION;

INSERT INTO Pessoa_Idade_WCO(CPF, Nome , Sexo, Idade) 
VALUES (222, 'Beto', 'M', 30);

------------------------------------------------------------------------------------------------------------
-- Exclusão de visões.
------------------------------------------------------------------------------------------------------------
DROP VIEW Alocacao;
DROP VIEW Gerencia;
DROP VIEW Pessoa_View;
DROP VIEW Pessoa_M;
DROP VIEW Pessoa_Idade;
DROP VIEW Pessoa_Idade_WCO;



