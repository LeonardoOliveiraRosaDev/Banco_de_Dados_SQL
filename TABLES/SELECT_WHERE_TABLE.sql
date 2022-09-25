--Para ter certeza que esta no determinado banco de dados
use leonardo_alter
go -- use a linha de cima sempre antes de todos os codigos abaixo

--* ELE REPRESENTA TODAS AS COLUNAS DA TABELA
-- FROM - ORIGEM OU A PARTIR

select Course_ID,Course_Name
from course -- tabela
--VAI BUSCAR NA TABELA COURSE PROCURA O CURSO FLUTTER TRAS O NOME E O ID
where Course_ID >=1 and Course_ID <=3

--Course_ID between 1 and 3
--and Course_Name like 'J%'

-- LIKE 'A%' ou '%A' ou '%A%'
-- % QUALQUER COISA ANTES
-- % QUALQUER COISA DEPOIS
-- % NO MEIO QUE CONTENHA

-- VAI SELECIONAR TODOS MENOS O c# - C#SHARP
-- COURSE_ID <>7
-- COURSE_ID !=7
-- Course_id < 7
-- Course_name <> 'c#'
-- Course_name = 'Flutter'

