------------------------------------------------------------------------------------------------------------
-- Listar o código do departamento e o maior salário desse departamento.
------------------------------------------------------------------------------------------------------------
SELECT Departamento_Codigo, MAX(Salario)
FROM Empregado
GROUP BY Departamento_Codigo;

------------------------------------------------------------------------------------------------------------
-- Listar o código do departamento e a média salarial desse departamento.
------------------------------------------------------------------------------------------------------------
SELECT Departamento_Codigo, AVG(Salario)
FROM Empregado
GROUP BY Departamento_Codigo;

------------------------------------------------------------------------------------------------------------
-- Listar o código do departamento e a quantidade de empregados desse departamento.
------------------------------------------------------------------------------------------------------------
SELECT Departamento_Codigo, COUNT(*)
FROM Empregado
GROUP BY Departamento_Codigo;
