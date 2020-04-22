--Create Database TSQL

USE master;
GO
CREATE DATABASE NewDB_data
ON
( NAME = databasename_data,
      FILENAME = 'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\NewDB_data.mdf',
	  FILEGROWTH = 164MB)

LOG ON
( NAME = databasename_log,
    FILENAME = 'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\NewDB_log.ldf',
	FILEGROWTH = 164MB);
GO