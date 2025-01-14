------------------------------------------------------------------------------------------------------------
-- Listar o total de empregados que estão alocados em deparamentos.
------------------------------------------------------------------------------------------------------------
SELECT COUNT(Departamento_Codigo)
FROM Empregado;

-- Listar o total de empregados que estão alocados ao deparamento 40
SELECT COUNT(*)
FROM Empregado
WHERE Departamento_Codigo = 40;

------------------------------------------------------------------------------------------------------------
-- Listar o total dos salários dos empregados.
------------------------------------------------------------------------------------------------------------
SELECT SUM(salario)
FROM Empregado;

-- Listar o total dos salários dos empregados que estão alocados ao deparamento 40
SELECT SUM(Salario)
FROM Empregado
WHERE Departamento_Codigo = 40;

------------------------------------------------------------------------------------------------------------
-- Listar a média dos salários dos empregados.
------------------------------------------------------------------------------------------------------------
SELECT AVG(salario)
FROM Empregado;

-- Listar a média dos salários dos empregados que estão alocados ao deparamento 40
SELECT AVG(Salario)
FROM Empregado
WHERE Departamento_Codigo = 40;

------------------------------------------------------------------------------------------------------------
-- Listar o maior salário dos empregados.
------------------------------------------------------------------------------------------------------------
SELECT MAX(salario)
FROM Empregado;

-- Listar o maior salário dos empregados que estão alocados ao deparamento 40
SELECT MAX(Salario)
FROM Empregado
WHERE Departamento_Codigo = 40;

------------------------------------------------------------------------------------------------------------
-- Listar o menor salário dos empregados.
------------------------------------------------------------------------------------------------------------
SELECT MIN(salario)
FROM Empregado;

-- Listar o menor salário dos empregados que estão alocados ao deparamento 40
SELECT MIN(Salario)
FROM Empregado
WHERE Departamento_Codigo = 40;