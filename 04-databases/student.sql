CREATE TABLE students
(
  id SERIAL4 PRIMARY KEY,
  first VARCHAR(25) NOT NULL,
  last VARCHAR(25) NOT NULL,
  dob DATE,
  gpa FLOAT8,
  course_id INT4 --REFERENCES courses(id)
);

CREATE TABLE courses
(
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(50) UNIQUE NOT NULL,
  student_id INT4 --REFERENCES students(id)
);

INSERT INTO students (first, last, dob, gpa) VALUES ('bill', 'jones', '1/1/1990', 3.3);
INSERT INTO students (first, last, dob, gpa) VALUES ('january', 'jones', '2/1/1990', 3.7);
INSERT INTO students (first, last, dob, gpa) VALUES ('jim', 'jones', '2/1/1980', 3.5);
