use library_db;

CREATE TABLE comments (
    content VARCHAR(100),
    created_at TIMESTAMP DEFAULT NOW()
);

INSERT INTO comments(content)
VALUES('First Comment');

INSERT INTO comments(content)
VALUES('Second Comment');

INSERT INTO comments(content)
VALUES('Third Comment');

SELECT * FROM comments;

CREATE TABLE users (
    username VARCHAR(100),
    updated_at TIMESTAMP
    DEFAULT NOW()
    ON UPDATE NOW()
);

INSERT INTO users(username)
VALUES('Arpit');


SELECT * FROM users;

UPDATE users
SET username='Abhiraj'
WHERE username='Arpit';

SELECT * FROM users;


SELECT NOW();

SELECT CURRENT_TIMESTAMP();

SELECT CURDATE();

SELECT CURTIME();



DROP TABLE IF EXISTS users;



INSERT INTO users(username)
VALUES('Arpit');

INSERT INTO users(username)
VALUES('Abhiraj');

INSERT INTO users(username)
VALUES('Rahul');

SELECT * FROM users;


UPDATE users
SET username = 'Arpit Singh'
WHERE id = 1;


SELECT * FROM users;
DESC users;

SHOW COLUMNS FROM users;
DROP TABLE IF EXISTS users;

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(100),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
               ON UPDATE CURRENT_TIMESTAMP
);
INSERT INTO users(username)
VALUES('Arpit');

INSERT INTO users(username)
VALUES('Abhiraj');

INSERT INTO users(username)
VALUES('Rahul');



UPDATE users
SET username='Arpit Singh'
WHERE id=1;

DESC users;

