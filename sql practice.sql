
create database companies;
use companies;
create table user(
sno int auto_increment primary key ,
name varchar(50),
job_role varchar(100),
salary int,
gender enum('male','female','other'),
age int,
phone_no bigint);
-- insert into user (name,job_role,salary,gender,age,phone_no) values
-- -- INSERT INTO employees (name, job_role, salary, gender, age, phone_number) VALUES
-- ('Manav Chauhan', 'DevOps Engineer', 80000, 'Male', 27, '9876500001'),
-- ('Aman Sharma', 'Software Developer', 45000, 'Male', 24, '9876500002'),
-- ('Neha Verma', 'UI/UX Designer', 42000, 'Female', 26, '9876500003'),
-- ('Rohit Gupta', 'Data Analyst', 55000, 'Male', 28, '9876500004'),
-- ('Priya Singh', 'HR Executive', 30000, 'Female', 25, '9876500005'),
-- ('Ankit Yadav', 'Backend Developer', 60000, 'Male', 27, '9876500006'),
-- ('Pooja Mehta', 'QA Engineer', 35000, 'Female', 24, '9876500007'),
-- ('Rahul Malhotra', 'Frontend Developer', 48000, 'Male', 26, '9876500008'),
-- ('Sneha Kapoor', 'Content Writer', 28000, 'Female', 23, '9876500009'),
-- ('Vikas Rana', 'System Admin', 50000, 'Male', 29, '9876500010'),

-- ('Kunal Jain', 'Product Manager', 90000, 'Male', 32, '9876500011'),
-- ('Simran Kaur', 'Digital Marketer', 42000, 'Female', 27, '9876500012'),
-- ('Arjun Patel', 'Business Analyst', 65000, 'Male', 29, '9876500013'),
-- ('Ritika Joshi', 'HR Manager', 75000, 'Female', 34, '9876500014'),
-- ('Mohit Bansal', 'Cloud Engineer', 82000, 'Male', 31, '9876500015'),
-- ('Nidhi Saxena', 'Software Tester', 36000, 'Female', 24, '9876500016'),
-- ('Ayesha Khan', 'Support Engineer', 32000, 'Female', 25, '9876500017'),
-- ('Saurabh Mishra', 'ML Engineer', 95000, 'Male', 33, '9876500018'),
-- ('Kritika Arora', 'SEO Specialist', 38000, 'Female', 26, '9876500019'),
-- ('Deepak Kumar', 'Network Engineer', 52000, 'Male', 29, '9876500020'),

-- ('Amit Tiwari', 'Software Developer', 47000, 'Male', 25, '9876500021'),
-- ('Rashmi Pandey', 'HR Executive', 31000, 'Female', 24, '9876500022'),
-- ('Gaurav Saxena', 'DevOps Engineer', 78000, 'Male', 30, '9876500023'),
-- ('Isha Malhotra', 'UI Designer', 41000, 'Female', 26, '9876500024'),
-- ('Harsh Vardhan', 'Backend Developer', 62000, 'Male', 28, '9876500025'),
-- ('Meenal Gupta', 'QA Engineer', 34000, 'Female', 23, '9876500026'),
-- ('Naveen Choudhary', 'Cloud Engineer', 85000, 'Male', 32, '9876500027'),
-- ('Shreya Nair', 'Business Analyst', 66000, 'Female', 29, '9876500028'),
-- ('Ravi Verma', 'System Admin', 51000, 'Male', 27, '9876500029'),
-- ('Anjali Sharma', 'Content Writer', 29000, 'Female', 24, '9876500030'),

-- ('Siddharth Jain', 'Product Manager', 92000, 'Male', 34, '9876500031'),
-- ('Kavita Singh', 'Digital Marketer', 43000, 'Female', 28, '9876500032'),
-- ('Varun Aggarwal', 'Data Scientist', 98000, 'Male', 35, '9876500033'),
-- ('Preeti Arora', 'HR Executive', 32000, 'Female', 26, '9876500034'),
-- ('Yogesh Patel', 'DevOps Engineer', 81000, 'Male', 31, '9876500035'),
-- ('Neelam Joshi', 'QA Engineer', 36000, 'Female', 25, '9876500036'),
-- ('Abhishek Singh', 'Software Developer', 49000, 'Male', 26, '9876500037'),
-- ('Renu Kapoor', 'UI/UX Designer', 44000, 'Female', 27, '9876500038'),
-- ('Manish Kumar', 'Network Engineer', 54000, 'Male', 30, '9876500039'),
-- ('Pallavi Mishra', 'Support Engineer', 33000, 'Female', 24, '9876500040');


-- truncate table user;
-- alter table user auto_increment = 41;

insert into user (name,job_role,salary,gender,age,phone_no) values
('vaibhu','none','0000','other','99','12345467890'),
('a','b','020','other','11','123456725'),
('c','d','002','other','22','102143252');

SELECT * FROM USER;

select name,age from user; 

ALTER table user
add  gmail varchar(100) default '*' ,
add  date_of_birth varchar(10) default '*',
add address boolean default true;


alter table user drop gmail,
drop date_of_birth,
drop address ;

-- update user
-- set gmail = case name 
-- when 'Manav Chauhan' then 'manavchauhan123@gmail.com'
-- when 'Aman Sharma' then 'amansharma123@gmail.com'
-- end
-- where name in ('Manav Chauhan', 'Aman sharma')
-- limit 2;

update user
set gmail = case sno 
when 1 then 'manavchauhan123@gmail.com'
when 2 then 'amansharma123@gmail.com'
end
where sno in (1, 2)
limit 2;


update user
set gmail='Harsh Vardhan@outlook.com'
where sno= 25;

delete from user where name in ('vaibhu','a','c')
limit 3;

delete from user where name in ('vaibhu')
limit 1;

-- delete from user where name in ('a')
-- limit 1;

select sum(salary) as total_payroll from user;


update user
set salary= case
when age >25 then 50000
when age <20 then 35000
else salary 
end
where sno > 0;

set autocommit = 1;
rollback;
commit;