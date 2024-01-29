CREATE TABLE students (
    id          integer                 PRIMARY KEY,
    first_name  character varying(10)   NOT NULL,
    middle_name character varying(10)   DEFAULT 'NULL',
    last_name   character varying(10)   NOT NULL,
    age         integer                 NOT NULL,
    location    character varying(100)  NOT NULL
);

SELECT * FROM students;

INSERT INTO students
	( id, first_name, last_name, age, location )
VALUES
	( 1, 'Juan', 'Cruz', 18, 'Manila'),
	( 2, 'Anne', 'Wall', 20, 'Manila'),
	( 3, 'Theresa', 'Joseph', 21, 'Manila'),
	( 4, 'Isaac', 'Gray', 19, 'Laguna'),
	( 5, 'Zack', 'Matthews', 22, 'Marikina'),
	( 6, 'Finn', 'Lam', 25, 'Manila');

UPDATE students
	SET 
		first_name = 'Ivan',
		middle_name = 'Ingram',
		last_name = 'Howard',
		age = 25,
		location = 'Bulacan'
	WHERE 
		id = 1;

DELETE FROM students
	WHERE id = (SELECT MAX(id) FROM students);

SELECT COUNT(id) FROM students;

SELECT * from students WHERE location = 'Manila';

SELECT AVG(age) FROM students;

SELECT * from students ORDER BY age DESC;