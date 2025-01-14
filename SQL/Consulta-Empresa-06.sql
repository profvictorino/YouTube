INSERT INTO empregado (Matricula, Primeiro_Nome, Familia_Nome, Salario, Departamento_Codigo) 
VALUES (855, 'Edu', 'Santos', 600.00, 30);
Commit;
------------------------------------------------------------------------------------------------------------
-- Listar o nome e o salário  dos empregados do departamento 40 
-- que possuem salário maior que todos os empregados do departamento 30.
------------------------------------------------------------------------------------------------------------
SELECT Primeiro_Nome, Salario  
FROM Empregado
WHERE Departamento_Codigo = 40 AND
Salario > ALL (SELECT Salario  
			   FROM Empregado
			   WHERE Departamento_Codigo = 30);

-- Utilizando MAX()
SELECT Primeiro_Nome, Salario  
FROM Empregado
WHERE Departamento_Codigo = 40 AND
Salario > (SELECT MAX(Salario)  
		   FROM Empregado
		   WHERE Departamento_Codigo = 30);
           
------------------------------------------------------------------------------------------------------------
-- Listar o nome e o salário  dos empregados do departamento 40 
-- que possuem salário maior que pelo menos um dos empregados do departamento 30.
------------------------------------------------------------------------------------------------------------
SELECT Primeiro_Nome, Salario  
FROM Empregado
WHERE Departamento_Codigo = 40 AND
Salario > ANY (SELECT Salario  
			   FROM Empregado
			   WHERE Departamento_Codigo = 30);

-- Utilizando MIN()
SELECT Primeiro_Nome, Salario  
FROM Empregado
WHERE Departamento_Codigo = 40 AND
Salario > (SELECT MIN(Salario)  
		   FROM Empregado
		   WHERE Departamento_Codigo = 30);