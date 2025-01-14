------------------------------------------------------------------------------------------
-- Liste o maior salário, o menor salário e o salário médio de cada Departamento
------------------------------------------------------------------------------------------
SELECT Departamento_Codigo, MAX(Salario) as Maior_Salario, MIN(Salario) as Menor_Salario, Round(AVG(Salario), 2) as Media_Salarial
FROM Empregado
GROUP BY Departamento_Codigo
ORDER BY Departamento_Codigo;

-------------------------------------------------------------------------------------------
SELECT Nome as Departamento, MAX(Salario) as Maior_Salario, MIN(Salario) as Menor_Salario, AVG(Salario) as Media_Salarial
FROM Departamento, Empregado
WHERE Codigo = Departamento_Codigo
GROUP BY Nome
ORDER BY Nome;

-----------------------------------------------------------------------------------
-- Liste o número da NF, Nome do cliente e itens comprados com o valor de cada Item
-----------------------------------------------------------------------------------
SELECT Numero, Primeiro_Nome as Cliente, Nome as Produto, Preco_Unidade as Preço
FROM Venda, Cliente, Item, Produto 
WHERE CPF = Cliente_CPF AND Numero = Venda_Numero AND Codigo = Produto_Codigo
ORDER BY Numero;

------------------------------------------------------------------------------------
-- Liste o numero da NF, data, nome do cliente, nome do vendedor e valor total da NF
------------------------------------------------------------------------------------
SELECT Numero, DATE_FORMAT(Data, '%d de %M de %Y') as Data, Cli.Primeiro_Nome as Cliente, Emp.Primeiro_Nome as Vendedor, SUM(Preco_Unidade * Quantidade) as Valor_Total_NF
FROM Empregado Emp, Venda, Cliente Cli, Item
WHERE Matricula = Empregado_Matricula AND CPF = Cliente_CPF AND Numero = Venda_Numero
GROUP By Numero, DATE_FORMAT(Data, '%d de %M de %Y') , Cli.Primeiro_Nome, Emp.Primeiro_Nome
ORDER BY Numero;

-----------------------------------------------------------------------------
-- Liste o nome do cliente e valor total comprado por cada cliente
-----------------------------------------------------------------------------
SELECT Primeiro_Nome as Cliente,  SUM(Preco_Unidade * Quantidade) as Valor_Total_Cliente
FROM Venda, Cliente, Item 
WHERE CPF = Cliente_CPF AND Numero = Venda_Numero 
GROUP BY Primeiro_Nome
ORDER BY Primeiro_Nome;

-----------------------------------------------------------------------------
-- Liste o nome do Produto e valor vendido de cada produto
-----------------------------------------------------------------------------
SELECT Nome as Produto,  SUM(Preco_Unidade * Quantidade) as Valor_Total_Produto
FROM Item, Produto
WHERE Codigo = Produto_Codigo
GROUP BY Nome
ORDER BY Nome;

-----------------------------------------------------------------------------
-- Liste o nome do vendedor e valor total vendido por cada vendedor
-----------------------------------------------------------------------------
SELECT Primeiro_Nome as Vendedor,  SUM(Preco_Unidade * Quantidade) as Valor_Total_Vendedor
FROM Venda, Empregado, Item 
WHERE Matricula = Empregado_Matricula AND Numero = Venda_Numero 
GROUP BY Primeiro_Nome
ORDER BY Primeiro_Nome;

-----------------------------------------------------------------------------------------
-- Liste a categoria do produto, preço médio e valor total vendido por categoria
-----------------------------------------------------------------------------------------
SELECT Categoria,  AVG(Preco_Unidade) Preço_Medio_Unitario
FROM Item, Produto 
WHERE Codigo = Produto_Codigo
GROUP BY Categoria
ORDER BY Categoria;
------------------------------------------------------------------------------------------
SELECT Categoria,  SUM(Preco_Unidade * Quantidade) as Valor_Total_Categoria, SUM(Quantidade) as QTD_Vendida_Categoria, SUM(Preco_Unidade * Quantidade)/SUM(Quantidade) as Preço_Medio 
FROM Item, Produto 
WHERE Codigo = Produto_Codigo
GROUP BY Categoria
ORDER BY Categoria;

---------------------------------------
-- Liste o valor médio das NF
---------------------------------------
SELECT AVG(ValorTotal_NF) as Valor_Medio_NF
FROM (SELECT Numero, SUM(Preco_Unidade * Quantidade) as ValorTotal_NF
	  FROM Venda, Item
	  WHERE Numero = Venda_Numero
	  GROUP By Numero) Total_NF_IVW;
      
-------------------------------------------------------------------------------------------------------------
-- Crie uma visão que facilite listar o valor total da NF utilizando o número da NF ou cliente ou o vendedor.
-------------------------------------------------------------------------------------------------------------
CREATE VIEW Total_NF_VW as
SELECT Numero, Cli.Primeiro_Nome as Cliente, Emp.Primeiro_Nome as Vendedor, SUM(Preco_Unidade * Quantidade) as Valor_Total_NF
FROM Empregado Emp, Venda, Cliente Cli, Item
WHERE Matricula = Empregado_Matricula AND CPF = Cliente_CPF AND Numero = Venda_Numero
GROUP By Numero, Cli.Primeiro_Nome, Emp.Primeiro_Nome;

-------------------------------------------------------------------------------------------------------------
SELECT Numero as NF, Cliente, Valor_Total_NF
FROM Total_NF_VW
WHERE Cliente = 'Fernando';
-------------------------------------------------------------------------------------------------------------
SELECT Numero as NF, Vendedor, Valor_Total_NF
FROM Total_NF_VW
WHERE Vendedor = 'José';

-------------------------------------------------------------------------------------------------------------
-- Liste o nome do vendedor e a quantidade de vendas realizadas.
-------------------------------------------------------------------------------------------------------------
SELECT Vendedor, COUNT(*) as QTD_Vendas
FROM Total_NF_VW
GROUP BY Vendedor;