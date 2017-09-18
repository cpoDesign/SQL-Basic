-- ref to: https://stackoverflow.com/questions/133031/how-to-check-if-a-column-exists-in-sql-server-table
IF EXISTS(SELECT 1 FROM sys.columns 
          WHERE Name = N'columnName'
          AND Object_ID = Object_ID(N'schemaName.tableName'))
BEGIN
    -- Column Exists
END
