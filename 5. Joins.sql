USE practice;

SELECT * FROM sample;
SELECT * FROM foreign_key;

-- INNER JOIN
SELECT sample.Name, foreign_key.City 
FROM sample 
INNER JOIN foreign_key ON sample.Serial_no = foreign_key.User_Id;

-- LEFT JOIN
SELECT sample.Name, foreign_key.City 
FROM sample 
LEFT JOIN foreign_key ON sample.Serial_no = foreign_key.User_Id;

-- RIGHT JOIN
SELECT sample.Name, foreign_key.City 
FROM sample 
RIGHT JOIN foreign_key ON sample.Serial_no = foreign_key.User_Id;

-- SELF JOIN
SELECT * FROM sample;
ALTER TABLE sample ADD COLUMN Referred_by INT;
UPDATE sample SET Referred_by = 1 WHERE serial_no IN (2,3,5,7,8,21,14,15,16,20);
UPDATE sample SET Referred_by = 2 WHERE serial_no = 4;
SELECT 
a.serial_no, 
a.Name AS User_name,
b.Name AS Referred_name
FROM sample a
INNER JOIN sample b ON a.Referred_by = b.serial_no;