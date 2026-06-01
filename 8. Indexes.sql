USE practice;

SHOW INDEXES FROM sample;
SELECT * FROM sample;

CREATE INDEX idx_email ON sample(Gender);

DROP INDEX idx_email ON sample;