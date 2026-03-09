-- CREATE TABLE NULL_PRACTICE (
--     ORDER_ID NUMBER,
--     CUSTOMER_NAME VARCHAR2(50),
--     PRODUCT_NAME VARCHAR2(50),
--     PRICE NUMBER(10,2),
--     QUANTITY NUMBER,
--     ORDER_DATE DATE,
--     SHIP_DATE DATE
-- );


-- INSERT INTO NULL_PRACTICE VALUES (101, 'Rahul', 'Laptop', 55000, 1, DATE '2024-01-10', DATE '2024-01-12');

-- INSERT INTO NULL_PRACTICE VALUES (102, 'Anita', NULL, 1200, 2, DATE '2024-01-11', NULL);

-- INSERT INTO NULL_PRACTICE VALUES (103, NULL, 'Mouse', NULL, 3, NULL, NULL);

-- INSERT INTO NULL_PRACTICE VALUES (104, 'Karan', 'Keyboard', 800, 1, DATE '2024-01-15', DATE '2024-01-16');

-- INSERT INTO NULL_PRACTICE VALUES (105, '', 'Monitor', 15000, 1, DATE '2024-01-18', NULL);

-- INSERT INTO NULL_PRACTICE VALUES (106, 'Priya', NULL, 0, 5, NULL, NULL);

-- INSERT INTO NULL_PRACTICE VALUES (107, NULL, 'USB Cable', 200, 2, DATE '2024-01-20', DATE '2024-01-22');

-- INSERT INTO NULL_PRACTICE VALUES (108, 'Arjun', 'Speaker', NULL, 1, DATE '2024-01-21', NULL);

-- INSERT INTO NULL_PRACTICE VALUES (109, '', NULL, 4500, 1, DATE '2024-01-23', DATE '2024-01-25');

-- INSERT INTO NULL_PRACTICE VALUES (110, 'Meera', 'Webcam', NULL, 2, NULL, NULL);

-- select * from NULL_PRACTICE

-- Replace NULL price with 0.
-- select order_id,NVL(PRICE,0) from NULL_PRACTICE

-- Replace NULL Customer_Name with 'Unknown'.
-- select order_id,NVL(Customer_name,'unknown') from NULL_PRACTICE

-- Count NULL values in Product_Name.
-- Select count(*) as null_products_count from NULL_PRACTICE WHERE PRODUCT_NAME is null

-- Find rows where Order_Date is NULL.
-- select * from NULL_PRACTICE where Order_date is null

-- Use COALESCE to return first non-null value.
-- SELECT COALESCE(CUSTOMER_NAME,'No Name') AS CUSTOMER_NAME FROM NULL_PRACTICE;

-- Use NVL to replace NULL values.
-- select order_id,NVL(Customer_name,'unknown') from NULL_PRACTICE

-- Use IFNULL function.
-- SELECT ORDER_ID,IFNULL(PRICE,0) AS PRICE FROM NULL_PRACTICE;

-- Check if column is NULL.
-- Select * from NULL_PRACTICE where price is null

-- Check if column is NOT NULL.
-- Select * from NULL_PRACTICE where price is not null

-- Use NULLIF between two columns.
-- SELECT ORDER_ID,NULLIF(PRICE,0) AS PRICE_CHECK FROM NULL_PRACTICE;

-- Replace blank values with NULL.
-- SELECT ORDER_ID,NULLIF(CUSTOMER_NAME,' ') AS PRICE_CHECK FROM NULL_PRACTICE;

-- Count non-null values.
-- SELECT count(*) from NULL_PRACTICE where price is not null

-- Filter records where price is NULL or 0.
-- select * from NULL_PRACTICE where price is null or price = 0

-- Use CASE to handle NULL values.
-- SELECT ORDER_ID,
-- CASE
--     WHEN PRICE IS NULL THEN 'No Price'
--     ELSE 'Price Available'
-- END AS PRICE_STATUS
-- FROM NULL_PRACTICE;


-- Compare NULL values properly.
-- SELECT * FROM NULL_PRACTICE WHERE CUSTOMER_NAME IS NULL;

-- Handle NULL in aggregation.
-- SELECT SUM(NVL(PRICE,0)) AS TOTAL_PRICE FROM NULL_PRACTICE;

-- Find average excluding NULL values.
-- SELECT AVG(PRICE) AS AVG_PRICE FROM NULL_PRACTICE;

-- Find sum ignoring NULL values.
-- SELECT SUM(PRICE) AS TOTAL_PRICE FROM NULL_PRACTICE;

-- Identify columns containing NULL using metadata.
-- SELECT COLUMN_NAME
-- FROM USER_TAB_COLUMNS
-- WHERE TABLE_NAME = 'NULL_PRACTICE'
-- AND NULLABLE = 'Y';

-- Convert NULL to default system date.
-- SELECT ORDER_ID,
-- NVL(ORDER_DATE,SYSDATE) AS ORDER_DATE
-- FROM NULL_PRACTICE;