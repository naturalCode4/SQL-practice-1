-- List all employee first and last names only that live in Calgary.

SELECT first_name, last_name
FROM employee
WHERE city = 'Calgary';

-- Find the birthdate for the youngest employee.

SELECT MAX(birth_date)
FROM employee;

-- Find the birthdate for the oldest employee.

SELECT min(birth_date)
FROM employee;

-- Find everyone that reports to Nancy Edwards (use the ReportsTo column).

SELECT *
FROM employee
WHERE reports_to = 2;

-- You will need to query the employee table to find the id for Nancy Edwards

Select employee_id
From employee
WHERE first_name = 'Nancy' AND last_name = 'Edwards';

-- Count how many people live in Lethbridge.

SELECT COUNT(*)
FROM employee
WHERE city = 'Lethbridge';