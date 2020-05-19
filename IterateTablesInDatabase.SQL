/* Directions: Change the USE database, and enter the Stored Procedure Names activate SQLCMD Mode */

USE --"Database Name"

--Create Ordered Table from the selected database.

SELECT TABLE_NAME, ROW_NUMBER() OVER(ORDER BY TABLE_NAME) AS RowNumber
INTO #INFORMATION_SCHEMA_TEMP
FROM INFORMATION_SCHEMA.TABLES;
DECLARE @TotalDataBaseNumber INT
SET @TotalDataBaseNumber = (SELECT COUNT(*) FROM #INFORMATION_SCHEMA_TEMP)
DECLARE @beginTableNumber INT
SET @beginTableNumber = 1
WHILE (@beginTableNumber <= @TotalDataBaseNumber)
BEGIN
    :on error exit
    DECLARE @TableName2 VARCHAR(255);
    SET @TableName2 = (SELECT T.TABLE_NAME FROM #INFORMATION_SCHEMA_TEMP T
    WHERE T.RowNumber = @beginTableNumber)
    EXEC --"Stored Procedure Name"
    EXEC --"Stored Procedure Name"
    SET @beginTableNumber = @beginTableNumber + 1
END
GO
--SCRIPT FINISHES, DROP ALL TABLES
PRINT 'Script is Done Running'
--Drop Table
DROP TABLE #INFORMATION_SCHEMA_TEMP
--DROP TABLE #tableNumber
