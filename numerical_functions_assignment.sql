-- select * from orders

-- Write a query to convert all customer names to uppercase.
-- Select upper(Customer_name) as Capitals from orders

-- Extract the first 5 characters from Product_Name.
-- select substr(product_Name,1,5) as First_5_Char from orders 

-- Find the length of each Customer_Name.
-- select Customer_name,length(Customer_name) as Length_of_Charc from orders

-- Replace the word "Rice" with "Premium Rice" in Product_Name.


-- Remove leading and trailing spaces from Customer_Name.
-- select Customer_name,trim(Customer_name) as Remove_spaces from orders

-- Concatenate First_Name and Last_Name as Full_Name.
-- select First_Name,Last_Name, concat(First_Name,Last_Name) as Full_Name from hr.Employees 

-- Find customers whose names start with 'A'.
-- Select Customer_Name from orders Where Customer_name Like 'A%'

-- Extract the domain name from Email_ID
-- SELECT SUBSTR(email, INSTR(email,'@')+1) AS domain_name FROM hr.employees

-- Find the position of '@' in Email_ID.
-- select instr(email,'@') as Position  from hr.employees

-- Reverse the Product_Name.
-- select product_Name,reverse(Product_name) as reversed_name from orders

-- Convert the first letter of each word in Product_Name to uppercase.
-- select product_Name,initcap(Product_name) as Names from orders

-- Extract the last 3 characters from Order_ID.
-- select order_id ,substr(order_id,-3) as Last_charac from orders


-- Count how many times letter 'a' appears in Customer_Name.
-- select Customer_Name, length(CUSTOMER_NAME) - Length(replace(Customer_name,'a','')) as NO_OF_A_Times from ORDERS

-- Mask the last 4 digits of a phone number.
-- select Phone_Number,substr(Phone_Number,1,length(Phone_Number)-4) || '****' as Masked_Num from hr.employees

-- Split Full_Name into First_Name and Last_Name.
-- select Customer_name,substr(customer_name,1,instr(CUSTOMER_NAME,' ')) as First_name,substr(customer_name,instr(CUSTOMER_NAME,' ')) as Last_name from orders

-- Compare two columns ignoring case sensitivity.
-- select Customer_name,Product_Name from orders where Upper(Product_Name) = Upper(Customer_name)


-- Find customers whose name contains 'kumar'.
-- select Customer_name from orders where Lower(CUSTOMER_NAME) LIKE '%kumar%'

-- Pad Order_ID with leading zeros to make it 6 digits.
-- select order_id, LPAD(order_id,6,'0') as New_Order_id from orders


-- Extract substring between two characters.
-- Remove all special characters from Product_Code.