create database january_cohort;

create table officer (
first_child varchar (40),
second_child varchar (23), 
sur_name varcharacter (42),
course_of_study varchar(255),
state_of_origin varcharacter (44)
);

create table student (
matric_no int (34),
fname varchar(50),
lname varchar(50),
date_of_birth date,
course_of_study varchar(255)
);

ALTER TABLE STUDENTS
DROP COLUMN COURSE_OF_STUDY


INSERT INTO students (matric_no, fname, lname, date_of_birth) 
values(1000, "adetayo", "balogun", "1997-08-15", "agric");

select * from STUDENT 

INSERT into student
values ("2000", "fumilayo", "ransom-kuti", "1995-05-01", "ADMIN"),
("3000", "chioma", "adeleke", "1994-09-20", "ART"),
("4000", "musa", "adamu", "2001-01-01", "FOOD"),
("5000", "collins", "thomsom", "1990-02-14","AGRIC")


insert into students (matric_no, fname, date_of_birth)
values (6000, "jason", "1980-06-20");
 
 
INSERT INTO students
values (1000, "adetayo", "balogun", "1997-08-15"); 


create TABLE HOME (
FIRST_CHILD VARCHAR(23),
SECOND_CHILD VARCHAR(24),
THIRD_CHILD VARCHAR(24),
SEX VARCHAR(10),
AGE INT(2),
religion varchar(23)
);

INSERT INTO HOME
VALUES ("NINIOLA", "BIBIOLA", "DIDEOLA", "FEMALE", "8")

SELECT * FROM HOME;

INSERT INTO HOME
VALUES ("NINIOLA", "BIBIOLA", "DIDEOLA", "FEMALE", "8"),
("NINOLA", "BIBOLA", "DIEOLA", "MALE", "81"),
("NINIOA", "BIBILA", "DIDELA", "FEMALE", "28"),
("INIOLA", "BIOLA", "DEOLA", "FEMALE", "18"),
("NINLA", "BIBIA", "DIDEA", "MALE", "48"),
("NILA", "BILA", "DOLA", "MALE", "38"),
("NIOLA", "BIBA", "DIDA", "MALE", "58"),
("NINIOLA", "BIBIOLA", "DIOLA", "FEMALE", "68"),
("NINA", "BILA", "DIA", "MALE", "78")

INSERT INTO HOME 
values (religion)