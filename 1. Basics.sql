CREATE DATABASE Practice;

USE Practice;

CREATE TABLE Sample (
	Id INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Gender ENUM('Male', 'Female', 'Other'),
    DOB DATE,
    Email VARCHAR(100) UNIQUE,
    Created_at TIMESTAMP 
);

ALTER TABLE Sample RENAME COLUMN Id TO Serial_no;

-- TRUNCATE TABLE sample; (DELETE ALL the rows --- )

-- DELETE FROM sample WHERE Serial_no = '7'; (Delete specific row in table - )

-- ALTER TABLE sample DROP COLUMN Created_at; (Delete a whole column | )

-- DROP TABLE IF EXISTS sample; (Delete the entire table)

-- DROP DATABASE IF EXISTS practice; (Drops the whole database)

ALTER TABLE sample ADD COLUMN Salary BIGINT AFTER Email;

ALTER TABLE sample MODIFY COLUMN created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP;

UPDATE sample SET Created_at = current_timestamp() WHERE created_at IS NULL;

SELECT * FROM sample;

-- SELECT * FROM sample WHERE Gender='Male' OR Salary>'65000' ORDER BY DOB LIMIT 5;

-- UPDATE sample SET Salary = 45000 WHERE Serial_no=7;

-- UPDATE sample SET Salary = Salary+10000 WHERE Salary < 45000;

-- SELECT COUNT(*) FROM sample;

-- SELECT COUNT(*) FROM sample WHERE gender = 'Male';

-- SELECT MIN(Salary) AS Min_Salary, MAX(Salary) AS Max_Salary FROM sample;

-- SELECT SUM(Salary) AS Total_Salary FROM sample;

-- SELECT Gender, AVG(Salary) AS Average FROM sample GROUP BY Gender;

-- SELECT Name, length(name) AS Name_Length from sample;

-- SELECT Name, concat(lower(name), '713@gmail.com') AS New_email, YEAR(DOB) AS Year FROM sample;

-- SELECT Name, datediff(curdate(), DOB) AS Days FROM sample;

-- SELECT Name, Gender, if(gender = 'Female', 'Yes', 'No') AS Is_Female FROM sample;