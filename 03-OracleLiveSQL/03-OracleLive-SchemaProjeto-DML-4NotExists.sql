------------------------------------------------------------------------------------------------------------
-- Liste o Nome das Pessoas que participaram de pelo menos um projeto.
------------------------------------------------------------------------------------------------------------
SELECT Nome
FROM Pessoa
WHERE EXISTS (SELECT *
			  FROM Projeto
			  WHERE EXISTS (SELECT * 
							FROM Aloca
							WHERE CPF = Pessoa_CPF AND
								  Codigo = Projeto_Codigo));
                                      
------------------------------------------------------------------------------------------------------------
-- Liste o Nome das Pessoas que não participaram de projetos.
------------------------------------------------------------------------------------------------------------
SELECT Nome
FROM Pessoa
WHERE NOT EXISTS (SELECT *
				  FROM Projeto
                  WHERE EXISTS (SELECT * 
                                FROM Aloca
                                WHERE CPF = Pessoa_CPF AND
									  Codigo = Projeto_Codigo));

------------------------------------------------------------------------------------------------------------
-- Liste o Nome das Pessoas que não participaram de pelo menos um projeto.
------------------------------------------------------------------------------------------------------------
SELECT Nome
FROM Pessoa
WHERE EXISTS (SELECT *
			  FROM Projeto
			  WHERE NOT EXISTS (SELECT * 
								FROM Aloca
								WHERE CPF = Pessoa_CPF AND
									  Codigo = Projeto_Codigo));

------------------------------------------------------------------------------------------------------------
-- Liste o Nome das Pessoas que participaram de todos os projetos.
------------------------------------------------------------------------------------------------------------
SELECT Nome
FROM Pessoa
WHERE NOT EXISTS (SELECT *
				  FROM Projeto
                  WHERE NOT EXISTS (SELECT * 
                                    FROM Aloca
                                    WHERE CPF = Pessoa_CPF AND
									      Codigo = Projeto_Codigo));