--@scripts\others.sql

-- This file contains other necessary statement to get all
-- tables, primary keys, foreign keys, unique constraint, check constraint

-- Check all tables created
SELECT TNAME FROM TAB;

-- Select all Constraints
SELECT CONSTRAINT_NAME,TABLE_NAME
FROM USER_CONSTRAINTS;

-- Select all Primary Keys Constraints
SELECT CONSTRAINT_NAME,TABLE_NAME
FROM USER_CONSTRAINTS
WHERE CONSTRAINT_NAME LIKE '%PK_%';

-- Select all Foreign Keys Constraints
SELECT CONSTRAINT_NAME,TABLE_NAME
FROM USER_CONSTRAINTS
WHERE CONSTRAINT_NAME LIKE '%FK_%';

-- Select all Unique Constraints
SELECT CONSTRAINT_NAME,TABLE_NAME
FROM USER_CONSTRAINTS
WHERE CONSTRAINT_NAME LIKE '%U_%';

-- Select all Check Constraints
SELECT CONSTRAINT_NAME,TABLE_NAME
FROM USER_CONSTRAINTS
WHERE CONSTRAINT_NAME LIKE '%CK_%';

-- Check all Sequences created
SELECT * FROM USER_SEQUENCES;
