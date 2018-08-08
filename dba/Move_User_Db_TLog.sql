-- ALTER DATABASE TO SET NEW PATH
ALTER DATABASE database_name MODIFY FILE ( NAME = logical_name, FILENAME = 'new_path\os_file_name' );
GO

-- OFFLINE THE DATABASE
ALTER DATABASE <DB_NAME> SET OFFLINE WITH ROLLBACK IMMEDIATE;
GO

-- MOVE THE TLOG BY HAND TO NEW PATH

-- ONLINE THE DATABASE
ALTER DATABASE <DB_NAME> SET ONLINE;
GO 

--Example

alter database Test set offline with rollback immediate;

alter database Test modify file (name = Test_log, filename = 'E:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\log\Test_log.ldf')

alter database Test set online;
