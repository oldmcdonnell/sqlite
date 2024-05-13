-- CREATE TABLE
--     STUDENTS(
--         name TEXT,
--         age INTEGER
--     )
-- .schema
-- INSERT INTO 
--     STUDENTS(name, age)
-- VALUES ("test stud", 32);
-- .schema
-- INSERT INTO
--     STUDENTS (name, age)
-- VALUES
--     ('Gitbas', 21),
--     ('Miska Shaboski', 55),
--     ('Doug Stanhope', 65),
--     ('Dylan Moran', 59);
-- SELECT * FROM STUDENTS WHERE age > 22\
-- UPDATE STUDENTS 
-- SET age = 33
-- WHERE name IS 'Dylan Moran'
-- DELETE FROM STUDENTS
-- WHERE name is 'Gitbas';

-- ALTER TABLE STUDENTS
-- ADD COLUMN graduated BOOLEAN DEFAULT FALSE;


-- INSERT INTO 
-- STUDENTS(name, age, graduated)
-- VALUES
-- ('Daemon Student', 33, FALSE);

-- SELECT * FROM STUDENTS

-- CREATE TABLE
--     STUDENTS_NEW (
--     id INTEGER PRIMARY KEY AUTOINCREMENT,
--     name TEXT,
--     age INTEGER,
--     graduated BOOLEAN
--     );
-- .schema
-- INSERT INTO STUDENTS_NEW (name, age, graduated)
-- SELECT
-- name, age, graduated
-- FROM 
-- STUDENTS

-- SELECT * FROM STUDENTS_NEW

-- DROP TABLE STUDENTS;
-- .tables

-- ALTER TABLE
--     STUDENTS_NEW
-- RENAME TO
--     Students;

-- SELECT * FROM Students-- 


-- foreign keys with 1:1

-- CREATE TABLE 
--     Medical_Records (
--     id INTEGER PRIMARY KEY AUTOINCREMENT,
--     student_id INTEGER UNIQUE, 
--     blood_type TEXT, 
--     FOREIGN KEY (student_id)
--     REFERENCES Students(id)
--     );

-- INSERT INTO 
-- Medical_Records (
-- student_id, blood_type
-- )
-- VALUES
-- (1, 'O-'),
-- (2, 'B+'),
-- (3, 'A-'),
-- (4, 'B+'),
-- (5, 'A');


-- SELECT * FROM Students;
-- SELECT * FROM Medical_Records;

-- ALTER TABLE 
-- Students
-- ADD COLUMN
-- medical_record_id INTEGER DEFAULT NULL;
-- UPDATE 
--     Students
-- SET
--     medical_record_id = (
--     SELECT
--         id
--     FROM
--         Medical_Records
--     WHERE Medical_Records.student_id IS Students.id 
-- );

-- SELECT Students.name, Medical_Records.blood_type
-- FROM
--     Students JOIN Medical_Records
-- ON 
-- Students.medical_record_id is Medical_Records.id;

-- CREATE TABLE
-- Instructors (
-- id INTEGER PRIMARY KEY AUTOINCREMENT,
-- name TEXT
-- );


-- .schema

-- SELECT * FROM Instructors

-- CREATE TABLE 
--  courses (
--  id INTEGER PRIMARY KEY AUTOINCREMENT,
--  name TEXT,
--  instructor_id INTEGER,
--  FOREIGN key (instructor_id)
--  REFERENCES Instructors(id)
--  );


-- courses (name)
-- VALUES
-- ('Into to python'),
-- ('Calculus'),
-- ('SQL'),
-- ('Cloud computer security');


SELECT * FROM Instructors;
SELECT * FROM courses;