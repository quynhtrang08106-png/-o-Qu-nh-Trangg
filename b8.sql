Create database session06_db;
use session06_db;
create table class(
	class_id int primary key auto_increment,
    class_name varchar(100) not null unique,
    class_status bit default(1)
);
create table student(
	student_id char(4) primary key,
    student_name varchar(100) not null,
    student_age int not null check(student_age>=18),
    student_sex bit,
    student_address varchar(200),
    student_status bit,
    class_id int,
    foreign key(class_id) references class(class_id)
);

insert into class(class_name)
values ('Quản trị Kinh Doanh 1'), 
('Quản trị kinh doanh 2'),
('Quản trị kinh doanh 3');
select * from class;
insert into student
values('SV01','Nguyễn Văn A',20,1,'Hà Nội',1,1),
('SV02','Nguyễn Văn B',20,1,'Hà Nội',1,2),
('SV03','Nguyễn Văn C',18,0,'Đà Nẵng',1,3),
('SV04','Nguyễn Văn D',19,0,'Hà Nội',1,1),
('SV05','Nguyễn Văn G',20,0,'Hà Nội',1,1),
('SV06','Nguyễn Văn H',20,0,'Đà Nẵng',1,2),
('SV07','Nguyễn Văn E',21,1,'HCM',1,3);

Select student_id,student_name,student_address,student_sex
from student;

select AVG(student_age)
from student;

select student_address
from student;

select student_id,student_name,student_age,student_address,student_sex,student_status
from student;

select student_id,student_name,student_address
from student
where student_sex = 0;

select * from student
where student_address ='Hà nội' or student_address = 'HCM';

select * from student
where student_age >=18 and student_age <=20;

select * from student
where student_age between 18 and 20;

select * from student
where student_address like 'Hà%';

select * from student
where student_address like '_à%';

SELECT 
    customer_id,
    amount,
    payment_date
FROM sakila.payment
WHERE payment_date > '2005-08-01'
  AND amount > 9.00
ORDER BY amount DESC;

SELECT
    payment_id,
    customer_id,
    staff_id,
    amount
FROM sakila.payment
WHERE amount = 0.00
   OR (staff_id = 1 AND amount > 10.00)
ORDER BY customer_id ASC;

INSERT INTO sakila.customer (
    store_id,
    first_name,
    last_name,
    email,
    address_id,
    create_date
)
VALUES (
    2,
    'ANNA',
    'HILL',
    'ANNA.HILL@sakilacustomer.org',
    5,
    NOW()
);

SET SQL_SAFE_UPDATES = 0;
UPDATE sakila.customer
SET email = REPLACE(email, '@sakilacustomer.org', '@sakilacustomer.com')
WHERE first_name = 'JENNIFER';

UPDATE sakila.customer
SET active = 0
WHERE customer_id = 25;