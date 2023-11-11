
USE master;
GO

DROP DATABASE IF EXISTS StandardModel;
CREATE DATABASE StandardModel
ON
( NAME = StandardModel,
    FILENAME = '/var/opt/mssql/data/StandardModel.mdf',
    SIZE = 10,
    MAXSIZE = 50,
    FILEGROWTH = 5 )
LOG ON
( NAME = StandardModel_log,
    FILENAME = '/var/opt/mssql/log/StandardModel.ldf',
    SIZE = 5MB,
    MAXSIZE = 25MB,
    FILEGROWTH = 5MB ) ;
GO