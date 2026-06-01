USE practice;

CREATE VIEW Rich AS
SELECT * FROM sample WHERE Salary>65000;

SELECT * FROM rich;

DROP VIEW rich;