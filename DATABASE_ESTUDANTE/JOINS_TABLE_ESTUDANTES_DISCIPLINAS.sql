USE Estudante
GO

---> VAMOS RETORNAR O ID DO ESTUDANTE , NOME ESTUDANTE, SOBRENOME ESTUDANTE, NOME DA DISCIPLINA E A DURACAO !
---> as serve para dar apelinos tipo passim Estudante_Nome, quando colocar Estudante_Nome as Nome , so vai trazer o nome !
---> Podendo ou nao utilizar o as ou nao assim Estudante_Nome Nome !


SELECT E.Estudante_ID as ID, 
       Estudante_Nome as Nome, 
       Estudante_Sobrenome as Sobrenome,
	   D.Disciplina_Nome,
	   D.Disciplina_Duracao
FROM Estudante_Dados E
---> Operando com o campo em comum entre as tabelas
INNER JOIN Disciplina_Dados as D ON (E.Estudante_ID = D.Estudante_ID)

-----------------------------------------------------------------------
SELECT E.Estudante_ID as ID, 
       Estudante_Nome as Nome, 
       Estudante_Sobrenome as Sobrenome,
	   D.Disciplina_Nome,
	   D.Disciplina_Duracao
FROM Estudante_Dados E
---> Traz todas as colunas Estudante ID , mesmo nao tendo nada junto com A Disciplina 
---> O que vem do Fron e Esquerda
LEFT JOIN Disciplina_Dados as D ON (E.Estudante_ID = D.Estudante_ID)

---------------------------------------------------------------------------------

SELECT E.Estudante_ID as ID, 
       Estudante_Nome as Nome, 
       Estudante_Sobrenome as Sobrenome,
	   D.Disciplina_Nome,
	   D.Disciplina_Duracao
FROM Estudante_Dados E
---> Como Prioridade traz a coluna da direita no caso Disciplina_Dados
RIGHT JOIN Disciplina_Dados as D ON (E.Estudante_ID = D.Estudante_ID)

-----------------------------------------------------------------------------------

SELECT E.*, D.*
FROM Estudante_Dados E
---> FAZ TODAS AS OCORRENCIAS DE TODAS AS TABELAS , TRAS TANTO O INNER QUANTO O LEFT E RIGHT
FULL JOIN Disciplina_Dados as D ON (E.Estudante_ID = D.Estudante_ID)

-----------------------------------------------------------------------------------

SELECT E.*, D.*
FROM Estudante_Dados E
---> TRAS TODAS AS LIGACOES POSSIVELS DE TODOS
CROSS JOIN Disciplina_Dados as D 

--------------------------------------------------------------------------------------
---> Nome Aluno, Sobrenome, Disciplina, Duração, Nota
SELECT E.Estudante_Nome, 
	   E.Estudante_Sobrenome, 
	   DI.Disciplina_Nome, 
	   D.Desempenho_Nota 
FROM Desempenho_Dados as D
INNER JOIN Estudante_Dados as E on (D.Estudante_ID = E.Estudante_ID)
INNER JOIN Disciplina_Dados as DI ON (E.Estudante_ID = DI.Estudante_ID)

---------------------------------------------------------------------------------------

SELECT e.Estudante_Nome, 
	   d.Disciplina_Nome
      -- de.Desempenho_Nota
FROM Estudante_Dados E
INNER JOIN Disciplina_Dados as D ON ( e.Estudante_ID = d.Estudante_ID)
--INNER JOIN Desempenho_Dados  AS DE ON (d.Disciplina_ID = de.Disciplina_ID)

SELECT * FROM Estudante_Dados
SELECT * FROM Disciplina_Dados
SELECT * FROM Desempenho_Dados