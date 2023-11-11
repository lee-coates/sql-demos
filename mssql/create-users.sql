USE [master]
GO

/* Be sure to add a password  */
CREATE LOGIN [feynman] WITH PASSWORD=N'', DEFAULT_DATABASE=[StandardModel], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO

USE [StandardModel]
GO

CREATE USER [feynman] FOR LOGIN [feynman] WITH DEFAULT_SCHEMA=[dbo]
GO

EXEC sp_addrolemember 'db_datareader', [feynman]
EXEC sp_addrolemember 'db_datawriter', [feynman]
GO