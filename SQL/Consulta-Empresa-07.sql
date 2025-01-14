------------------------------------------------------------------------------------------------------------
-- Listar o nome e o salário  dos empregados acrescidos de R$ 50.00.
------------------------------------------------------------------------------------------------------------
SELECT Primeiro_Nome, Salario + 50.00 
FROM Empregado;

-- Utilizando Alias
SELECT Primeiro_Nome, Salario + 50.00 as Novo_Salario
FROM Empregado;

------------------------------------------------------------------------------------------------------------
-- Listar o nome e o salário  dos empregados decrescido de R$ 50.00.
------------------------------------------------------------------------------------------------------------
SELECT Primeiro_Nome, Salario - 50.00 
FROM Empregado;

-- Utilizando Alias
SELECT Primeiro_Nome, Salario - 50.00 as Novo_Salario
FROM Empregado;

------------------------------------------------------------------------------------------------------------
-- Listar o nome e o salário  dos empregados acrescidos de 10%.
------------------------------------------------------------------------------------------------------------
SELECT Primeiro_Nome, Salario * 1.1 
FROM Empregado;

-- Utilizando Alias
SELECT Primeiro_Nome, Salario * 1.1 as Novo_Salario
FROM Empregado;

------------------------------------------------------------------------------------------------------------
-- Listar o nome e a metade do salário  dos empregados .
------------------------------------------------------------------------------------------------------------
SELECT Primeiro_Nome, Salario / 2 
FROM Empregado;

-- round(15.654, 2) = 15.65
-- round(15.655, 2) = 15.66

-- truncate(15.654, 2) = 15.65
-- truncate(15.655, 2) = 15.65

-- Utilizando Alias
SELECT Primeiro_Nome, truncate(Salario/2,2) as Novo_Salario
FROM Empregado;

------------------------------------------------------------------------------------------------------------
-- Listar o nome e salario dos empregados cujo salario seja divisível por 3.
------------------------------------------------------------------------------------------------------------
SELECT Primeiro_Nome, Salario 
FROM Empregado
WHERE Salario % 3 = 0;

