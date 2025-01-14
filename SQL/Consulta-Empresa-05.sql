------------------------------------------------------------------------------------------------------------
-- Listar os dados dos empregados cujo nome inicia com a letra 'M'.
------------------------------------------------------------------------------------------------------------
SELECT * 
FROM Empregado
WHERE Primeiro_Nome Like 'M%';

------------------------------------------------------------------------------------------------------------
-- Listar os dados dos empregados cujo nome termina com a letra 'A'.
------------------------------------------------------------------------------------------------------------
SELECT * 
FROM Empregado
WHERE Primeiro_Nome Like '%A';

------------------------------------------------------------------------------------------------------------
-- Listar os dados dos empregados cujo nome tenha como segunda letra o 'e'.
------------------------------------------------------------------------------------------------------------
SELECT * 
FROM Empregado
WHERE Primeiro_Nome Like '_e%';

------------------------------------------------------------------------------------------------------------
-- Listar os dados dos empregados cujo nome tenha como penúltima letra o 'n'.
------------------------------------------------------------------------------------------------------------
SELECT * 
FROM Empregado
WHERE Primeiro_Nome Like '%n_';

------------------------------------------------------------------------------------------------------------
-- Listar os dados dos empregados cujo nome tenha a letra 's'.
------------------------------------------------------------------------------------------------------------
SELECT * 
FROM Empregado
WHERE Primeiro_Nome Like '%s%';

------------------------------------------------------------------------------------------------------------
-- Listar os dados dos empregados cujo nome tenha três letras, sendo que a letra do meio seja o 'n'.
------------------------------------------------------------------------------------------------------------
SELECT * 
FROM Empregado
WHERE Primeiro_Nome Like '_n_';

------------------------------------------------------------------------------------------------------------
-- Listar os dados dos empregados cujo nome não inicia com a letra 'M'.
------------------------------------------------------------------------------------------------------------
SELECT * 
FROM Empregado
WHERE Primeiro_Nome Not Like 'M%';