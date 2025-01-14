----------------------------------------------------------------------------------
-- Funções Literais.
----------------------------------------------------------------------------------
-- CONCAT (col1, col2) = retorna “col1" concatenada com “col2". 
SELECT CONCAT(Primeiro_Nome, ' ', Familia_Nome)
from Empresa.Empregado;

-- SUBSTR (col, inicio, qtd)= Obtém parte de uma cadeia. 
SELECT SUBSTR(Primeiro_Nome, 1 ,3)
from Empresa.Empregado;

-- LENGTH(col) = retorna o número de caracteres da string.
SELECT Primeiro_Nome, LENGTH(Primeiro_Nome)
from Empresa.Empregado;

-- LOWER(col) = apresenta o resultado em minúsculas. 
SELECT Primeiro_Nome, LOWER(Primeiro_Nome)
from Empresa.Empregado;

-- UPPER (col)= apresenta o resultado em maiúsculas. 
SELECT Primeiro_Nome, UPPER(Primeiro_Nome)
from Empresa.Empregado;

-- REPLACE (col, cadeia1, cadeia2)= Substitui um caractere ou caracteres de uma cadeia de caracteres. 
SELECT REPLACE(Primeiro_Nome, 'Dey', 'Day' )
from Empresa.Empregado;

-- COALESCE (col, valor )= substitui um valor nulo por outro valor. 
SELECT COALESCE(Sexo, 'I' )
from Projeto.Pessoa;

-- LPAD (col, tam, ‘char’)= Adiciona caracteres à esquerda do resultado até que tenha uma certa longitude. 
SELECT Primeiro_Nome, LPAD(Primeiro_Nome, 10, '-' )
from Empresa.Empregado;

-- RPAD (col, tam, ‘char’)= Adiciona caracteres à direita do resultado  até que tenha uma certa longitude. 
SELECT Primeiro_Nome, RPAD(Primeiro_Nome, 10, '-' )
from Empresa.Empregado;
 


