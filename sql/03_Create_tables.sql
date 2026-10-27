-- geolocation
IF NOT EXISTS (
    SELECT 1
    FROM [Olists_dwh].sys.tables t
    JOIN [Olists_dwh].sys.schemas s ON s.schema_id = t.schema_id
    WHERE s.name = N'bronze' AND t.name = N'geolocation'
)
BEGIN
    CREATE TABLE [Olists_dwh].[bronze].[geolocation] (
        [geolocation_zip_code_prefix] NVARCHAR(50),
        [geolocation_lat]             NVARCHAR(50),
        [geolocation_lng]             NVARCHAR(50),
        [geolocation_city]            NVARCHAR(100),
        [geolocation_state]           NVARCHAR(50),
        [wh_load_ts]                  DATETIME2     DEFAULT SYSDATETIME(),
        [dwh_source_file]             NVARCHAR(260),
        [dwh_batch_id]                INT
    );
END

-- order_items
IF NOT EXISTS (
    SELECT 1
    FROM [Olists_dwh].sys.tables t
    JOIN [Olists_dwh].sys.schemas s ON s.schema_id = t.schema_id
    WHERE s.name = N'bronze' AND t.name = N'order_items'
)
BEGIN
    CREATE TABLE [Olists_dwh].[bronze].[order_items] (
        [order_id]            NVARCHAR(50),
        [order_item_id]       NVARCHAR(50),
        [product_id]          NVARCHAR(50),
        [seller_id]           NVARCHAR(50),
        [shipping_limit_date] NVARCHAR(50),
        [price]               NVARCHAR(50),
        [freight_value]       NVARCHAR(50),
        [wh_load_ts]          DATETIME2     DEFAULT SYSDATETIME(),
        [dwh_source_file]     NVARCHAR(260),
        [dwh_batch_id]        INT
    );
END

-- order_payments
IF NOT EXISTS (
    SELECT 1
    FROM [Olists_dwh].sys.tables t
    JOIN [Olists_dwh].sys.schemas s ON s.schema_id = t.schema_id
    WHERE s.name = N'bronze' AND t.name = N'order_payments'
)
BEGIN
    CREATE TABLE [Olists_dwh].[bronze].[order_payments] (
        [order_id]             NVARCHAR(50),
        [payment_sequential]   NVARCHAR(50),
        [payment_type]         NVARCHAR(50),
        [payment_installments] NVARCHAR(50),
        [payment_value]        NVARCHAR(50),
        [wh_load_ts]           DATETIME2     DEFAULT SYSDATETIME(),
        [dwh_source_file]      NVARCHAR(260),
        [dwh_batch_id]         INT
    );
END

-- order_reviews
IF NOT EXISTS (
    SELECT 1
    FROM [Olists_dwh].sys.tables t
    JOIN [Olists_dwh].sys.schemas s ON s.schema_id = t.schema_id
    WHERE s.name = N'bronze' AND t.name = N'order_reviews'
)
BEGIN
    CREATE TABLE [Olists_dwh].[bronze].[order_reviews] (
        [review_id]               NVARCHAR(50),
        [order_id]                NVARCHAR(50),
        [review_score]            NVARCHAR(50),
        [review_comment_title]    NVARCHAR(500),
        [review_comment_message]  NVARCHAR(MAX),
        [review_creation_date]    NVARCHAR(50),
        [review_answer_timestamp] NVARCHAR(50),
        [wh_load_ts]              DATETIME2     DEFAULT SYSDATETIME(),
        [dwh_source_file]         NVARCHAR(260),
        [dwh_batch_id]            INT
    );
END

-- orders
IF NOT EXISTS (
    SELECT 1
    FROM [Olists_dwh].sys.tables t
    JOIN [Olists_dwh].sys.schemas s ON s.schema_id = t.schema_id
    WHERE s.name = N'bronze' AND t.name = N'orders'
)
BEGIN
    CREATE TABLE [Olists_dwh].[bronze].[orders] (
        [order_id]                      NVARCHAR(50),
        [customer_id]                   NVARCHAR(50),
        [order_status]                  NVARCHAR(50),
        [order_purchase_timestamp]      NVARCHAR(50),
        [order_approved_at]             NVARCHAR(50),
        [order_delivered_carrier_date]  NVARCHAR(50),
        [order_delivered_customer_date] NVARCHAR(50),
        [order_estimated_delivery_date] NVARCHAR(50),
        [wh_load_ts]                    DATETIME2     DEFAULT SYSDATETIME(),
        [dwh_source_file]               NVARCHAR(260),
        [dwh_batch_id]                  INT
    );
END

-- customers
IF NOT EXISTS (
    SELECT 1
    FROM [Olists_dwh].sys.tables t
    JOIN [Olists_dwh].sys.schemas s ON s.schema_id = t.schema_id
    WHERE s.name = N'bronze' AND t.name = N'customers'
)
BEGIN
    CREATE TABLE [Olists_dwh].[bronze].[customers] (
        [customer_unique_id]       NVARCHAR(50),
        [customer_zip_code_prefix] NVARCHAR(50),
        [customer_city]            NVARCHAR(100),
        [customer_state]           NVARCHAR(50),
        [wh_load_ts]               DATETIME2     DEFAULT SYSDATETIME(),
        [dwh_source_file]          NVARCHAR(260),
        [dwh_batch_id]             INT
    );
END

-- products
IF NOT EXISTS (
    SELECT 1
    FROM [Olists_dwh].sys.tables t
    JOIN [Olists_dwh].sys.schemas s ON s.schema_id = t.schema_id
    WHERE s.name = N'bronze' AND t.name = N'products'
)
BEGIN
    CREATE TABLE [Olists_dwh].[bronze].[products] (
        [product_id]                 NVARCHAR(50),
        [product_category_name]      NVARCHAR(100),
        [product_name_lenght]        NVARCHAR(50),
        [product_description_lenght] NVARCHAR(50),
        [product_photos_qty]         NVARCHAR(50),
        [product_weight_g]           NVARCHAR(50),
        [product_length_cm]          NVARCHAR(50),
        [product_height_cm]          NVARCHAR(50),
        [product_width_cm]           NVARCHAR(50),
        [wh_load_ts]                 DATETIME2     DEFAULT SYSDATETIME(),
        [dwh_source_file]            NVARCHAR(260),
        [dwh_batch_id]               INT
    );
END

-- sellers
IF NOT EXISTS (
    SELECT 1
    FROM [Olists_dwh].sys.tables t
    JOIN [Olists_dwh].sys.schemas s ON s.schema_id = t.schema_id
    WHERE s.name = N'bronze' AND t.name = N'sellers'
)
BEGIN
    CREATE TABLE [Olists_dwh].[bronze].[sellers] (
        [seller_id]              NVARCHAR(50),
        [seller_zip_code_prefix] NVARCHAR(50),
        [seller_city]            NVARCHAR(100),
        [seller_state]           NVARCHAR(50),
        [wh_load_ts]             DATETIME2     DEFAULT SYSDATETIME(),
        [dwh_source_file]        NVARCHAR(260),
        [dwh_batch_id]           INT
    );
END

-- product_category_name_translation
IF NOT EXISTS (
    SELECT 1
    FROM [Olists_dwh].sys.tables t
    JOIN [Olists_dwh].sys.schemas s ON s.schema_id = t.schema_id
    WHERE s.name = N'bronze' AND t.name = N'product_category_name_translation'
)
BEGIN
    CREATE TABLE [Olists_dwh].[bronze].[product_category_name_translation] (
        [product_category_name]         NVARCHAR(100),
        [product_category_name_english] NVARCHAR(100),
        [wh_load_ts]                    DATETIME2     DEFAULT SYSDATETIME(),
        [dwh_source_file]               NVARCHAR(260),
        [dwh_batch_id]                  INT
    );
END

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