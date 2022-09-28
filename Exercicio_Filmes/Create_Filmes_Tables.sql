
--> Criar DataBase Filmes
create database Filmes
  use Filmes
  go

--> Criar Table  para definir os campos que definirão os dados sobre os Filmes
CREATE TABLE Filmes_Table (
	Filme_ID int,
	Filme_nome varchar(35),
	Elenco_Principal varchar(35),
	Diretor_Filme varchar(35),
	Roterista_Filme varchar(35),
	Data_lancamento date
)

-->Criar outra tabela para armazenar dados sobre a produtora do Filme

--> drop table Produtora_Filme

CREATE TABLE Produtora_Filme(
	Filme_ID int Not Null,
	Produtora_nome varchar(30),
	Orcamento_Filme int,
	Produtores_nome varchar(70)
)

use Filmes
go
--> Criar Chave Primaria tabela Principal ( PRIMARY KEY TABLE)
ALTER TABLE Filmes_Table ALTER COLUMN Filme_ID INT NOT NULL 


--> ADICAO DE UMA RESTRICAO PARA TRANSFORMAR A COLUNA EM PK

ALTER TABLE Filmes_Table 
ADD CONSTRAINT Filmes_Table_PK PRIMARY KEY (Filme_ID)

use Filmes
go
--> Insert dados na tabela Filme
  INSERT INTO Filmes_Table (Filme_nome, Elenco_Principal, Diretor_Filme, Roterista_Filme, Data_lancamento)
  VALUES ('Filme 1', 'Ator 1 , Ator 2, Atora 3, Atora 4','Diretor do Filme 1', 'Roterista Filme 1','2020-01-10'),
		 ('Filme 2', 'Ator 1 , Ator , Atora 3, Atora 4','Diretor do Filme 1', 'Roterista Filme 1','2018-05-25')
		
use Filmes
go
--> Criar Chave Estrangeira para a Tabela Produtora_Filme
ALTER TABLE Produtora_Filme
ADD CONSTRAINT FK_Produtora_Filme FOREIGN KEY (Filme_ID) 

REFERENCES Filmes_Table(Filme_ID)

use Filmes
go
--> Podemos Renomear o nome de uma coluna
sp_rename 'Produtora_Filme.Produtora_ID', 'Filme_ID'


use Filmes
go
--> Insert Dados Na tabela Produtoras filmes 
INSERT INTO Produtora_Filme (Filme_ID, Produtora_nome, Orcamento_Filme, Produtores_nome )
VALUES (1,'Produtora ONE', 10.0000,'Produtor 1, Produtor 2, Produtor 3'),
	   (2,'Produtora Two' , 9.000, 'Produtor 1, Produtor 2, Produtor 3, Produtor 4')


select * from Filmes_Table

Select * From Filmes_Table
where Filme_nome = 'Filme 2'