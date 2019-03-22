USE [BS1Context-b3593c0b-bb2a-4662-9260-6b0a35b55fe2]
GO

/****** Объект: Table [dbo].[books] Дата скрипта: 22.03.2019 14:39:04 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[books] (
    [id]     INT            IDENTITY (1, 1) NOT NULL,
    [author] NVARCHAR (MAX) NULL,
    [name]   NVARCHAR (MAX) NULL,
    [price]  INT            NOT NULL
);

