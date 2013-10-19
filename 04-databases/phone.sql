CREATE TABLE phones (
  id SERIAL4 PRIMARY KEY,
  phone_type VARCHAR(25),
  number VARCHAR(100), -- maybe some numbers are this long, IDK
  student_id serial4,
  FOREIGN KEY (student_id) REFERENCES students (id)
);
