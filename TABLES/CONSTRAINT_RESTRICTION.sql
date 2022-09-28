
use LEONARDO_TSQL	
go

-- CONSTRAINT RESTRICOES

--PK
--FK
--UNIQUE ( Restringe a ter um CPF ou um RG ou um UF) Segurança para nao ter nada Duplicado !

--> Cliente_DataInclusao DATETIME DEFAULT GETDATE()
--> Cliente_Ativo bit DEFAULT 1,


CREATE TABLE  Cliente(
Cliente_ID INT NOT NULL PRIMARY KEY IDENTITY (1,1),
Cliente_CPF CHAR(11) NOT NULL,
Cliente_RG CHAR(9) NOT NULL,
Cliente_UF CHAR(2) NOT NULL,
Cliente_Nome VARCHAR(30) NOT NULL,
CONSTRAINT ClienteCPFuq UNIQUE(Cliente_CPF),
CONSTRAINT ClienteUFRGuq UNIQUE(Cliente_RG,Cliente_UF)
)

use LEONARDO_TSQL
go
INSERT INTO Cliente (Cliente_CPF, Cliente_RG, Cliente_UF, Cliente_Nome, Cliente_Idade)
VALUES              ('12345678904', '987654325', 'SP', 'Leonardo', 20)

--> CHECK - Expressao BOOLEAN.
		--> Analise do Registro nas Instruções de INSERT e UPDATE

ALTER TABLE Cliente
ADD Cliente_Idade INT

ALTER TABLE Cliente
ADD CONSTRAINT ClienteIdadeck CHECK (Cliente_Idade <100)

--> DEFAULT

ALTER TABLE Cliente
ADD Cliente_Sobrenome VARCHAR(40)

ALTER TABLE Cliente
ADD CONSTRAINT SobrenomeDF DEFAULT 'Não Informado' FOR Cliente_Sobrenome

select * From Cliente