------------------------------------------------------------------------------------------------------------
-- Listar o código do departamento e a quantidade de empregados desse departamento quando 
-- o departamento possuir mais de um empregado.
------------------------------------------------------------------------------------------------------------
SELECT Departamento_Codigo, COUNT(*)
FROM Empregado
GROUP BY Departamento_Codigo
HAVING COUNT(*) > 1;

------------------------------------------------------------------------------------------------------------
-- Listar o código do departamento e a média salarial dos empregados desse departamento 
-- quando a média salarial do departamento for maior que R$ 500.00.
------------------------------------------------------------------------------------------------------------
SELECT Departamento_Codigo, AVG(Salario)
FROM Empregado
GROUP BY Departamento_Codigo
HAVING AVG(Salario) > 500.00;

------------------------------------------------------------------------------------------------------------
-- Listar o código do departamento e a média salarial dos empregados desse departamento 
-- quando a média salarial for maior que R$ 500.00. 
-- Considerar apenas empregados com salário maior que R$ 350.00.
------------------------------------------------------------------------------------------------------------
SELECT Departamento_Codigo, AVG(Salario)
FROM Empregado
WHERE Salario > 350.00
GROUP BY Departamento_Codigo
HAVING AVG(Salario) > 500.00;

------------------------------------------------------------------------------------------------------------
-- Listar o código do departamento e a média salarial dos empregados desse departamento 
-- quando a média salarial for maior que R$ 500.00. 
-- Considerar apenas empregados com salário maior que R$ 350.00.
-- O resultado deverá ser ordenado de forma decrescente em relação à média salarial.
------------------------------------------------------------------------------------------------------------
SELECT Departamento_Codigo, AVG(Salario)
FROM Empregado
WHERE Salario > 350.00
GROUP BY Departamento_Codigo
HAVING AVG(Salario) > 500.00
ORDER BY 2 DESC;
