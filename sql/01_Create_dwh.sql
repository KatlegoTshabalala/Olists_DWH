IF NOT EXISTS (SELECT 1 FROM sys.databases WHERE name = N'Olists_dwh')
BEGIN
    CREATE DATABASE Olists_dwh;
END
GO