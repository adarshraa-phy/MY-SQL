drop database payroll_system;
create database payroll_system;
use payroll_system;
create table employee(employee_id int primary key, employee_name varchar(100),department varchar(100),
position varchar(100), hire_date date, base_salary decimal(10,2));
create table attendance (attendance_id int primary key, employee_id int,attendance_date date,status enum ('Present','Absent','Leave'),
foreign key (employee_id) references employee(employee_id));
create table salaries(salary_id int primary key,employee_id int, base_salary decimal(10,2),bonus decimal(10,2),deductions decimal (10,2),
month varchar(20), year int,foreign key (employee_id) references employee(employee_id));
create table payroll(payroll_id int,employee_id int,total_salaries decimal (10,2), payment_date date,
foreign key (employee_id) references employee(employee_id));
INSERT INTO employee (employee_id, employee_name, department, position, hire_date, base_salary) VALUES
(1, 'Emma Johnson', 'Human Resources', 'HR Manager', '2019-04-12', 72000.00),
(2, 'Liam Smith', 'Engineering', 'Software Engineer', '2021-07-23', 85000.00),
(3, 'Olivia Brown', 'Marketing', 'Digital Marketing Specialist', '2020-03-15', 64000.00),
(4, 'Noah Davis', 'Finance', 'Accountant', '2018-11-02', 69000.00),
(5, 'Ava Wilson', 'Engineering', 'DevOps Engineer', '2022-05-09', 90000.00),
(6, 'William Miller', 'Sales', 'Sales Representative', '2020-09-18', 58000.00),
(7, 'Sophia Anderson', 'Customer Support', 'Support Specialist', '2021-02-27', 46000.00),
(8, 'James Taylor', 'IT', 'System Administrator', '2017-08-30', 75000.00),
(9, 'Isabella Thomas', 'Design', 'Graphic Designer', '2019-01-14', 61000.00),
(10, 'Benjamin Moore', 'Engineering', 'Data Scientist', '2022-10-05', 95000.00),
(11, 'Mia Jackson', 'Finance', 'Financial Analyst', '2020-12-10', 73000.00),
(12, 'Lucas White', 'Operations', 'Operations Manager', '2018-06-25', 88000.00),
(13, 'Charlotte Harris', 'Engineering', 'Frontend Developer', '2021-09-14', 83000.00),
(14, 'Henry Martin', 'Marketing', 'Content Strategist', '2019-05-21', 68000.00),
(15, 'Amelia Thompson', 'Engineering', 'Backend Developer', '2022-03-08', 87000.00),
(16, 'Ethan Garcia', 'Sales', 'Account Executive', '2021-01-11', 62000.00),
(17, 'Harper Martinez', 'Human Resources', 'Recruiter', '2020-07-19', 56000.00),
(18, 'Michael Robinson', 'IT', 'Network Engineer', '2019-11-04', 78000.00),
(19, 'Evelyn Clark', 'Customer Support', 'Call Center Agent', '2023-02-16', 42000.00),
(20, 'Alexander Lewis', 'Research', 'Data Analyst', '2021-06-03', 72000.00);
INSERT INTO attendance (attendance_id, employee_id, attendance_date, status) VALUES
(1, 1, '2025-11-01', 'Present'),
(2, 2, '2025-11-01', 'Absent'),
(3, 3, '2025-11-01', 'Present'),
(4, 4, '2025-11-01', 'Present'),
(5, 5, '2025-11-01', 'Leave'),
(6, 6, '2025-11-01', 'Present'),
(7, 7, '2025-11-01', 'Present'),
(8, 8, '2025-11-01', 'Absent'),
(9, 9, '2025-11-01', 'Present'),
(10, 10, '2025-11-01', 'Present'),

(11, 1, '2025-11-02', 'Present'),
(12, 2, '2025-11-02', 'Present'),
(13, 3, '2025-11-02', 'Leave'),
(14, 4, '2025-11-02', 'Present'),
(15, 5, '2025-11-02', 'Present'),
(16, 6, '2025-11-02', 'Absent'),
(17, 7, '2025-11-02', 'Present'),
(18, 8, '2025-11-02', 'Present'),
(19, 9, '2025-11-02', 'Present'),
(20, 10, '2025-11-02', 'Present');
INSERT INTO salaries (salary_id, employee_id, base_salary, bonus, deductions, month, year) VALUES
(1, 1, 72000.00, 2500.00, 500.00, 'October', 2025),
(2, 2, 85000.00, 3200.00, 800.00, 'October', 2025),
(3, 3, 64000.00, 1500.00, 300.00, 'October', 2025),
(4, 4, 69000.00, 2000.00, 650.00, 'October', 2025),
(5, 5, 90000.00, 3500.00, 900.00, 'October', 2025),
(6, 6, 58000.00, 1000.00, 200.00, 'October', 2025),
(7, 7, 46000.00, 700.00, 150.00, 'October', 2025),
(8, 8, 75000.00, 2200.00, 600.00, 'October', 2025),
(9, 9, 61000.00, 1200.00, 350.00, 'October', 2025),
(10, 10, 95000.00, 4200.00, 1100.00, 'October', 2025),
(11, 11, 73000.00, 2000.00, 450.00, 'October', 2025),
(12, 12, 88000.00, 2500.00, 700.00, 'October', 2025),
(13, 13, 83000.00, 2700.00, 550.00, 'October', 2025),
(14, 14, 68000.00, 1800.00, 400.00, 'October', 2025),
(15, 15, 87000.00, 2900.00, 850.00, 'October', 2025),
(16, 16, 62000.00, 1400.00, 300.00, 'October', 2025),
(17, 17, 56000.00, 1000.00, 200.00, 'October', 2025),
(18, 18, 78000.00, 2500.00, 500.00, 'October', 2025),
(19, 19, 42000.00, 600.00, 100.00, 'October', 2025),
(20, 20, 72000.00, 2100.00, 400.00, 'October', 2025);
INSERT INTO payroll (payroll_id, employee_id, total_salaries, payment_date) VALUES
(1, 1, 74000.00, '2025-10-31'),
(2, 2, 87400.00, '2025-10-31'),
(3, 3, 65200.00, '2025-10-31'),
(4, 4, 70400.00, '2025-10-31'),
(5, 5, 92600.00, '2025-10-31'),
(6, 6, 58800.00, '2025-10-31'),
(7, 7, 46550.00, '2025-10-31'),
(8, 8, 76600.00, '2025-10-31'),
(9, 9, 61900.00, '2025-10-31'),
(10, 10, 98100.00, '2025-10-31'),
(11, 11, 74550.00, '2025-10-31'),
(12, 12, 89800.00, '2025-10-31'),
(13, 13, 85150.00, '2025-10-31'),
(14, 14, 69400.00, '2025-10-31'),
(15, 15, 89150.00, '2025-10-31'),
(16, 16, 63100.00, '2025-10-31'),
(17, 17, 56800.00, '2025-10-31'),
(18, 18, 80000.00, '2025-10-31'),
(19, 19, 42500.00, '2025-10-31'),
(20, 20, 73700.00, '2025-10-31');
update employee set employee_name='Aman', department='IT' where employee_id=2;
update attendance set status='Leave' where attendance_id = 4;


