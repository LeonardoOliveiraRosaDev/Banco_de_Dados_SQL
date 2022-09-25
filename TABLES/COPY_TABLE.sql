--Para ter certeza que esta no determinado banco de dados
use leonardo_alter
go -- use a linha de cima sempre antes de todos os codigos abaixo

--> CRIAR UMA TABELA A PARTIR DE OUTRA
--> Uma copia da tabela Course com e a coluna Course_name com o nome de uma tabela New_Course
select Course_Name into New_Course 
from course 

select *
from New_course 