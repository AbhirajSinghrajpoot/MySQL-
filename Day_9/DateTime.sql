use library_db;

CREATE TABLE people (
    name VARCHAR(100),
    birthdate DATE,
    birthtime TIME,
    birthdt DATETIME
);

INSERT INTO people
(name, birthdate, birthtime, birthdt)
VALUES
('Padma', '1983-11-11', '10:07:35', '1983-11-11 10:07:35');

INSERT INTO people
(name, birthdate, birthtime, birthdt)
VALUES
('Larry', '1943-12-25', '04:10:42', '1943-12-25 04:10:42');

select * from people;

INSERT INTO people
(name, birthdate, birthtime, birthdt)
VALUES
('Microwave', curdate(), curtime(), now());

INSERT INTO people
(name, birthdate, birthtime, birthdt)
VALUES
('Toaster', CURDATE(), CURTIME(), NOW());

INSERT INTO people
(name, birthdate, birthtime, birthdt)
VALUES
('Aman', '2000-01-15', '08:10:20', '2000-01-15 08:10:20'),
('Riya', '2001-02-20', '09:15:25', '2001-02-20 09:15:25'),
('Karan', '1999-03-10', '10:20:30', '1999-03-10 10:20:30'),
('Priya', '2002-04-18', '11:25:35', '2002-04-18 11:25:35'),
('Rahul', '1998-05-22', '12:30:40', '1998-05-22 12:30:40'),
('Neha', '2003-06-12', '13:35:45', '2003-06-12 13:35:45'),
('Arjun', '2001-07-08', '14:40:50', '2001-07-08 14:40:50'),
('Sneha', '2000-08-30', '15:45:55', '2000-08-30 15:45:55'),
('Vikram', '1997-09-14', '16:50:10', '1997-09-14 16:50:10'),
('Pooja', '2002-10-05', '17:55:15', '2002-10-05 17:55:15'),
('Rohit', '1999-11-25', '18:05:20', '1999-11-25 18:05:20'),
('Anjali', '2001-12-11', '19:10:25', '2001-12-11 19:10:25'),
('Deepak', '2000-01-28', '20:15:30', '2000-01-28 20:15:30'),
('Kavya', '2003-02-16', '21:20:35', '2003-02-16 21:20:35'),
('Mohit', '1998-03-07', '22:25:40', '1998-03-07 22:25:40'),
('Nisha', '2002-04-24', '23:30:45', '2002-04-24 23:30:45'),
('Ajay', '1997-05-13', '06:35:50', '1997-05-13 06:35:50'),
('Simran', '2001-06-29', '07:40:55', '2001-06-29 07:40:55'),
('Tarun', '1999-07-17', '08:45:10', '1999-07-17 08:45:10'),
('Meera', '2000-08-09', '09:50:15', '2000-08-09 09:50:15');


select * from people;


SELECT birthdate, DAY(birthdate)
FROM people;

SELECT birthdate, DAYNAME(birthdate)
FROM people;

SELECT birthdate, DAYOFWEEK(birthdate)
FROM people;

SELECT birthdate, DAYOFYEAR(birthdate)
FROM people;

SELECT birthdate, MONTH(birthdate)
FROM people;

SELECT birthdate, MONTHNAME(birthdate)
FROM people;

SELECT birthdate, YEAR(birthdate)
FROM people;

--------------------------------------------------
-- TIME FUNCTIONS
--------------------------------------------------

SELECT name, birthtime, HOUR(birthtime)
FROM people;

SELECT name, birthtime, MINUTE(birthtime)
FROM people;

SELECT name, birthtime, SECOND(birthtime)
FROM people;

--------------------------------------------------
-- CURRENT DATE & TIME
--------------------------------------------------

SELECT CURDATE();

SELECT CURTIME();

SELECT NOW();

--------------------------------------------------
-- DATE FORMAT
--------------------------------------------------

SELECT DATE_FORMAT(NOW(), '%d/%m/%Y');

SELECT DATE_FORMAT(NOW(), '%W');

SELECT DATE_FORMAT(NOW(), '%M');

SELECT DATE_FORMAT(NOW(), '%W %M %Y');

--------------------------------------------------
-- DATETIME FUNCTIONS
--------------------------------------------------

SELECT birthdt, DAY(birthdt)
FROM people;

SELECT birthdt, MONTHNAME(birthdt)
FROM people;

SELECT birthdt, YEAR(birthdt)
FROM people;

SELECT birthdt, HOUR(birthdt)
FROM people;

SELECT birthdt, MINUTE(birthdt)
FROM people;

--------------------------------------------------
-- PRACTICE QUERIES
--------------------------------------------------

SELECT
    name,
    DAYNAME(birthdate)
FROM people;

SELECT
    name,
    MONTHNAME(birthdate)
FROM people;

SELECT
    name,
    DATE_FORMAT(birthdate,'%W, %M %D %Y')
FROM people;

SELECT
    name,
    DATE_FORMAT(birthdt,'%H:%i')
FROM people;

--------------------------------------------------
-- DATEDIFF() 
--------------------------------------------------




SELECT DATEDIFF('2026-06-13', '2026-06-10');


SELECT DATEDIFF(NOW(), '2026-01-01');


SELECT
    name,
    birthdate,
    DATEDIFF(NOW(), birthdate)
FROM people;

SELECT
    name,
    birthdate,
    FLOOR(DATEDIFF(NOW(), birthdate)/365) AS age
FROM people;

SELECT birthdt,
       DATE_ADD(birthdt, INTERVAL 10 SECOND)
FROM people;

SELECT DATE_ADD(NOW(), INTERVAL 30 SECOND);

SELECT DATE_ADD(NOW(), INTERVAL 15 MINUTE);

SELECT DATE_ADD(NOW(), INTERVAL 2 HOUR);

SELECT DATE_ADD(NOW(), INTERVAL 7 DAY);

SELECT DATE_ADD(NOW(), INTERVAL 2 WEEK);

SELECT DATE_ADD(NOW(), INTERVAL 3 MONTH);

SELECT birthdt,
       DATE_ADD(birthdt, INTERVAL 3 QUARTER)
FROM people;

SELECT DATE_SUB(NOW(), INTERVAL 10 DAY);

SELECT NOW();

SELECT DATE_ADD(NOW(), INTERVAL 10 SECOND);

SELECT DATE_ADD(NOW(), INTERVAL 10 MINUTE);

SELECT DATE_ADD(NOW(), INTERVAL 10 HOUR);

SELECT DATE_ADD(NOW(), INTERVAL 10 DAY);

SELECT DATE_ADD(NOW(), INTERVAL 10 WEEK);

SELECT DATE_ADD(NOW(), INTERVAL 10 MONTH);

SELECT DATE_ADD(NOW(), INTERVAL 10 YEAR);

SELECT DATE_SUB(NOW(), INTERVAL 10 DAY);

SELECT NOW() + INTERVAL 1 DAY;

SELECT NOW() - INTERVAL 1 MONTH;