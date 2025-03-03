------------------------------------------------------------
-- Insere dados na tabela Departamento
------------------------------------------------------------
INSERT INTO Departamento (Codigo, Nome, UF)
VALUES (10, 'RH', 'RJ'),       
            (20, 'TI', 'RJ'),	   
            (30, 'Logística', 'DF'),	   
            (40, 'Financeiro', 'DF'),       
            (50, 'Venda', 'RS'),       
            (60, 'Pesquisa', 'RJ');

------------------------------------------------------------            
-- Insere dados na tabela Empregado
------------------------------------------------------------
INSERT INTO Empregado(Matricula, Primeiro_Nome, Familia_Nome, Salario, Departamento_Codigo)
VALUES (123, 'Igor', 'Pereira', 100.00, 10),        
(159, 'Denise', 'Moreno', 440.00, 40),       
(369, 'Marcelo', 'Neiva', 900.00, 40),       
(456, 'Ana', 'Oliveira', 200.00, 20),       
(789, 'Clara', 'Silva', 300.00, 30),       
(963, 'Deyse', 'Silva', 330.00, null);

------------------------------------------------------------
-- Cria a tabela Dep_Novo a partir da tabela Departamento
------------------------------------------------------------
CREATE TABLE Dep_Novo
AS SELECT Codigo, Nome, UF
FROM Departamento;

------------------------------------------------------------
-- Cria a tabela Dep
------------------------------------------------------------
CREATE TABLE Dep ( Codigo 	INT NOT NULL,
		           Nome 	VARCHAR(15) NOT NULL,
				   UF		CHAR(2) NOT NULL,
				   PRIMARY KEY (Codigo));
 
-----------------------------------------------------------------------------------                  
-- Insere dados na tabela Dep a partir da selação dos dados da tabela Departamento
-----------------------------------------------------------------------------------
INSERT INTO Dep (Codigo, Nome, UF)
SELECT Codigo, Nome, UF 
FROM Departamento

commit;

