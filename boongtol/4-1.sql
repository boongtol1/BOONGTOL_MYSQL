<<<<<<< HEAD
CREATE TABLE customer (
first_name VARCHAR(50),
last_name VARCHAR(50),
col_3 DATETIME
);

DROP TABLE customer;

=======
>>>>>>> febc49d567e0482c3194ad8f3145e7125766ae45
-- first_name 열을 조회
SELECT first_name FROM customer;

-- 2개의 열을 조회
SELECT first_name, last_name FROM customer;

-- 모든 열을 조회
SELECT * FROM customer;

-- customer 테이블의 열 정보를 조회
SHOW COLUMNS FROM sakila.customer;

<<<<<<< HEAD
CREATE DATABASE sakila;

use sakila;

INSERT INTO customer VALUES ("MARIA", NULL, '2023-01-02');


=======
>>>>>>> febc49d567e0482c3194ad8f3145e7125766ae45
