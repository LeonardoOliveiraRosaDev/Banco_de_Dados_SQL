
--Selecionar qual o Banco de dados iremos usar para criar a tabela
use Leonardo_ex01
go
--criando uma nova tabela.
create table livro  (
Livro_ID INT,
Livro_Name varchar(30),
Livro_Autor varchar(30)
);

create table Celular(
Celular_Name INT,
Celular_Model varchar(30),
Celular_Marca varchar(30)
);

create table Carro  (
Carro_Name INT,
Carro_Model varchar(30),
Carro_Marca varchar(30)
);
