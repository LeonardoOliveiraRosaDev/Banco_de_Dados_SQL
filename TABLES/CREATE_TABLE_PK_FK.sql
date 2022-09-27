

-- Criar uma tabela students, colocando como chave primary Key e junto com uma chave estrangeira com amarracao para outra couluna id da outra tabela

create table Students_TSQL(
	Students_ID INT not null IDENTITY(1,1) PRIMARY KEY,
	--COLUNA QUE REPRESENTA A CHAVE ESTRANGEIRA
	Course_ID int not null,
	Students_Name varchar(30) not null,

	-- ADD A RESTRIÇÃO

	-- CONSTRAINT FK_COURSE = NOME DA RESTRICAO
	-- FOREIGN KEY = TIPO DE RESTRIÇÃO
	--(Course_ID) = NOME DA NOSSA COLUNA QUE SERA FK

	-- REFERENCES = QUAL TABELA POSSUI A PK (PRIMARY KEY)
	-- Course_Table_FK(Course_ID)  = qual coluna dessa tabela é a PK
	Constraint FK_Course FOREIGN KEY (Course_ID)
			References Course_Table_PK (Course_ID)
			)