------------------------------------------------------------------------------------------------------------
-- Listar os dados de todos as combinações possíveis de empregados com departamentos.
------------------------------------------------------------------------------------------------------------
Select * 
From Empregado CROSS JOIN Departamento;

Select * 
From Empregado, Departamento;

------------------------------------------------------------------------------------------------------------
-- Listar os dados de todos os empregadose e dos departamentos relacionados.
------------------------------------------------------------------------------------------------------------
Select * 
From Empregado  INNER JOIN Departamento
ON Departamento_Codigo = Codigo;

Select * 
From Empregado, Departamento
WHERE Departamento_Codigo = Codigo;

-- Usando o NATURAL JOIN
Select * 
From Empregado  NATURAL JOIN Dep;

------------------------------------------------------------------------------------------------------------
-- Listar os dados de todos os empregados, independente deles estarem relacionados a departamentos.
-- Quando o empregado estiver relacionado a um departamento, apresente os dados do departamento.
------------------------------------------------------------------------------------------------------------
Select * 
From Empregado  LEFT OUTER JOIN Departamento
ON Departamento_Codigo = Codigo;

------------------------------------------------------------------------------------------------------------
-- Listar os dados de todos os departamentos, independente deles estarem relacionados a empregados.
-- Quando o departamento estiver relacionado a um empregado, apresente os dados do empregado.
------------------------------------------------------------------------------------------------------------
Select * 
From Empregado  RIGHT OUTER JOIN Departamento
ON Departamento_Codigo = Codigo;

------------------------------------------------------------------------------------------------------------
-- Listar os dados de todos os departamentos e empregados, independente deles estarem relacionados.
-- O MySQL não possui o operador FULL OUTER JOIN
------------------------------------------------------------------------------------------------------------
-- Select * 
-- From Empregado  FULL OUTER JOIN Departamento
-- ON Departamento_Codigo = Codigo;

-- Utiliza-se o UNION do LEFT com o RIGHT OUTER JOIN
Select * From 
Empregado  LEFT OUTER JOIN Departamento
ON Departamento_Codigo = Codigo
UNION
Select * 
From Empregado  RIGHT OUTER JOIN Departamento
ON Departamento_Codigo = Codigo


