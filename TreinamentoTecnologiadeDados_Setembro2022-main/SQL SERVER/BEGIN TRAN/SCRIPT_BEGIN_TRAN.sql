
--> BEGIN TRAN - Uma transacao � aberta, onde o SGBD vai
--aguardar a confirmacao das altera��es.  

BEGIN TRAN

	DELETE FROM Desempenho_Dados
	WHERE Estudante_ID = 1	

--analise do que foi realizado
SELECT * FROM Desempenho_Dados

-->nunca esquecer de executar COMMIT ou ROLLBACK

COMMIT --> Confirma��o do que foi  realizado

ROLLBACK --> Retorna as informa��es como estava antes da transacao
          -- ser aberta.


