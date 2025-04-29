CREATE TABLE customer
(
"Id" int8 PRIMARY KEY,
"Name"  varchar(50) NOT NULL,
"Age" int NOT NULL,
"City" char(50),
"Salary" numeric
);
INSERT INTO customer
VALUES
(1,'Sam',21,'Delhi',9000),
(2,'Ram',19,'Bangalore',11000),
(3,'Pam',31,'Mumbai',6000),
(4,'Jam',42,'Pune',10000);

SELECT * FROM customer;


