--INNER JOIN--
SELECT * 
FROM Customer AS C
INNER JOIN Payment AS P
ON C.customer_id = P.customer_id

--LEFT JOIN--
SELECT *
FROM Customer AS C
LEFT JOIN payment AS P
ON C.customer_id =  P.customer_id


--RIGHT JOIN--
SELECT * 
FROM Customer AS C
RIGHT JOIN Payment AS P
ON C.customer_id = P.customer_id


--FULL JOIN--
SELECT * 
FROM Customer AS C
FULL JOIN Payment AS P
ON C.customer_id = P.customer_id