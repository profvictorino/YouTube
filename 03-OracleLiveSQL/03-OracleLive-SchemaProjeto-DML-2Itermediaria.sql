------------------------------------------------------------------------------------------------------------
-- Liste o código dos Projetos e os dados das Pessoas que estão alocadas a esses Projetos. 
-- Para o Projeto aparecer na listagem é necessário ter pelo menos uma Pessoa alocada.
-- O resultado deverá ser ordenado pelo CPF da Pessoa.
------------------------------------------------------------------------------------------------------------
SELECT *
FROM Aloca INNER JOIN Pessoa
on Pessoa_CPF = CPF
ORDER BY CPF;

------------------------------------------------------------------------------------------------------------
-- Liste os dados dos Projetos e o CPF das Pessoas alocadas a eles. 
-- Para a Pessoa aparecer na listagem é necessário estar alocada a pelo menos um Projeto. 
-- O resultado deverá ser ordenado pelo Código do Projeto.
------------------------------------------------------------------------------------------------------------
SELECT *
FROM Aloca INNER JOIN Projeto
on Projeto_Codigo = Codigo
ORDER BY Codigo;

------------------------------------------------------------------------------------------------------------
-- Liste os dados dos Projetos que alocam a Pessoa com CPF = 123
------------------------------------------------------------------------------------------------------------
SELECT Pessoa_CPF, Projeto_codigo, Codigo, Descricao
FROM Aloca INNER JOIN Projeto
on Projeto_Codigo = Codigo
where Pessoa_CPF = 123;

------------------------------------------------------------------------------------------------------------
-- Liste os dados das Pessoas que estão alocadas ao Projeto 3344 ou Projeto 5566.
------------------------------------------------------------------------------------------------------------
SELECT Projeto_Codigo, Pessoa_CPF, Pessoa.*
FROM Aloca INNER JOIN Pessoa
on Pessoa_CPF = CPF
WHERE Projeto_Codigo = 3344 OR Projeto_Codigo = 5566;

------------------------------------------------------------------------------------------------------------
-- Liste o código dos Projetos e a quantidade de Pessoas alocadas a eles.
------------------------------------------------------------------------------------------------------------
SELECT Projeto_Codigo, COUNT(*) as QTD_Pessoas
FROM Aloca
GROUP BY Projeto_Codigo;

------------------------------------------------------------------------------------------------------------
-- Liste o CPF das Pessoas e a quantidade de Projetos a qual estão alocadas.
------------------------------------------------------------------------------------------------------------
SELECT Pessoa_CPF, COUNT(*) as QTD_Projetos
FROM Aloca
GROUP BY Pessoa_CPF;

