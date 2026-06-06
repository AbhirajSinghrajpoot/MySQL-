CREATE DATABASE dog_walking_app;

USE dog_walking_app;

CREATE TABLE dogs (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    age INT
);

INSERT INTO dogs (name, age)
VALUES ('Tommy', 3);

SELECT * FROM dogs;