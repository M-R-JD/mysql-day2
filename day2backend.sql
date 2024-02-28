create table student(student_id int,
student_name varchar(50),
mentor_id int,
batch_id int,
course_id int,
course_name varchar(50));
create table mentor(mentor_id int,
mentor_name varchar(50),
batch_id int,
foreign key(mentor_id) references student(mentor_id),
foreign key(batch_id) references student(batch_id));
create table course(course_id int,
course_name varchar(50),
foreign key(course_id) references student(course_id));
create table batch(batch_id int,
batch_name varchar(50),
foreign key(batch_id) references student(batch_id));
create table tasks(task_id int,
task_name varchar(50),
course_id int,
foreign key(course_id) references student(course_id));
create table marks(student_id int,
foreign key(student_id) references student(student_id),
marks int);