IF OBJECT_ID(N'[Olists_dwh].[bronze].[customers]', N'U') IS NOT NULL
    TRUNCATE TABLE [Olists_dwh].[bronze].[customers];

IF OBJECT_ID(N'[Olists_dwh].[bronze].[geolocation]', N'U') IS NOT NULL
    TRUNCATE TABLE [Olists_dwh].[bronze].[geolocation];

IF OBJECT_ID(N'[Olists_dwh].[bronze].[order_items]', N'U') IS NOT NULL
    TRUNCATE TABLE [Olists_dwh].[bronze].[order_items];

IF OBJECT_ID(N'[Olists_dwh].[bronze].[order_payments]', N'U') IS NOT NULL
    TRUNCATE TABLE [Olists_dwh].[bronze].[order_payments];

IF OBJECT_ID(N'[Olists_dwh].[bronze].[order_reviews]', N'U') IS NOT NULL
    TRUNCATE TABLE [Olists_dwh].[bronze].[order_reviews];

IF OBJECT_ID(N'[Olists_dwh].[bronze].[orders]', N'U') IS NOT NULL
    TRUNCATE TABLE [Olists_dwh].[bronze].[orders];

IF OBJECT_ID(N'[Olists_dwh].[bronze].[products]', N'U') IS NOT NULL
    TRUNCATE TABLE [Olists_dwh].[bronze].[products];

IF OBJECT_ID(N'[Olists_dwh].[bronze].[sellers]', N'U') IS NOT NULL
    TRUNCATE TABLE [Olists_dwh].[bronze].[sellers];

IF OBJECT_ID(N'[Olists_dwh].[bronze].[product_category_name_translation]', N'U') IS NOT NULL
    TRUNCATE TABLE [Olists_dwh].[bronze].[product_category_name_translation];