CREATE DATABASE BANK
CREATE TABLE payments (
    payment_id INT  PRIMARY KEY,
    customer_id INT NOT NULL,
    amount DECIMAL(10,2) NOT NULL,
    mode VARCHAR(20) NOT NULL,
    payment_date DATE NOT NULL
);

INSERT INTO payments (payment_id, customer_id, amount, mode, payment_date) VALUES
(1001, 101, 1500.00, 'UPI', '2023-10-01'),
(1002, 102, 899.99, 'Credit Card', '2023-10-02'),
(1003, 103, 4500.50, 'Bank Transfer', '2023-10-03'),
(1004, 104, 120.00, 'Debit Card', '2023-10-04'),
(1005, 105, 780.25, 'UPI', '2023-10-05'),
(1006, 106, 3500.75, 'Credit Card', '2023-10-06'),
(1007, 107, 199.00, 'Cash', '2023-10-07'),
(1008, 108, 999.00, 'PayPal', '2023-10-08');

SELECT * FROM payments;
SELECT COUNT(amount) FROM payments
SELECT SUM(amount) FROM payments
SELECT MAX(amount) FROM payments
SELECT MIN(amount) FROM payments
SELECT ROUND(AVG(amount),2 )FROM payments
