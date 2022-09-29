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

