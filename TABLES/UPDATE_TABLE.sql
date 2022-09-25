--Para ter certeza que esta no determinado banco de dados
use leonardo_alter
go -- use a linha de cima sempre antes de todos os codigos abaixo

--* ELE REPRESENTA TODAS AS COLUNAS DA TABELA
-- FROM - ORIGEM OU A PARTIR

select *
from course 

--ATUALIZAR UM REGISTRO DE UMA TABELA
-- ATUALIZAR A COLUNA COURSE_NAME COLOCA O NOME QUE VOCE QUER 
update course set Course_Name = 'ReactJS' 
-- WHERE , QUAL ID SERA PARA ALTERAR  NO CASO COLUNA COURSE_ID = 2
where Course_ID = 2