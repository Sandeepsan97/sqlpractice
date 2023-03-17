-- SQL is case-insensitive

/*
We will follow:
UPPERCASE: keywords
lowercase: non-keywords
*/

USE store;

use store;

SHOW TABLES;

USE exercise_hr;

SHOW TABLES;

USE store;

SELECT *
FROM customers;

/*
Get all data from a table name.
SELECT *
FROM <table-name> 

*/

SELECT *
FROM customers
ORDER BY first_name;

-- ORDER BY <column-name> ASC/DESC

USE exercise_hr;

SELECT *
FROM employees;


-- Solution for 2nd question
SELECT employee_id, first_name, last_name, salary
FROM employees
ORDER BY salary ASC;

SELECT 1, 2;

SELECT 1+2;

SELECT 100 - 50 / 2;

/*
Order: BODMAS
() 
/
*
+
-
*/

SELECT 100 - 50 / 2 AS 'value';

/*
Syntax for SELECT statement:
SELECT <column_1>, <column_2>, ... , <column_n>
FROM <table_name>;

SELECT *	-- for all columns
FROM <table_name>;
*/

USE store;

SELECT first_name
FROM customers;

SELECT first_name, last_name, birth_date 
FROM customers;

SELECT first_name, last_name, points, points + 10  
FROM customers;

SELECT first_name, last_name, points, points + 10  
FROM customers;

SELECT first_name, last_name, points, points + 10  
FROM customers;

SELECT first_name, last_name, points, points + 10  
FROM customers;

SELECT first_name, last_name, points, points + 10 AS 'new points'
FROM customers;

SELECT first_name, last_name, points, points + 10 AS new_points
FROM customers;

-- Error
SELECT first_name, last_name, points, points + 10 AS new points
FROM customers;

SELECT 171*214+625;

USE exercise_hr;

SELECT first_name AS 'First Name', last_name AS 'Last Name'
FROM employees;

SELECT first_name, last_name, salary, salary * 15 / 100 AS PF
FROM employees;

USE store;

SELECT state
FROM customers;

-- All values of state are unique
SELECT DISTINCT state
FROM customers;


USE store;

SELECT * 
FROM customers;

/*
-- Comparison operators:
-- >
-- >=
-- <
-- <=
-- =
-- != or <>

*/

SELECT *
FROM customers
WHERE state = 'FL';

SELECT *
FROM customers
WHERE points > 3000;

SELECT *
FROM customers
WHERE birth_date >= '1990-01-01';


SELECT *
FROM customers
WHERE points > 3000 AND birth_date >= '1990-01-01';


SELECT *
FROM customers
WHERE points > 3000 OR birth_date >= '1990-01-01';

SELECT *
FROM customers
WHERE birth_date > '1889-01-01' OR points > '1000' AND state = 'VA';

-- born after 1990 and points > 1000 or state = 'FL'
SELECT *
FROM customers
WHERE birth_date > '1990-01-01' AND points > 1000 OR state = 'FL';

SELECT *
FROM customers
WHERE state != 'FL';


SELECT *
FROM customers
WHERE NOT (state = 'FL');

USE store;

-- customers living in FL or VA or GA
SELECT *
FROM customers
WHERE state = 'FL' OR state = 'VA' OR state = 'GA';


-- customers living in FL or VA or GA
SELECT *
FROM customers
WHERE state IN ('FL', 'GA', 'VA');

-- Return products with
-- quantity in stock equal to 49, 38, 72
SELECT *
FROM products
WHERE quantity_in_stock IN (49, 38, 72);


/*
Order of logical operators:
- NOT
- AND
- OR
*/

-- customers have points in the range of 3000 and 10000 
-- (range: points starting from 3000 and ending at 10000)
SELECT *
FROM customers
WHERE points > 3000 AND points < 10000;

SELECT *
FROM customers
WHERE points BETWEEN 3000 AND 10000;

-- Return customers born
-- between 1/1/1990 and 1/1/2000
SELECT *
FROM customers
WHERE birth_date BETWEEN '1990-01-01' AND '2000-01-01';

SELECT *
FROM customers
WHERE last_name LIKE 'MacCaffrey';

-- last_names that contain 'age'
SELECT *
FROM customers
WHERE last_name LIKE '%age%';

-- last_names that end with 'y'
SELECT *
FROM customers
WHERE last_name LIKE '%y';


-- last_names that start with 'b'
SELECT *
FROM customers
WHERE last_name LIKE 'b%';


--  Get the customers whose
-- 1. addresses contain TRAIL or AVENUE
SELECT *
FROM customers
WHERE address LIKE '%TRAIL%' OR address LIKE '%AVENUE%';


-- 2. phone numbers end with 9
-- 3. phone numbers do not end with 9
SELECT *
FROM customers
WHERE phone NOT LIKE '%9';

SELECT *
FROM customers
WHERE NOT phone LIKE '%9';

USE store;

SELECT *
FROM customers
WHERE last_name LIKE '_y';

-- last_names ending with y and having 6 letters
SELECT *
FROM customers
WHERE last_name LIKE '_____y';

-- last_names starting with b, ending with y and having 6 letters
SELECT *
FROM customers
WHERE last_name LIKE 'b____y';

SELECT *
FROM customers
WHERE last_name LIKE 'b%y';

SELECT *
FROM customers
WHERE last_name REGEXP 'age';


SELECT *
FROM customers
WHERE last_name REGEXP '^Mac';


SELECT *
FROM customers
WHERE last_name REGEXP 'field$';


SELECT *
FROM customers
WHERE last_name REGEXP '^Mac|field$|rose';

/*
^ - starts with
$ - ends with
| - logical OR
[.] - set 
*/

-- Practice questions for self-study:
-- USE exercise_hr;
-- Write a query to display the first_name of all employees who have both "b" and "c" in their first name.
-- Write a query to display the last name of employees whose names have exactly 6 characters.
-- Write a query to display the last name of employees having 'e' as the third character.
-- Write a query to display the jobs/designations available in the employees table.
-- Verify the correct answers by discussing within your squads
USE exercise_hr;
SELECT *
FROM employees
WHERE first_name REGEXP "b|c";
USE exercise_hr;
SELECT *
FROM employees
WHERE last_name LIKE '______';
USE exercise_hr;
SELECT *
FROM employees
WHERE last_name LIKE "__e%";
SELECT DISTINCT job_id
FROM employees;




USE store;

SELECT *
FROM customers
WHERE last_name REGEXP '[bc]e';


-- customers having last names contains ff or qf or cf.

-- Write a query to display the first_name of all employees who have both "b" and "c" in their first name.
USE exercise_hr;

SELECT *
FROM employees
WHERE first_name LIKE "%b%" AND first_name LIKE "%c%";

SELECT *
FROM employees
WHERE first_name REGEXP 'b' AND first_name REGEXP 'c';


USE store;
-- Get the orders that are not shipped
SELECT *
FROM orders
WHERE status = 1;

SELECT *
FROM orders
WHERE shipper_id = NULL;  -- NULL is not comparable

SELECT *
FROM orders
WHERE shipper_id IS NULL; 

-- Get the orders that are shipped
SELECT *
FROM orders
WHERE NOT shipper_id IS NULL;

SELECT *
FROM orders
WHERE shipper_id IS NOT NULL;

-- Show first 3 rows

SELECT *
FROM orders
WHERE shipper_id IS NOT NULL
LIMIT 3;

-- Show rows 2 to 4

SELECT *
FROM orders
WHERE shipper_id IS NOT NULL
LIMIT 1,3;

-- Find last 5 customers
SELECT *
FROM customers
ORDER BY customer_id DESC
LIMIT 5;

SELECT *
FROM customers
LIMIT 5, 5;

-- Get first 3 customer

USE store;
SELECT *
FROM customers
LIMIT 3;


--  Get top 3 loyal customer
 USE store;
SELECT *
FROM customers
ORDER BY points DESC
LIMIT 3;


EXPLAIN
SELECT * 
FROM customers;

USE exercise_hr;
EXPLAIN
SELECT * 
FROM employees;



USE exercise_hr;
SELECT *
FROM employees
WHERE first_name="Lex";

USE exercise_hr;
EXPLAIN SELECT *
FROM employees
WHERE first_name="Lex";

USE exercise_hr;
EXPLAIN SELECT *
FROM employees

-- INDEXS
WHERE last_name="De Haan";
-- If the argument is greater than the number of customers, then we get all the customers.
-- Pagination
-- page 1: 1-3
-- page 2: 4-6
-- page 3: 7-9
-- Find the query for results on page 2
SELECT * 
FROM employees
ORDER BY last_name="De Haan";






/*

 Please solve these queries during your self-learning session today.
Write a query to get the total salaries payable to employees.
Write a query to get the maximum and minimum salary from employees table.
Write a query to get the average salary and number of employees in the employees table.
Write a query to get the number of employees working with the company.
Write a query to get the number of distinct jobs available in the employees table.
Write a query get all first name from employees table in upper case.
Write a query to get the first 3 characters of first name from employees table.
Write a query to get the names ('<first name> <last name>') (for example Ellen Abel, Sundar Ande etc.) as a single column of all the employees from employees table.
Write a query to get the length of the employee names ('<first name> <last name>') from employees table.
Write a query to get monthly salary (round 2 decimal places) of each and every employee
Note : Assume the salary field provides the 'annual salary' information.
*/
-- 1
USE exercise_hr;
SELECT SUM(salary)
 FROM employees;
    -- 2
 
 SELECT MAX(salary), MIN(salary)
 FROM employees;
 
 
 -- 3
 SELECT AVG(salary),COUNT(*)
 FROM employees;
 -- 4
 
 SELECT COUNT(*)
 FROM employees;
 
  -- 5
  SELECT COUNT(DISTINCT job_id)
  FROM employees;

 
   -- 6
     SELECT UPPER(first_name)
  FROM employees;
  
     -- 7
     SELECT SUBSTRING(first_name,1,3)
  FROM employees;

  
     -- 8
     SELECT CONCAT(first_name," ",last_name)
  FROM employees;

     -- 9
     SELECT first_name,last_name, LENGTH(first_name)+LENGTH(last_name)
  FROM employees;
  
     -- 10
 SELECT first_name, last_name,ROUND(salary/12/2) AS "Monthly Salary"
  FROM employees;
  
-- find employee names of all th eemployees working in the 'IT' departmentUSE exercise_hr
-- SELECT first_name, last_name 
-- FROM employees
-- WHERE department_id 
-- IN (SELECT department_id FROM departments WHERE department_name='IT');
USE exercise_hr;



SELECT department_id
FROM departments
WHERE department_name="IT";


SELECT employee_id,first_name,department_id
FROM employees
WHERE department_id=60;


USE exercise_hr;


-- USING JOIN
SELECT *
FROM employees INNER JOIN departments
ON employees.department_id=departments.department_id;


SELECT employee_id,e.department_id,d.department_id,d.department_name
FROM 





/*
Write a query to find the name (first_name, last name), department ID and name of all the employees.
Write a query to find the name (first_name, last_name), job, department ID and name of the employees who works in London.
Write a query to find the employee id, name (last_name) along with their manager_id and name (last_name).
Write a query to find the name (first_name, last_name) and hire date of the employees who was hired after 'Jones'.
Write a query to get the department name and number of employees in the department. (Requires GROUP BY)
Write a query to find the employee ID, job title, number of days between ending date and starting date for all jobs in department 90.
*/

SELECT employee_id,first_name,last_name,e.department_id
FROM employees AS e INNER JOIN departments AS d
ON e.department_id





