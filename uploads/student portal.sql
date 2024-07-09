create database student_db;
use student_db;
CREATE TABLE users (
    id INT  PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    password VARCHAR(255) NOT NULL,
    user_type ENUM('student', 'faculty') NOT NULL
);
desc 
insert into users values(1,"Avijit Nigam","B@tec123",'student'),
(2,"Krishna Uprit","B@tec123",'student'),
(3,"Divya Gautam","Faculty@123",'faculty');
select * from users;
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'root';
FLUSH PRIVILEGES;
drop table users;
ALTER TABLE users
RENAME COLUMN user_type to userType;
ALTER TABLE users
ADD SAP_ID int;
ALTER TABLE users
ADD email varchar(255);
desc users;
ALTER TABLE users
DROP COLUMN SAP_ID;
ALTER TABLE users
ADD name varchar(255);
ALTER TABLE users AUTO_INCREMENT=1;
ALTER TABLE users
DROP COLUMN id;
ALTER TABLE users
ADD COLUMN id int primary key auto_increment;
delete from users where id=3;
create table questions(question varchar(255),option1 varchar(255),option2 varchar(255),option3 varchar(255),option4 varchar(255),correctAnswer int);
select*from questions;
alter table questions
add column subject varchar(255);
alter table questions
add column question_type varchar (255);
desc questions;
ALTER TABLE questions ADD COLUMN question_type VARCHAR(255) AFTER correctAnswer;
alter table questions
drop column question_type;
ALTER TABLE questions
MODIFY COLUMN question_type varchar(255);
delete from questions where option1='d';
CREATE TABLE news (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    description TEXT NOT NULL,
    image_url VARCHAR(255) DEFAULT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
desc news;
select * from news;
alter table news
MODIFY COLUMN title varchar(255) null;
alter table news
MODIFY COLUMN description TEXT null;
delete from news where id=6;