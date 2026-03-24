use if_school;
create table std_fee(id int primary key, std_id int not null, amount int not null, a_status varchar(100) not null,a_date date not null, constraint fk_stdid foreign key (id) references student_details(id));  
INSERT INTO std_fee(id,std_id,amount,a_status,a_date) VALUES 
(1,1,"10000","paid","2024-10-01"),
(2,2,"12000","pending","2024-12-30"),
(3,3,"5000","paid","2024-12-30");
select * from std_fee;
select id, std_name, std_age from student_details;
select distinct std_age from student_details;
select id, std_name, std_age from student_details where std_gen="M";
select id, std_name, std_age from student_details where std_gen="F";
SELECT id,std_name,std_age
FROM student_details
WHERE std_gen = "M" AND std_age = 23;
SELECT *
FROM student_details
WHERE std_dob BETWEEN "2001-01-01" AND "2003-01-01";
select * from std_fee order by amount asc;
SELECT * 
FROM std_fee
WHERE a_status = "paid"
LIMIT 3 ;
SELECT COUNT(id)
FROM std_fee;
SELECT Max(id)
FROM std_fee;
