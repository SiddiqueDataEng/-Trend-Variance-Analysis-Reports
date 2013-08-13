/*
 * Trend Variance Analysis Reports
 * Project #101 - Complete Database Implementation
 * SQL Server 2008/2012
 * Technology: MSSQL, SSRS
 * Created: 2014
 */

USE master;
GO

IF EXISTS (SELECT name FROM sys.databases WHERE name = 'TrendReports')
BEGIN
    ALTER DATABASE TrendReports SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE TrendReports;
END
GO

CREATE DATABASE TrendReports
ON PRIMARY
(
    NAME = 'TrendReports_Data',
    FILENAME = 'C:\SQLData\TrendReports_Data.mdf',
    SIZE = 100MB,
    MAXSIZE = 5GB,
    FILEGROWTH = 10MB
)
LOG ON
(
    NAME = 'TrendReports_Log',
    FILENAME = 'C:\SQLData\TrendReports_Log.ldf',
    SIZE = 50MB,
    MAXSIZE = 1GB,
    FILEGROWTH = 5MB
);
GO

ALTER DATABASE TrendReports SET RECOVERY SIMPLE;
ALTER DATABASE TrendReports SET AUTO_UPDATE_STATISTICS ON;
GO

USE TrendReports;
GO

PRINT 'Database TrendReports created successfully';
PRINT 'Project: Trend Variance Analysis Reports';
PRINT 'Description: Historical trend comparison';
GO
