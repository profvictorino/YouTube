-- Ordenar o resultado da consulta pelos campos 
SELECT Matricula, Primeiro_Nome, Salario
FROM Empregado
ORDER BY Primeiro_Nome ASC;

SELECT Matricula, Primeiro_Nome, Salario
FROM Empregado
ORDER BY 2 ASC;

SELECT Matricula, Primeiro_Nome, Salario
FROM Empregado
ORDER BY Primeiro_Nome DESC;

SELECT Matricula, Primeiro_Nome, Salario, Departamento_Codigo
FROM Empregado
ORDER BY Departamento_Codigo;

SELECT Matricula, Primeiro_Nome, Salario, Departamento_Codigo
FROM Empregado
ORDER BY Departamento_Codigo ASC, Primeiro_Nome DESC;

