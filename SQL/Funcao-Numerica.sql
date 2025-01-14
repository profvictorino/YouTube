----------------------------------------------------------------------------------
-- Funções Numéricas.
----------------------------------------------------------------------------------
-- ABS(n) = retorna o valor absoluto de (n). 
SELECT ABS(10) FROM DUAL;
SELECT ABS(-10) FROM DUAL;

-- CEIL(n) = retorna o valor inteiro imediatamente superior ou igual a "n". 
SELECT CEIL(10.2) FROM DUAL;
SELECT CEIL(-10.2) FROM DUAL;

-- FLOOR(n) = retorna o valor inteiro imediatamente inferior ou igual a "n". 
SELECT FLOOR(10.2) FROM DUAL;
SELECT FLOOR(-10.2) FROM DUAL;

-- MOD(m, n) = retorna o resto resultante de dividir "m" por "n". 
SELECT MOD(5,3) FROM DUAL;
SELECT MOD(5,7) FROM DUAL;

-- POWER (m, expoente) = retorna a potência de um número. 
SELECT POWER(5,2) FROM DUAL;
SELECT POWER(5,3) FROM DUAL;

-- SQRT(n) = retorna a raiz quadrada de "n". 
SELECT SQRT(4) FROM DUAL;
SELECT SQRT(121) FROM DUAL;

-- SIGN= retorna -1 se o número for negativo, 1 se o número for positivo e 0 se o número for zero.
SELECT SIGN(4) FROM DUAL;
SELECT SIGN(-4) FROM DUAL;
SELECT SIGN(0) FROM DUAL;

-- ROUND(n) = retorna o número arredondado para m decimais.
SELECT ROUND(45.954, 2) FROM DUAL;
SELECT ROUND(45.955, 2) FROM DUAL;

-- TRUNC(n, m) = retorna o número truncado para m decimais.
SELECT TRUNCATE(45.954, 2) FROM DUAL;
SELECT TRUNCATE(45.955, 2) FROM DUAL;

-- COALESCE (col, valor )= substitui um valor nulo por outro valor. 
SELECT Nome, idade FROM pessoa;
SELECT Nome, COALESCE(idade,0) FROM pessoa;

