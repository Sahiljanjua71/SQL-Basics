USE practice;

SET autocommit = 0;        -- Sets Automatic commiting to 0.

SELECT * FROM sample;

COMMIT;       -- Save Changes auto this point.

DELETE FROM sample WHERE Serial_no = 6;

ROLLBACK;     -- Delete all the changes done till the last savepoint.