-- Log_customers
INSERT INTO [Olists_dwh].[etl].[load_log] (batch_id, source_file, target_table, rows_loaded, load_status)
VALUES (?, ?, N'bronze.customers', ?, 'Success');

-- Log_geolocation
INSERT INTO [Olists_dwh].[etl].[load_log] (batch_id, source_file, target_table, rows_loaded, load_status)
VALUES (?, ?, N'bronze.geolocation', ?, 'Success');

-- Log_order_items
INSERT INTO [Olists_dwh].[etl].[load_log] (batch_id, source_file, target_table, rows_loaded, load_status)
VALUES (?, ?, N'bronze.order_items', ?, 'Success');

-- Log_order_payments
INSERT INTO [Olists_dwh].[etl].[load_log] (batch_id, source_file, target_table, rows_loaded, load_status)
VALUES (?, ?, N'bronze.order_payments', ?, 'Success');

-- Log_order_reviews
INSERT INTO [Olists_dwh].[etl].[load_log] (batch_id, source_file, target_table, rows_loaded, load_status)
VALUES (?, ?, N'bronze.order_reviews', ?, 'Success');

-- Log_orders
INSERT INTO [Olists_dwh].[etl].[load_log] (batch_id, source_file, target_table, rows_loaded, load_status)
VALUES (?, ?, N'bronze.orders', ?, 'Success');

-- Log_products
INSERT INTO [Olists_dwh].[etl].[load_log] (batch_id, source_file, target_table, rows_loaded, load_status)
VALUES (?, ?, N'bronze.products', ?, 'Success');

-- Log_sellers
INSERT INTO [Olists_dwh].[etl].[load_log] (batch_id, source_file, target_table, rows_loaded, load_status)
VALUES (?, ?, N'bronze.sellers', ?, 'Success');

-- Log_product_category_name_translation
INSERT INTO [Olists_dwh].[etl].[load_log] (batch_id, source_file, target_table, rows_loaded, load_status)
VALUES (?, ?, N'bronze.product_category_name_translation', ?, 'Success');