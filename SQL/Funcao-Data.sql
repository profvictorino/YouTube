----------------------------------------------------------------------------------
-- Funções com Data.
----------------------------------------------------------------------------------
-- CURDATE() = retorna data atual.
SELECT CURDATE(); 

-- NOW() ou SYSDATE() = retorna data/hora atual.
SELECT NOW();
SELECT SYSDATE();

-- CURTIME() = retorna o horário atual;
SELECT CURTIME();

-- DATEDIFF(col1, col2) = retorna o intervalo entre duas datas.
SELECT DATEDIFF('2019-12-31','2019-01-01');

-- DATE_ADD(col, interval numero day) = adiciona dias a uma data.
SELECT DATE_ADD('2019-10-01', interval 30 day);

-- DAYNAME(col) = retorna o nome do dia.
SELECT DAYNAME('2019-10-01');

-- EXTRACT(YEAR FROM col) = retorna o ano, mês ou dia da data.
SELECT EXTRACT(YEAR FROM '2019-10-01');

-- DATE_FORMAT(col, GET_FORMAT(DATE, ‘EUR’)) = formatar data.
SELECT DATE_FORMAT('2019-10-01', GET_FORMAT(DATE, 'EUR'));

