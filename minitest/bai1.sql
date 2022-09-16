use huy;
create table address(
                        address_id int auto_increment primary key not null ,
                        address varchar(50)
);
create table classes(
                        classes_id int auto_increment primary key not null ,
                        name varchar(50),
                        language varchar(50),
                        description varchar(200)
);
create table student(
                        student_id int auto_increment primary key not null ,
                        fullName varchar(100) ,
                        address_id int,
                        FOREIGN KEY (address_id)REFERENCES address(address_id),
                        age INT ,
                        phone INT UNIQUE ,
                        classes_id INT,
                        FOREIGN KEY (classes_id) REFERENCES classes(classes_id)
);
create table course(
                       course_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL ,
                       name VARCHAR(50),
                       description VARCHAR(200)
);
CREATE TABLE point(
                      point_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
                      course_id INT,
                      FOREIGN KEY (course_id) REFERENCES course(course_id),
                      student_id INT,
                      FOREIGN KEY (student_id) REFERENCES student(student_id),
                      point INT
);
INSERT INTO address( address)VALUE ('thaibinh');
INSERT INTO address( address)VALUE ('quanninh');
INSERT INTO address( address)VALUE ('hungyen');
INSERT INTO address( address)VALUE ('hanoi');
INSERT INTO address( address)VALUE ('hanam');
SELECT *FROM address;
INSERT INTO classes(name, language, description) VALUE ('huy','english','gioi');
INSERT INTO classes(name, language, description) VALUE ('p','japanese','gioi');
INSERT INTO classes(name, language, description) VALUE ('agia','chinese','gioi');
INSERT INTO classes(name, language, description) VALUE ('quyet','vietnamese','gioi');
INSERT INTO classes(name, language, description) VALUE ('phong','roseies','gioi');
SELECT *FROM classes;
INSERT INTO student(fullName, address_id, age, phone, classes_id) VALUE ('huy',1,23,0871365312,1);
INSERT INTO student(fullName, address_id, age, phone, classes_id) VALUE ('phong',2,24,0971665313,2);
INSERT INTO student(fullName, address_id, age, phone, classes_id) VALUE ('hung',3,25,0971365314,3);
INSERT INTO student(fullName, address_id, age, phone, classes_id) VALUE ('hieu',4,26,0971365315,4);
INSERT INTO student(fullName, address_id, age, phone, classes_id) VALUE ('trung',5,27,0971365316,5);
# INSERT INTO student(fullName, address_id, age, phone, classes_id) VALUE ('hoang',1,28,0971365317,1);
# INSERT INTO student(fullName, address_id, age, phone, classes_id) VALUE ('linh',2,29,0971365318,2);
# INSERT INTO student(fullName, address_id, age, phone, classes_id) VALUE ('tuan',3,21,0971365319,3);
# INSERT INTO student(fullName, address_id, age, phone, classes_id) VALUE ('han',4,22,0971365334,4);
# INSERT INTO student(fullName, address_id, age, phone, classes_id) VALUE ('luong',5,20,0971365335,5);
SELECT *FROM student;
INSERT INTO course(name, description) VALUE ('huy','gioi');
INSERT INTO course(name, description) VALUE ('phong','gioi');
INSERT INTO course(name, description) VALUE ('hung','gioi');
INSERT INTO course(name, description) VALUE ('hao','gioi');
SELECT *FROM course;
INSERT INTO point(course_id, student_id, point) VALUE (1,1,7);
INSERT INTO point(course_id, student_id, point) VALUE (2,2,1);
INSERT INTO point(course_id, student_id, point) VALUE (3,3,7);
INSERT INTO point(course_id, student_id, point) VALUE (3,4,7);
INSERT INTO point(course_id, student_id, point) VALUE (4,3,8);
SELECT *FROM point;
# select * from tên bảng where tên cột like '%-----%';
SELECT *FROM student WHERE fullName LIKE '%huy'
