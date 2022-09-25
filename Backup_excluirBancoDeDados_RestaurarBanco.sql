
--use master
--alter database Leonardo_TSQL
--MODIFY NAME = LEONARDO_TSQL_ALTER

--BACKUP
--BACKUP DATABASE [Leonardo_ALTER] TO 
--DISK = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\Backup\Leonardo_ALTER.bak'

--EXCLUIR O BANCO
--USE master
--GO
--DROP DATABASE Leonardo_ALTER

--restore database Leonardo_ALTER
--from disk = 'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\Backup\Leonardo_ALTER.bak'
