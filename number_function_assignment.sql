-- CREATE TABLE SALES_DATA (
--     ORDER_ID NUMBER,
--     PRODUCT_NAME VARCHAR2(50),
--     UNIT_PRICE NUMBER(10,4),
--     QUANTITY NUMBER,
--     DISCOUNT_PERCENT NUMBER,
--     PREVIOUS_SALES NUMBER,
--     CURRENT_SALES NUMBER
-- );

-- INSERT INTO SALES_DATA VALUES (101,'Laptop', 899.5678, 2, 10, 1500, 1800);
-- INSERT INTO SALES_DATA VALUES (102,'Mouse', 25.4999, 5, 5, 200, 260);
-- INSERT INTO SALES_DATA VALUES (103,'Keyboard', 45.7891, 3, 8, 300, 340);
-- INSERT INTO SALES_DATA VALUES (104,'Monitor', 199.9999, 1, 12, 800, 950);
-- INSERT INTO SALES_DATA VALUES (105,'Printer', 150.1234, 4, 15, 600, 720);
-- INSERT INTO SALES_DATA VALUES (106,'Speaker', -75.3456, 6, 7, 250, 310);
-- INSERT INTO SALES_DATA VALUES (107,'Webcam', 49.8765, 2, 3, 180, 200);
-- INSERT INTO SALES_DATA VALUES (108,'Headphones', 89.4567, 3, 9, 400, 450);

-- select * from sales_data

-- Round Unit_Price to 2 decimal places.
-- Select product_name,unit_price,round(unit_price,2) as round_off_price from sales_data

-- Find total sales per order.
-- select Order_id , product_name , quantity*unit_price as total_sales from sales_data

-- Calculate average order value.
-- select AVG(quantity*unit_price) as AVG_Order_value from sales_data

-- Find highest product price.
-- select max(unit_price) as max_value from SALES_DATA

-- Find lowest product price.
-- select min(unit_price) as min_value from SALES_DATA

-- Calculate percentage discount applied.
-- SELECT PRODUCT_NAME,UNIT_PRICE * DISCOUNT_PERCENT / 100 AS DISCOUNT_AMOUNT FROM SALES_DATA;

-- Find modulus of Quantity divided by 2.
-- Select PRODUCT_NAME,quantity,mod(quantity,2) as mod_quan from sales_data

-- Convert negative values to positive.
-- Select PRODUCT_NAME,abs(unit_price) as onlypositve from sales_data

-- Truncate price without rounding.
-- select product_name,unit_price,TRUNC(unit_price,2) as TRUNC_PRICE from sales_data


-- Find square root of total sales.
-- select Order_id , product_name , sqrt(abs(quantity*unit_price)) as SQRT_total_sales from sales_data


-- Calculate exponential value of a number.
-- select exp(2) as expo_value from sales_data

-- Calculate power of 2^5.
-- select power(2,5) as power_value dual
 
-- Find absolute difference between two prices.
-- select abs(max(unit_price)- min(unit_price)) as diff_prices from sales_data

-- Calculate sales growth percentage.
-- select sales_data.*,((current_sales - PREVIOUS_SALES)/PREVIOUS_SALES)*100 as growth_percentage from sales_data

-- Find random number between 1 and 100.
-- SELECT ROUND(DBMS_RANDOM.VALUE(1,100)) AS RANDOM_NUM FROM Orders

-- Divide total sales by number of orders.
-- SELECT sum(unit_price * Quantity)/count(order_Id) as avg_sales from sales_data

-- Find ceiling value of price.
-- select PRODUCT_NAME,unit_price,round(UNIT_PRICE) as round_off_values,ceil(unit_price) as celing_price from sales_data
-- ceil always rounds up


-- Find floor value of price.
-- SELECT PRODUCT_NAME, FLOOR(UNIT_PRICE) AS FLOOR_PRICE
-- FROM SALES_DATA;
-- floor always round you down

-- Convert decimal to integer.
-- SELECT PRODUCT_NAME, CAST(UNIT_PRICE AS INT) AS INTEGER_PRICE
-- FROM SALES_DATA;
-- cast converts one data_type to another


-- Calculate compound interest.
-- SELECT 1000 * POWER((1 + 0.05/1), 1*2) AS COMPOUND_INTEREST
-- FROM DUAL;