-- Write a query to find the name (first_name, last name), department ID and name of
-- all the employees.
-- 1
USE exercise_hr;
SELECT first_name,last_name,department_id,department_name
FROM employees
INNER JOIN departments USING (department_id);

/*
Write a query to display job title, employee name, and the difference between salary
of the employee and minimum salary for the job.
*/

-- 2


SELECT job_title,first_name, salary-min_salary
FROM employees
 Natural JOIN jobs;



-- 3
/*
Write a query to find the employee ID, job title, number of days between ending
date and starting date for all jobs in department 90.
*/


SELECT employee_id,job_title,end_date-start_date AS Days FROM job_history
 Natural JOIN jobs
WHERE department_id=90;

-- 4
/*
Write a query to get the department name and average salary in the department.
(Hint: Notice that the column headings are also properly outputted here)
*/

 SELECT AVG(salary),COUNT(*)
 FROM employees;

SELECT department_name,AVG (salary)
FROM department
INNER JOIN departments USING (department_id);



-- 5
/*
Write a query to display the department name, manager name, and city.

*/;
SELECT department_name,
AVERAGE_SALARY FROM departments GROUP BY DEPARTMENT_NAME;
SELECT department_name, Average_salary FROM departments ;





