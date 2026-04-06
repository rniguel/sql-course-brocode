# SQL Course - Bro Code (MySQL)

Practice exercises from the [SQL Full Course for free](https://youtu.be/5OdVJbNCSso) by [Bro Code](https://www.youtube.com/@BroCodez).

## Setup

1. Install [MySQL Server](https://dev.mysql.com/downloads/mysql/) and [MySQL Workbench](https://dev.mysql.com/downloads/workbench/)
2. Start the MySQL service
3. Open MySQL Workbench and connect to your local instance
4. Run the files in order (see structure below)

## Project Structure

```
01-fundamentals/           Database & table basics, CRUD operations
  01-create-database.sql     CREATE/DROP/ALTER DATABASE
  02-create-tables.sql       CREATE TABLE, ALTER TABLE (add/rename/modify/drop columns)
  03-insert-data.sql         INSERT INTO (single & multiple rows)
  04-select-data.sql         SELECT, WHERE, comparison operators, IS NULL
  05-update-delete.sql       UPDATE SET, DELETE FROM

02-constraints/            Data integrity constraints and keys
  01-not-null.sql            NOT NULL constraint
  02-unique.sql              UNIQUE constraint
  03-check.sql               CHECK constraint
  04-default.sql             DEFAULT constraint
  05-primary-key.sql         PRIMARY KEY
  06-auto-increment.sql      AUTO_INCREMENT
  07-foreign-key.sql         FOREIGN KEY
  08-on-delete.sql           ON DELETE SET NULL / CASCADE

03-filtering-and-sorting/  Advanced filtering, pattern matching, ordering
  01-logic-operators.sql     AND, NOT, BETWEEN, IN
  02-wildcards.sql           LIKE with % and _
  03-order-by.sql            ORDER BY ASC/DESC, multi-column sort
  04-limit.sql               LIMIT, offset pagination

04-functions-and-grouping/ Aggregate functions and grouping
  01-functions.sql           COUNT, MAX, MIN, AVG, SUM, CONCAT
  02-group-by.sql            GROUP BY, HAVING
  03-rollup.sql              GROUP BY WITH ROLLUP (subtotals)
  04-current-date.sql        CURRENT_DATE, CURRENT_TIME, NOW()

05-joins/                  Table relationships and combining results
  01-inner-left-right-join.sql  INNER JOIN, LEFT JOIN, RIGHT JOIN
  02-self-join.sql              Self join (hierarchies)
  03-unions.sql                 UNION, UNION ALL

06-advanced/               Advanced SQL features
  01-subqueries.sql          Nested SELECT (scalar, IN, NOT IN)
  02-views.sql               CREATE VIEW, DROP VIEW
  03-indexes.sql             CREATE INDEX, SHOW INDEXES, DROP INDEX
  04-stored-procedures.sql   CREATE PROCEDURE, CALL, IN parameters
  05-triggers.sql            BEFORE/AFTER INSERT/UPDATE/DELETE triggers
  06-transactions.sql        AUTOCOMMIT, COMMIT, ROLLBACK
```

## Course Summary

### 1. Introduction & Fundamentals
- **Relational vs Non-Relational Databases:** Data in tables with rows/columns linked by keys (SQL) vs unstructured key-value pairs (NoSQL).
- **RDBMS:** MySQL Server + MySQL Workbench as the client environment.

### 2. DDL (Data Definition Language) - Structure
- **Databases:** `CREATE DATABASE`, `DROP DATABASE`, `ALTER DATABASE` (e.g., `READ ONLY`).
- **Tables:** `CREATE TABLE`, `DROP TABLE`, `ALTER TABLE` (add, modify, remove columns).
- **Common Data Types:** `INT`, `VARCHAR(size)`, `DECIMAL(digits, precision)`, `DATE`, `DATETIME`.

### 3. DML (Data Manipulation Language) - CRUD
- **Create:** `INSERT INTO table (columns) VALUES (values);`
- **Read:** `SELECT columns FROM table WHERE condition;`
- **Update:** `UPDATE table SET column = value WHERE condition;`
- **Delete:** `DELETE FROM table WHERE condition;` *(Always use WHERE!)*

### 4. Constraints & Keys
- **`UNIQUE`:** No duplicate values in the column.
- **`NOT NULL`:** Column cannot be empty.
- **`CHECK`:** Enforces a custom condition (e.g., `salary >= 0`).
- **`DEFAULT`:** Fills a default value when omitted.
- **`PRIMARY KEY`:** Unique identifier (not null + unique).
- **`AUTO_INCREMENT`:** Auto-generates sequential IDs.
- **`FOREIGN KEY`:** Links to a PRIMARY KEY in another table.

### 5. Filtering & Sorting
- **Logical Operators:** `AND`, `OR`, `NOT`, `BETWEEN`, `IN`.
- **Wildcards (`LIKE`):** `%` = any characters, `_` = exactly one character.
- **Sorting:** `ORDER BY column ASC/DESC`.
- **Pagination:** `LIMIT n` or `LIMIT offset, n`.
- **Combining:** `UNION` (distinct) / `UNION ALL` (with duplicates).

### 6. Joins
- **`INNER JOIN`:** Matches in both tables.
- **`LEFT JOIN`:** All rows from left table + matches from right.
- **`RIGHT JOIN`:** All rows from right table + matches from left.
- **`SELF JOIN`:** Table joined to itself (hierarchies).

### 7. Functions & Grouping
- **Aggregates:** `COUNT()`, `MAX()`, `MIN()`, `AVG()`, `SUM()`.
- **Strings:** `CONCAT(str1, str2)`.
- **Dates:** `CURRENT_DATE()`, `CURRENT_TIME()`, `NOW()`.
- **Grouping:** `GROUP BY`, `HAVING` (filter groups), `WITH ROLLUP` (subtotals).

### 8. Advanced Topics
- **Transactions:** `COMMIT` (save), `ROLLBACK` (undo), `AUTOCOMMIT = OFF`.
- **ON DELETE:** `CASCADE` (delete children) / `SET NULL` (nullify FK).
- **Views:** Saved queries that act as virtual tables.
- **Indexes:** B-Tree structures for fast lookups (slower writes).
- **Subqueries:** Nested `SELECT` inside `WHERE`, `IN()`, etc.
- **Stored Procedures:** Saved parameterized SQL blocks (`CALL name()`).
- **Triggers:** Auto-fired actions `BEFORE`/`AFTER` `INSERT`/`UPDATE`/`DELETE` using `NEW.col` and `OLD.col`.

---

## Author

**Miguel**

- Website: [miguelito.dev](https://miguelito.dev)
- GitHub: [github.com/rniguel](https://github.com/rniguel)
- LinkedIn: [linkedin.com/in/rniguel](https://linkedin.com/in/rniguel)
