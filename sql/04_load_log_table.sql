IF NOT EXISTS (SELECT 1 FROM [Olists_dwh].sys.tables t
               JOIN [Olists_dwh].sys.schemas s ON s.schema_id = t.schema_id
               WHERE s.name = N'etl' AND t.name = N'load_log')
BEGIN
    CREATE TABLE [Olists_dwh].[etl].[load_log] (
        load_id      INT IDENTITY(1,1) PRIMARY KEY,
        batch_id     INT           NOT NULL,
        source_file  NVARCHAR(500) NOT NULL,
        target_table NVARCHAR(256) NOT NULL,
        rows_loaded  INT           NULL,
        load_status  VARCHAR(20)   NOT NULL,
        load_end     DATETIME2     NOT NULL DEFAULT SYSDATETIME()
    );
END
