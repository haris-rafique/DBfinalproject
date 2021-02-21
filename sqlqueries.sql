# Instructor_Queries...

# Instructor_Profile(1)
select distinct Fname, Lname, ssn, dob, calc_faculty.rank, salary, dname, colname
from classroom_person, classroom_faculty, classroom_instructor, classroom_section, classroom_course, classroom_department, classroom_college
where classroom_person.username_id='Ahmad' and classroom_person.ssn = classroom_faculty.fssn_id and classroom_faculty.fssn_id = classroom_instructor.issn and classroom_instructor.issn = classroom_section.inssn_id and classroom_section.courseno_id = classroom_course.cno and classroom_course.dname_id = classroom_department.dname and classroom_department.coname_id = classroom_college.colname;

# Teaching_Courses(2)
select sem, cname, cdesc
from classroom_instructor, classroom_section, classroom_course
where classroom_instructor.issn = classroom_section.inssn_id and classroom_section.courseno_id = classroom_course.cno;

# Student_Attendance(3)
select cname, cdesc, Fname, Lname, attendance
from classroom_instructor, classroom_section, classroom_course, classroom_enrolls, classroom_student, classroom_person
where classroom_instructor.issn = classroom_section.inssn_id and classroom_section.courseno_id = classroom_course.cno and classroom_course.cno = classroom_enrolls.couno_id and classroom_enrolls.stdssn_id = classroom_student.Studentssn_id and classroom_student.Studentssn_id = classroom_person.ssn;

# Admin_Reports...

# All_Students(1)
select Fname, Lname, ssn, dob, class, dname, colname
from classroom_person, classroom_college, classroom_department, classroom_student
where classroom_person.ssn = classroom_student.Studentssn_id and classroom_student.Dept_id = classroom_department.dname and classroom_department.coname_id = classroom_college.colname;

# All_Instructors(2)
select distinct Fname, Lname, ssn, dob, calc_faculty.rank, salary, dname, colname
from classroom_person, classroom_faculty, classroom_instructor, classroom_section, classroom_course, classroom_department, classroom_college
where classroom_person.ssn = classroom_faculty.fssn_id and classroom_faculty.fssn_id = classroom_instructor.issn and classroom_instructor.issn = classroom_section.inssn_id and classroom_section.courseno_id = classroom_course.cno and classroom_course.dname_id = classroom_department.dname and classroom_department.coname_id = classroom_college.colname;


# All_Courses(3)
select sem, cname, cdesc, dname
from classroom_section, classroom_course, classroom_department
where classroom_section.courseno_id = classroom_course.cno and classroom_course.dname_id = classroom_department.dname;

insert into classroom_person
values (1, 'muhammad', 'sultan', 'A.', '1999-03-21', 'male', 12345, '184', 'lahore', 'pak', 123, 'ahmad' );

insert into classroom_college
values ('lhr', 'prof. dr. haris', 1);

insert into classroom_department
values ('EE', 12345, 1, 'lhr');

insert into classroom_student
values (1, 1, 'EE'); # 1st year student, 2nd semester


# current_courses

# first registre 'haris' as teacher through frontend classroom_user has it

insert into classroom_person
values (2, 'muhammad', 'haris', 'A.', '1999-03-21', 'male', 12345, '184', 'lahore', 'pak', 123, 'haris' );

insert into classroom_instructor
values(2);

insert into classroom_faculty
values(2, 40000, 12345, 1, 'Lecturer', '2018-02-01', 2);

insert into classroom_course
values (1, 'EE-170L', 'Programming Fundamentals', 1, 'EE'),
(2, 'ME-124L', 'Engineering Drawing', 1, 'EE'),
(3, 'IS-101', 'Islamic and Pak st -I', 3, 'EE'),
(4, 'MA-228', 'Differential Equations', 2, 'EE'),
(5, 'EE-170', 'Programming Fundamentals', 2, 'EE'),
(6, 'EE-100', 'Electric Circuit', 3,'EE'),
(7, 'HU-101L', 'Communication Skills',3, 'EE'),
(8, 'EE-101L', 'Electrical and Electronic Workshop',2, 'EE');


insert into classroom_section
values(1, 'Spring 2018', 1, 2),
(2, 'Spring 2018', 2, 2),
(3, 'Spring 2018', 3, 2),
(4, 'Spring 2018', 4, 2),
(5, 'Spring 2018', 5, 2),
(6, 'Spring 2018', 6, 2),
(7, 'Spring 2018', 7, 2),
(8, 'Spring 2018', 8, 2);


insert into classroom_cursection
values(1),(2),(3),(4),(5),(6),(7),(8);

insert into classroom_regsub
values (1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 6, 1),
(7, 7, 1),
(8, 8, 1);



# DMC

insert into classroom_transcript
values(1, 'A', 1, 1),
(2, 'A', 2, 1),
(3, 'A', 3, 1),
(4, 'A', 4, 1),
(5, 'A', 5, 1),
(6, 'A', 6, 1),
(7, 'A', 7, 1),
(8, 'A', 8, 1);


# Attendance

insert into classroom_enrolls
values (1, 100, 1, 1),
(2, 100, 2, 1),
(3, 100, 3, 1),
(4, 100, 4, 1),
(5, 100, 5, 1),
(6, 100, 6, 1),
(7, 100, 7, 1),
(8, 100, 8, 1);

# Dues
insert into classroom_fee
values (500, 'Student Card', 1, 1);

insert into classroom_fee
values (34000, 'Semester Fee', 2, 1),
(35000, 'Semester Fee', 3, 1)
;

insert into classroom_semfee
values (2, 'Fall 2017', '2017-10-01', '2017-10-10', 2),
(3, 'Spring 2018', '2018-02-01', '2018-02-10', 3);

# lets insert another student and teacher...
# first registre 'ali' as student through frontend so that classroom_user has it

# profile
insert into classroom_person
values (3, 'muhammad', 'ali', 'A.', '1999-03-21', 'male', 12345, '184', 'lahore', 'pak', 123, 'ali');

insert into classroom_student
values (3, 1, 'EE'); # 1st year student, 2nd semester


# current_courses

# first registre 'mohsin' as teacher through frontend classroom_user has it

insert into classroom_person
values (4, 'muhammad', 'mohsin', 'A.', '1999-03-21', 'male', 12345, '184', 'lahore', 'pak', 123, 'mohsin' );

insert into classroom_instructor
values(4);

insert into classroom_faculty
values(4, 40000, 12345, 2, 'Lecturer', '2018-02-01', 4);




insert into classroom_section
values(9, 'Spring 2018', 1, 4),
(10, 'Spring 2018', 2, 4),
(11, 'Spring 2018', 3, 4),
(12, 'Spring 2018', 4, 4),
(13, 'Spring 2018', 5, 4),
(14, 'Spring 2018', 6, 4),
(15, 'Spring 2018', 7, 4),
(16, 'Spring 2018', 8, 4);


insert into classroom_cursection
values(9),(10),(11),(12),(13),(14),(15),(16);

insert into classroom_regsub
values (9, 9, 3),
(10, 10, 3),
(11, 11, 3),
(12, 12, 3),
(13, 13, 3),
(14, 14, 3),
(15, 15, 3),
(16, 16, 3);



# DMC

insert into classroom_transcript
values(9, 'A', 9, 3),
(10, 'A-', 10, 3),
(11, 'A-', 11, 3),
(12, 'A', 12, 3),
(13, 'A', 13, 3),
(14, 'A', 14, 3),
(15, 'A', 15, 3),
(16, 'A-', 16, 3);


# Attendance

insert into classroom_enrolls
values (9, 95, 1, 3),
(10, 95, 2, 3),
(11, 95, 3, 3),
(12, 95, 4, 3),
(13, 95, 5, 3),
(14, 95, 6, 3),
(15, 95, 7, 3),
(16, 95, 8, 3);

# Dues
insert into classroom_fee
values (200, 'DMC Verification', 4, 3);

insert into classroom_fee
values (34000, 'Semester Fee', 5, 3),
(35000, 'Semester Fee', 6, 3)
;

insert into classroom_semfee
values (4, 'Fall 2017', '2017-10-01', '2017-10-10', 5),
(5, 'Spring 2018', '2018-02-01', '2018-02-10', 6);



# registre admin 
