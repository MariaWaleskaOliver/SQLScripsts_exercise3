

#<----------First Part------->

# Task 1, Q1. Textbook Exercise 3-06
# Selected vendor`s last name, contact and first name and sorted  it to fist and last name be displayed on Ascending order   
USE ap;
SELECT vendor_name,vendor_contact_last_name, vendor_contact_first_name
FROM vendors
ORDER BY 2,3;

# Task 1, Q2. Textbook Exercise 3-07
# Defined vender full name using conactination and displayed only the last name ending in A,B,C or E
USE ap;
SELECT CONCAT (vendor_contact_last_name , ' , ' , vendor_contact_first_name) AS vender_full_name
FROM vendors
WHERE(vendor_contact_last_name REGEXP '^A' OR vendor_contact_last_name REGEXP '^B' OR vendor_contact_last_name REGEXP '^C'OR vendor_contact_last_name REGEXP '^E')
ORDER BY vendor_contact_last_name; 


#Task 1, Q3. Textbook Exercise 3-08
# Created invoice's due date, total, 10% and plus 10% collumns ,displayed only the values between 500 and 1000 ind DES ORDER  
USE ap;
SELECT invoice_due_date, invoice_total, invoice_total * ( 1 + .1) AS invoice_ten, invoice_total + (invoice_total * ( 1 + .1)) AS invoice_plus
FROM invoices
WHERE (invoice_total BETWEEN 500 AND 1000)
ORDER BY invoice_due_date DESC;


#Task 1, Q4. Textbook Exercise 3-09
# Created the table and Returned the invoices greater the $50 in DESC order with a Limir of 5 balandes 
USE ap;
SELECT invoice_number, invoice_total, payment_total + credit_total AS payment_credit_total, (invoice_total - payment_total + credit_total) AS balance_due
FROM invoices
WHERE (invoice_total - payment_total + credit_total) > 50
ORDER BY balance_due DESC
LIMIT 5; 


#Task 1, Q5. Textbook Exercise 3-10
# Displayed only the null values
USE ap;
SELECT invoice_number, invoice_date, (invoice_total - payment_total + credit_total) AS balance_due, payment_date
FROM invoices
WHERE payment_date IS NULL;

#Task 1, Q6. Textbook Exercise 3-11
#displayed the current data in the proper format 
USE ap;
SELECT DATE_FORMAT(current_date, '%m-%d-%Y') as 'Current_Date';

#Task 1, Q7. Textbook Exercise 3-12
# Created a table with 3 collumns and made some calculations 
USE ap;
SELECT  50000  AS starting_principle ,  50000 * (6.5 /100) AS interest,  50000 + ( 50000 * (6.5 /100)) AS principle_plus_interest;


# <----------------- SECOND PART --------------------->


# Assignment 1: Q1. MGS Exercise 3-1
#Created a table and displayed the list_price in  a DESC order
USE my_guitar_shop;
SELECT  product_code, product_name, list_price, discount_percent
FROM products
ORDER BY list_price DESC;


# Assignment 1: Q1. MGS Exercise 3-3
#Created a table , set the list price BETWEEN 500 AND 2000 and displayed the date_added in a  DESC order
USE my_guitar_shop;
SELECT product_name, list_price, date_added
FROM products
WHERE list_price BETWEEN 500 AND 2000 
ORDER BY date_added DESC;


# Assignment 1: Q1. MGS Exercise 3-5
#Created a table set the item_total greater then 500 and orded item_total  in a DESC order 
USE my_guitar_shop;
SELECT item_id, item_price, discount_amount, quantity, item_price * quantity AS price_total, discount_amount * quantity AS discount_total ,
(item_price -discount_amount ) * quantity AS item_total
FROM order_items
WHERE (item_price -discount_amount ) * quantity > 500
ORDER BY item_total DESC;


# Assignment 1: Q1. MGS Exercise 3-6
#Created a table and only displayed the null values
USE my_guitar_shop;
SELECT  order_id, order_date, ship_date
FROM orders
WHERE ship_date IS NULL ;


# Assignment 1: Q1. MGS Exercise 3-8
#Created a table to make some calculations 
USE my_guitar_shop;
SELECT 100 AS price, 0.07 AS tax_rate, 100 * 0.07 AS tax_amount, 100 + (100 * 0.07) AS total;





