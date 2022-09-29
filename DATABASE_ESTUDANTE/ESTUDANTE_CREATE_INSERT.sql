
--->  JOINS


---> VAMOS CRIAR UM BANCO DE DADOS

CREATE DATABASE	Estudante

USE Estudante
GO

--> CRIAR TABELA PARA OS DADOS DO ESTUDANTE colocando Estudante_ID como Chave PRimaria

CREATE TABLE Estudante_Dados(
Estudante_ID INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
Estudante_Nome VARCHAR(40) NOT NULL,
Estudante_Sobrenome VARCHAR(40) DEFAULT NULL,
Estudante_Telefone NUMERIC,
Estudante_Email VARCHAR(50),
Estudante_DataNasc DATE
)
GO

---> CRIAR UMA TABELA DISCIPLINAS_DADOS

CREATE TABLE Disciplina_Dados(
Disciplina_ID INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
Estudante_ID INT,
Disciplina_Nome VARCHAR(30) NOT NULL,
Disciplina_Mensalidade DECIMAL (18,3),
Disciplina_Duracao INT,

CONSTRAINT Estudante_FK FOREIGN KEY (Estudante_ID)
REFERENCES Estudante_Dados(Estudante_ID)
)
GO

---> CRIAR OS INSERT , INSERIR OS DADOS NA TABELA ESTUDANTE

INSERT INTO Estudante_Dados(Estudante_Nome,Estudante_Sobrenome, Estudante_Telefone, Estudante_Email,Estudante_DataNasc)
VALUES ('Amanda','Palhares',112233456,'email1@email.com','2010-04-10'),
       ('Anderson','Freitas',116464372,'email2@email.com','2010-04-10'),
       ('Eduardo','Yoshikawa',1133433456,'email3@email.com','2010-04-10'),
	    ('Kauane','Antonini',11678456,'email4@email.com','2010-04-10'),
       ('Leonardo','Oliveira',1122678456,'email5@email.com','2010-04-10'),
       ('Luiz','Rabello',113364785,'email6@email.com','2010-04-10')



---> SELECT * FROM Estudante_Dados

INSERT INTO Disciplina_Dados(Estudante_ID,Disciplina_Nome,Disciplina_Mensalidade,Disciplina_Duracao)
	VALUES  (1,'JavaScript',256.32,40),
			(2,'Intro C#',456.32,100),
			(3,'ASP .NET CORE',378.32,100),
			(1,'Tec Dados',987.32,32),
			(5,'Inovação',345.32,32),
			(4,'Angular',234.32,40),
			(3,'SQL',123.32,80),
			(1,'SQL',123.32,80)

---> SELECT * FROM Disciplina_Dados