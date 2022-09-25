-- selecionar qual banco iremos utilizar
use LEONARDO_TSQL
go -- vai executar o que esta acima

--Quando aparecer erro em nome da tabela segurar CTRL+SHIFT+R

--Selecione a tabela "course" e faça alt+F1
--insert into course(Course_ID,Course_Name)
--values(1,'JavaScript')

--int numeros
--varchar = aspas simples

insert into course (Course_ID,Course_Name)
values(1,'JavaScript'),
	  (2,'TypeScript'),
	  (3,'TypeScript'),
	  (4, 'Angular'),
	  (5,'ReactNative'),
	  (6, 'Flutter'),
	  (7,'C# Sharp')