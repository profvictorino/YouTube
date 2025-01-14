----------------------------------------------------------------------------------
-- Liste os dados das Pessoas que estão alocadas ao Projeto 3344 OU Projeto 5566.
----------------------------------------------------------------------------------
SELECT Pessoa.* 
FROM Aloca INNER JOIN Pessoa
ON Pessoa_CPF = CPF
WHERE Projeto_Codigo = 3344
UNION
SELECT Pessoa.* 
FROM Aloca INNER JOIN Pessoa
ON Pessoa_CPF = CPF
WHERE Projeto_Codigo = 5566;

----------------------------------------------------------------------------------
-- Liste os dados das Pessoas que estão alocadas ao Projeto 3344 E Projeto 5566.
----------------------------------------------------------------------------------
SELECT Pessoa.* 
FROM Aloca INNER JOIN Pessoa
ON Pessoa_CPF = CPF
WHERE Projeto_Codigo = 3344
INTERSECT
SELECT Pessoa.* 
FROM Aloca INNER JOIN Pessoa
ON Pessoa_CPF = CPF
WHERE Projeto_Codigo = 5566;
----------------------------------------------------------------------------------
----------------------------------------------------------------------------------
SELECT Pessoa.* 
FROM Aloca INNER JOIN Pessoa
ON Pessoa_CPF = CPF
WHERE Projeto_Codigo = 3344
AND CPF IN( SELECT CPF 
			FROM Aloca INNER JOIN Pessoa
			ON Pessoa_CPF = CPF
			WHERE Projeto_Codigo = 5566);

----------------------------------------------------------------------------------
-- Liste os dados das Pessoas que estão alocadas ao Projeto 3344, 
-- mas não estão alocadas ao Projeto 5566.
----------------------------------------------------------------------------------
SELECT Pessoa.* 
FROM Aloca INNER JOIN Pessoa
ON Pessoa_CPF = CPF
WHERE Projeto_Codigo = 3344
EXCEPT
SELECT Pessoa.* 
FROM Aloca INNER JOIN Pessoa
ON Pessoa_CPF = CPF
WHERE Projeto_Codigo = 5566;
----------------------------------------------------------------------------------
----------------------------------------------------------------------------------
SELECT Pessoa.* 
FROM Aloca INNER JOIN Pessoa
ON Pessoa_CPF = CPF
WHERE Projeto_Codigo = 3344
AND CPF NOT IN( SELECT CPF 
			FROM Aloca INNER JOIN Pessoa
			ON Pessoa_CPF = CPF
			WHERE Projeto_Codigo = 5566);