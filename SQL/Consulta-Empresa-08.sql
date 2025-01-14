------------------------------------------------------------------------------------------------------------
-- Listar o o nome conpleto dos empregados 
------------------------------------------------------------------------------------------------------------
SELECT Concat(Primeiro_Nome, Familia_Nome)
FROM Empregado;

SELECT Concat(Primeiro_Nome, ' ' , Familia_Nome)
FROM Empregado;

SELECT Primeiro_Nome || ' ' || Familia_Nome
FROM Empregado;

SELECT Primeiro_Nome + ' ' + Familia_Nome
FROM Empregado;