IF OBJECT_ID(N'[__EFMigrationsHistory]') IS NULL
BEGIN
    CREATE TABLE [__EFMigrationsHistory] (
        [MigrationId] nvarchar(150) NOT NULL,
        [ProductVersion] nvarchar(32) NOT NULL,
        CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY ([MigrationId])
    );
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200619000926_MigracionInicial')
BEGIN
    CREATE TABLE [Usuario] (
        [ID] int NOT NULL IDENTITY,
        [Nombre] nvarchar(30) NOT NULL,
        [Telefono] nvarchar(8) NOT NULL,
        [Email] nvarchar(max) NOT NULL,
        CONSTRAINT [PK_Usuario] PRIMARY KEY ([ID])
    );
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20200619000926_MigracionInicial')
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20200619000926_MigracionInicial', N'3.1.5');
END;

GO

