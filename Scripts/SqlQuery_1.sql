IF NOT EXISTS (SELECT * FROM sys.databases WHERE name = 'TaskManager')
BEGIN
    CREATE DATABASE TaskManager;
END
GO

USE TaskManager;
GO


IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'Users')
BEGIN
    CREATE TABLE Users (
        Id INT IDENTITY(1,1) PRIMARY KEY,
        Username NVARCHAR(50) NOT NULL,
        Email NVARCHAR(100) NOT NULL,
        PasswordHash NVARCHAR(255) NOT NULL,
        CONSTRAINT UQ_Users_Username UNIQUE (Username),
        CONSTRAINT UQ_Users_Email UNIQUE (Email)
    );
END
GO

IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'Tasks')
BEGIN
    CREATE TABLE Tasks (
        Id INT IDENTITY(1,1) PRIMARY KEY,
        Title NVARCHAR(100) NOT NULL,
        Description NVARCHAR(MAX) NULL,
        Status NVARCHAR(50) NOT NULL DEFAULT 'Pending',
        CreatedDate DATETIME NOT NULL DEFAULT GETDATE(),
        DueDate DATETIME NOT NULL,
        CONSTRAINT UQ_Tasks_Title UNIQUE (Title)
    );
END
GO