------------------------------------------------------------------------------------------------------------
-- Liste a Descrição dos Projetos e a quantidade de Pessoas alocadas a eles.
------------------------------------------------------------------------------------------------------------
SELECT Descricao, COUNT(*) as QTD_Pessoas
FROM Aloca INNER JOIN Projeto
on Projeto_Codigo = Codigo
GROUP BY Descricao
ORDER BY Codigo;

------------------------------------------------------------------------------------------------------------
-- Liste o Nome das Pessoas e a quantidade de Projetos a qual estão alocadas.
------------------------------------------------------------------------------------------------------------
SELECT Nome, COUNT(*) as QTD_Projetos
FROM Aloca INNER JOIN Pessoa
on Pessoa_CPF = CPF
GROUP BY Nome
ORDER BY Nome;

------------------------------------------------------------------------------------------------------------
-- Liste o nome das Pessoas e dos respectivos gerentes.
------------------------------------------------------------------------------------------------------------
SELECT P1.Nome , P2.Nome as Nome_Gerente
FROM pessoa P1 INNER JOIN pessoa P2
ON P1. Gerente_CPF = P2.CPF
ORDER BY P1.CPF;

------------------------------------------------------------------------------------------------------------
-- Liste os dados dos Projetos, de Aloca e das Pessoas que estão alocadas a esses Projetos.
------------------------------------------------------------------------------------------------------------
SELECT *
FROM Projeto INNER JOIN (Aloca INNER JOIN Pessoa						
                         on Pessoa_CPF = CPF)
on Codigo = Projeto_Codigo;

------------------------------------------------------------------------------------------------------------
-- Liste a descrição dos Projetos e o nome das Pessoas que estão alocadas a esses Projetos.
------------------------------------------------------------------------------------------------------------
SELECT Descricao, Nome
FROM Projeto INNER JOIN (Aloca INNER JOIN Pessoa						
                         on Pessoa_CPF = CPF)
on Codigo = Projeto_Codigo;

------------------------------------------------------------------------------------------------------------
-- Liste o nome de todos as Pessoas, independente delas estarem alocadas a projetos 
-- e a descrição do projeto a qual está alocada, quando houver.
------------------------------------------------------------------------------------------------------------
SELECT Nome, Descricao
FROM Pessoa
LEFT OUTER JOIN (Aloca INNER JOIN Projeto                             
				  on Codigo = Projeto_Codigo)                             
on Pessoa_CPF = CPF;

------------------------------------------------------------------------------------------------------------
-- Liste o Nome das Pessoas que não participaram de projetos.
------------------------------------------------------------------------------------------------------------
SELECT Nome
FROM Pessoa
WHERE CPF NOT IN (SELECT Pessoa_CPF
				  FROM Aloca);
                        
------------------------------------------------------------------------------------------------------------
-- Liste o Nome das Pessoas que participaram de todos os projetos.
------------------------------------------------------------------------------------------------------------
SELECT Nome, COUNT(*) as QTD_Projetos
FROM Aloca INNER JOIN Pessoa
ON Pessoa_CPF = CPF
GROUP BY Nome
HAVING COUNT(*) = (SELECT COUNT(*)
				  FROM Projeto) ;  