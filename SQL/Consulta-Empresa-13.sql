------------------------------------------------------------------------------------------------------------
-- Listar o Nome dos departamentos que possuem empregados.
------------------------------------------------------------------------------------------------------------
SELECT Nome  
FROM Departamento
WHERE Codigo IN (SELECT Departamento_Codigo			                 
                 FROM Empregado
                 WHERE Departamento_Codigo IS NOT NULL);

SELECT Nome  
FROM Departamento
WHERE EXISTS (SELECT Departamento_Codigo
			  FROM Empregado
	          WHERE Departamento_Codigo IS NOT NULL 
			  AND Codigo = Departamento_Codigo);

------------------------------------------------------------------------------------------------------------
-- Listar o Nome dos departamentos que não possuem empregados.
------------------------------------------------------------------------------------------------------------
SELECT Nome  
FROM Departamento
WHERE Codigo NOT IN (SELECT Departamento_Codigo			                 
                     FROM Empregado
                     WHERE Departamento_Codigo IS NOT NULL);

SELECT Nome  
FROM Departamento
WHERE NOT EXISTS (SELECT Departamento_Codigo
			      FROM Empregado
	              WHERE Departamento_Codigo IS NOT NULL 
			      AND Codigo = Departamento_Codigo);