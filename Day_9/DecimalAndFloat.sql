use library_db;

CREATE TABLE items(
    price DECIMAL(5,2)
);

INSERT INTO items(price) VALUES(7);        -- 7.00
INSERT INTO items(price) VALUES(34.88);    -- OK
INSERT INTO items(price) VALUES(999.99);   -- OK
INSERT INTO items(price) VALUES(1000.00);  -- Warning/Error

select * from items;

CREATE TABLE item(
    price FLOAT
);

SELECT 0.1 + 0.2;


