
-- alter uma tabela para reconfigurar a coluna Course_ID
--tornando a uma cluna nao-nula (Not Null) e Primary Key
--(chave primaria)

alter table Course alter column Course_ID INT not null
go

-- Adi��o de uma restricao para transformar a coluna em PK
alter Table course
add constraint Course_PK PRIMARY KEY (Course_ID)

--
/*
 ADD UMA NOVA RESTRICAO CHAMADA COURSE_PK
 O TIPO DA RTESTRI��O � "PRIMARY KEY"
 A COLUNA QUE VAI REPRESENTAR A CHAVE PRIMARIA DA NOSSA TABELA
*/