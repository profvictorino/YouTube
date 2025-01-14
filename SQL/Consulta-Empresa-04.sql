------------------------------------------------------------------------------------------------------------
-- Listar os dados dos empregados que trabalhem no departamento 40 e possuam salário superior à R$ 500,00.
------------------------------------------------------------------------------------------------------------
SELECT * 
FROM Empregado
WHERE Departamento_Codigo = 40 AND Salario > 500.00;

------------------------------------------------------------------------------------------------------------
-- Listar os dados dos empregados que trabalhem no departamento 40 ou possuam salário superior à R$ 500,00.
------------------------------------------------------------------------------------------------------------
SELECT * 
FROM Empregado
WHERE Departamento_Codigo = 40 OR Salario > 500.00;

------------------------------------------------------------------------------------------------------------
-- Listar dados dos empregados que trabalham nos departemantos 10 ou 30. 
------------------------------------------------------------------------------------------------------------
SELECT * 
FROM Empregado
WHERE Departamento_Codigo = 10 OR Departamento_Codigo = 40;

-- Outra forma
SELECT * 
FROM Empregado
WHERE Departamento_Codigo IN (10, 40);

------------------------------------------------------------------------------------------------------------
-- Listar dados dos empregados que não trabalham nos departemantos 10 nem 30. 
------------------------------------------------------------------------------------------------------------
SELECT * 
FROM Empregado
WHERE (Departamento_Codigo <> 10 AND Departamento_Codigo <> 30);

-- Outra forma
SELECT * 
FROM Empregado
WHERE Departamento_Codigo NOT IN (10, 30);

----------------------------------------------------------------------------------------------------------------------
-- Listar dados dos empregados que possuem salário entre R$ 250,00 e R$ 800,00. 
----------------------------------------------------------------------------------------------------------------------
SELECT * 
FROM Empregado
WHERE salario >= 250.00 AND salario <= 800;

-- Outra forma
SELECT * 
FROM Empregado
WHERE salario BETWEEN 250.00 AND 800;
