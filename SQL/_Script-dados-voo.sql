Insert  Into Pessoa(CPF, Nome, Sexo)
Values('111', 'Ana', 'F' );
Insert  Into Pessoa(CPF, Nome, Sexo)
Values('222', 'Beto', 'F' );
Insert  Into Pessoa(CPF, Nome, Sexo)
Values('333', 'Caio', 'F' );
Insert  Into Pessoa(CPF, Nome, Sexo)
Values('444', 'Igor', 'F' );
Insert  Into Pessoa(CPF, Nome, Sexo)
Values('555', 'Edu', 'F' );

Insert  Into Piloto(Pessoa_CPF, Licenca)
Values('222', 'LC01' );
Insert  Into Piloto(Pessoa_CPF, Licenca)
Values('555', 'LC02' );

Insert  Into Passageiro(Pessoa_CPF, Categoria)
Values('333', 'Ouro' );
Insert  Into Passageiro(Pessoa_CPF, Categoria)
Values('444', 'Normal' );

Insert  Into Telefone(Numero, Passageiro_Pessoa_CPF)
Values(999555, '333' );
Insert  Into Telefone(Numero, Passageiro_Pessoa_CPF)
Values(222444, '444' );
Insert  Into Telefone(Numero, Passageiro_Pessoa_CPF)
Values(888555, '333' );

------------------------------------------------------------------------
-- Quando usar o oracle executar o comando abaixo para formatar as datas
-- ALTER SESSION SET NLS_DATE_FORMAT='YYYY-MM-DD'
------------------------------------------------------------------------

Insert  Into Voo(Numero, Data, Piloto_Pessoa_CPF)
Values(101, '2010-10-10', '222' );
Insert  Into Voo(Numero, Data, Piloto_Pessoa_CPF)
Values(202, '2011-11-11', '555' );
Insert  Into Voo(Numero, Data, Piloto_Pessoa_CPF)
Values(303, '2012-12-12', '555' );
Insert  Into Voo(Numero, Data, Piloto_Pessoa_CPF)
Values(404, '2013-01-13', '555' );

Insert  Into voo_has_passageiro(Passageiro_Pessoa_CPF, Voo_Numero)
Values('333', 101 );
Insert  Into voo_has_passageiro(Passageiro_Pessoa_CPF, Voo_Numero)
Values('444', 101 );
Insert  Into voo_has_passageiro(Passageiro_Pessoa_CPF, Voo_Numero)
Values('333', 202 );
Insert  Into voo_has_passageiro(Passageiro_Pessoa_CPF, Voo_Numero)
Values('333', 404 );

Commit
