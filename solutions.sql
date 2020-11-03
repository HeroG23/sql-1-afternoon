--Person's problems

CREATE TABLE person ( 
    person_id SERIAL PRIMARY KEY, 
    name VARCHAR(200), 
    age INTEGER, 
    height INTEGER, 
    city VARCHAR(200), 
    favorite_color VARCHAR(200)
);
INSERT INTO person ( 
    name, 
    age, 
    height, 
    city, 
    favorite_color
) 
VALUES ( 
    'Richard Richardson', 
    21, 
    182, 
    'Amnityvile', 
    'Black'
),
(   
    'Anthony Clarkson',
    32,
    176,
    'Tommniville',
    'purple'
),
(
    'Clark Ellison',
    29,
    156,
    'Dabersville',
    'Indigo'
),
(
    'Wilhamina Strongheim',
    52,
    165,
    'Lakeville',
    'Red'
),
(
    'Leslie Duphensmirts',
    46,
    173,
    'Diagon Alley',
    'Blue'
);

SELECT * FROM person 
ORDER BY height DESC;

SELECT * FROM person 
ORDER BY height ASC;

SELECT * FROM person 
ORDER BY age DESC;

SELECT * FROM person 
WHERE age > 20;

SELECT * FROM person 
WHERE age = 18;

SELECT * FROM person 
WHERE age < 20 OR age > 30;

SELECT * FROM person 
WHERE age != 27;

SELECT * FROM person 
WHERE favorite_color != 'red';

SELECT * FROM person 
WHERE favorite_color != 'red' AND favorite_color != 'blue';

SELECT * FROM person 
WHERE favorite_color = 'orange' OR favorite_color = 'green';

SELECT * FROM person 
WHERE favorite_color 
IN ( 'orange', 'green', 'blue' );

SELECT * FROM person 
WHERE favorite_color 
IN ( 'yellow', 'purple' );

--Orders Problems

CREATE TABLE orders (order_id SERIAL PRIMARY KEY,
person_id INTEGER, product_name VARCHAR(200),
product_price NUMERIC, quantity INTEGER);

INSERT INTO orders(
    person_id,
    product_name,
    product_price,
    quantity
)
VALUES
(
    0,
    'Switch',
    299.99,
    5
),
(
    1,
    'Xbox Series X',
    499.99,
    4
),
(
    2,
    'PS5',
    399.99,
    3
),
(
    3,
    'Xbox Series S',
    299.99,
    4
),
(
    4,
    'GameBoy Advance SP',
    139.99,
    5
);

SELECT * FROM orders;

SELECT SUM(quantity) FROM orders;

SELECT SUM(product_price * quantity) FROM orders;

SELECT SUM(product_price * quantity)
FROM orders
WHERE person_id = 1;

--Artists Problems

INSERT INTO artist 
(name)
VALUES
('Michael Buble');

SELECT * FROM artist 
ORDER BY name DESC
LIMIT 10;

SELECT * FROM artist
ORDER BY name ASC
LIMIT 5;

SELECT * FROM artist
WHERE name
LIKE 'Black%';

SELECT * FROM artist
WHERE name
LIKE '%Black%';

--Employee Problems

SELECT first_name, last_name 
FROM employee
WHERE city = 'Calgary';

SELECT MAX(birth_date)
FROM employee;

SELECT MIN(birth_date)
FROM employee;

SELECT * FROM employee
Where reports_to = 2;

SELECT COUNT(*)
FROM employee
WHERE city = 'Letherbridge';

--Invoice Problems

SELECT COUNT(*) FROM invoice
WHERE billing_country = 'USA';

SELECT MAX(total)
FROM invoice;

SELECT MIN (total)
FROM invoice;

SELECT * FROM invoice
WHERE total > 5;

SELECT COUNT(*) FROM invoice
WHERE total < 5;

SELECT COUNT(*) FROM invoice
WHERE billing_state
IN ('CA', 'TX', 'AZ');

SELECT AVG(total) FROM invoice;

SELECT SUM(total) FROM invoice;