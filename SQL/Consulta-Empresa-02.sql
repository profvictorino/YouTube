-- Liste o nome e o código do departamento dos empregados que não estão relacionados a departamentos
SELECT Primeiro_Nome, Departamento_Codigo
FROM Empregado
WHERE Departamento_Codigo is null;

-- Liste o nome e o código do departamento dos empregados que estão relacionados a departamentos
SELECT Primeiro_Nome, Departamento_Codigo
FROM Empregado
WHERE Departamento_Codigo is not null;