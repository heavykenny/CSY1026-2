# CSY2026 - DATABASE 1 Assessment

This is a group activity for the second assessment on Database 1

The original Entity Relationship Model (ERD) was provided by the lecturer

All SQL was written by 
- Kehinde Olawuwo
- Suleyman Hudutcu
- Brandon Haynes
- Mufaro Mandizvidza

### Explanation

#### 1. create_5.sql

This file creates all the tables with the attributes, default, NN and Sequences for primary key autoincrement

#### 2. constraints_5.sql

This file creates all the primary key constraints, foreign key constraints, unique constraints and check con constraints

#### 3. insert_5.sql

This file inserts at least 5 records into each of the tables. It shows different methods of insertion which 
include using column names, insertion without column names and insertion with default values

#### 4. drop_5.sql

This file drops all the foreign key constraints, primary key constraints, unique and check constraints, then all the tables
and finally purge the database.

#### 5. others.sql

This additional file shows tables, primary keys constraints, foreign keys constraints, unique constraints and check constraints
This allows us to validate if all listed above have been successfully created or dropped.

### How to run

- Login in to the ORACLE DATABASE using your credentials
- Run the sql starting with create_5.sql, constraint_5.sql, insert_5.sql, queries_5.sql.
```oraclesqlplus
Example: @scripts\create_5.sql or @/developement/CSY1026-2/create_5.sql
```
- Run drop_5.sql only when you want to delete all records.
- others.sql can be run at any time.
