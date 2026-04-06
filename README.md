# SQL Course - Bro Code (MySQL)

Practice exercises and notes from the complete SQL course by [Bro Code](https://www.youtube.com/@BroCodez).

**Original Video:** [SQL Full Course for free](https://youtu.be/5OdVJbNCSso)

---

## About

This repository is a structured reference guide and collection of practice exercises covering the entire MySQL curriculum from Bro Code's free SQL course. It serves as a quick-reference guide spanning from basic database setup and CRUD operations to advanced architectural concepts like Triggers and Stored Procedures.

Every SQL file contains hands-on examples with detailed header comments explaining the topic, the commands used, and practical tips.

---

## Table of Contents

- [Setup](#setup)
- [Project Structure](#project-structure)
- [Course Content](#course-content)
  - [1. Introduction & Fundamentals](#1-introduction--fundamentals)
  - [2. DDL - Data Definition Language (Structure)](#2-ddl---data-definition-language-structure)
  - [3. DML - Data Manipulation Language (CRUD)](#3-dml---data-manipulation-language-crud)
  - [4. Constraints & Keys](#4-constraints--keys)
  - [5. Filtering & Sorting](#5-filtering--sorting)
  - [6. Joins (Relationships)](#6-joins-relationships)
  - [7. Functions & Grouping](#7-functions--grouping)
  - [8. Advanced Topics](#8-advanced-topics)
- [Author](#author)

---

## Setup

### Prerequisites

- [MySQL Server](https://dev.mysql.com/downloads/mysql/) - The database engine
- [MySQL Workbench](https://dev.mysql.com/downloads/workbench/) - The visual client / IDE for MySQL

### Step by Step

1. **Install MySQL Server** - Download from the link above and follow the installer for your OS. Set a root password during installation and remember it.

2. **Install MySQL Workbench** - Download and install the visual client.

3. **Start MySQL Server** - The installer usually sets it up as a service that starts automatically. If not:
   - **Windows:** Open Services (`services.msc`) and start `MySQL80` (or your version)
   - **Linux:** `sudo systemctl start mysql`
   - **macOS:** `brew services start mysql`

4. **Connect via MySQL Workbench** - Open Workbench, create a new connection:
   - Hostname: `localhost` (or `127.0.0.1`)
   - Port: `3306` (default)
   - Username: `root`
   - Password: the one you set during installation

5. **Run the exercises** - Open the SQL files in order (see [Project Structure](#project-structure)) and execute them statement by statement in Workbench. Each file builds on previous ones, so follow the numbered sequence.

> **Tip:** In MySQL Workbench, you can run a single statement by placing the cursor on it and pressing `Ctrl+Enter`, or run all statements with `Ctrl+Shift+Enter`.

---

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

---

## Course Content

### 1. Introduction & Fundamentals

> Files: `01-fundamentals/`

**Relational vs Non-Relational Databases**

| Relational (SQL) | Non-Relational (NoSQL) |
|---|---|
| Data organized in tables (rows & columns) | Data stored as key-value pairs, documents, etc. |
| Tables connected by keys (relationships) | No fixed schema, flexible structure |
| MySQL, PostgreSQL, SQL Server | MongoDB, Redis, Cassandra |
| Uses SQL language for queries | Each has its own query method |

**RDBMS (Relational Database Management System):**
- **MySQL Server** is the database engine that stores and processes data
- **MySQL Workbench** is the visual client used to write and execute SQL queries

---

### 2. DDL - Data Definition Language (Structure)

> Files: `01-fundamentals/01-create-database.sql`, `01-fundamentals/02-create-tables.sql`

DDL commands define and modify the **structure** of the database (not the data itself).

**Database Operations:**
```sql
CREATE DATABASE myDB;
DROP DATABASE myDB;
ALTER DATABASE myDB READ ONLY = 1;
```

**Table Operations:**
```sql
CREATE TABLE employees (
  employee_id INT,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  hourly_pay DECIMAL(5, 2),
  hire_date DATE
);

DROP TABLE employees;

ALTER TABLE employees ADD phone_number VARCHAR(20);
ALTER TABLE employees RENAME COLUMN phone_number TO email;
ALTER TABLE employees MODIFY COLUMN email VARCHAR(100);
ALTER TABLE employees MODIFY email VARCHAR(100) AFTER last_name;
ALTER TABLE employees DROP COLUMN email;
```

**Common Data Types:**

| Type | Description | Example |
|---|---|---|
| `INT` | Whole numbers | `1`, `42`, `1000` |
| `VARCHAR(size)` | Variable-length text | `'John'`, `'hello world'` |
| `DECIMAL(d, p)` | Fixed-point decimal | `99.99`, `1000.50` |
| `DATE` | Date only (YYYY-MM-DD) | `'2026-01-15'` |
| `DATETIME` | Date + time | `'2026-01-15 14:30:00'` |

---

### 3. DML - Data Manipulation Language (CRUD)

> Files: `01-fundamentals/03-insert-data.sql` through `05-update-delete.sql`

DML commands operate on the **data** inside tables. The four core CRUD operations:

**Create (Insert):**
```sql
INSERT INTO employees VALUES (1, 'John', 'Doe', 10.99, '2026-01-01');

INSERT INTO employees VALUES
  (2, 'Jane', 'Smith', 12.50, '2025-05-15'),
  (3, 'Alice', 'Johnson', 15.00, '2024-09-30');

INSERT INTO employees (employee_id, first_name, last_name)
VALUES (6, 'Eve', 'Wilson');
```

**Read (Select):**
```sql
SELECT * FROM employees;
SELECT first_name, last_name FROM employees;
SELECT * FROM employees WHERE employee_id = 3;
SELECT * FROM employees WHERE hourly_pay >= 15;
SELECT * FROM employees WHERE hire_date IS NULL;
```

**Update:**
```sql
UPDATE employees
SET hourly_pay = 10.25, hire_date = '2024-01-01'
WHERE employee_id = 5;
```

**Delete:**
```sql
DELETE FROM employees WHERE employee_id = 5;
```

> **Warning:** Running `DELETE FROM employees;` without a `WHERE` clause will delete **every row** in the table. Always double-check your WHERE clause!

---

### 4. Constraints & Keys

> Files: `02-constraints/`

Constraints are rules enforced on data columns to guarantee integrity and consistency.

| Constraint | File | What It Does |
|---|---|---|
| `NOT NULL` | `01-not-null.sql` | Prevents `NULL` values in the column |
| `UNIQUE` | `02-unique.sql` | Prevents duplicate values in the column |
| `CHECK` | `03-check.sql` | Enforces a custom boolean condition |
| `DEFAULT` | `04-default.sql` | Sets a default value when omitted in INSERT |
| `PRIMARY KEY` | `05-primary-key.sql` | Unique identifier for each row (NOT NULL + UNIQUE) |
| `AUTO_INCREMENT` | `06-auto-increment.sql` | Auto-generates sequential IDs |
| `FOREIGN KEY` | `07-foreign-key.sql` | Links a column to a PRIMARY KEY in another table |
| `ON DELETE` | `08-on-delete.sql` | Defines cascade behavior when parent row is deleted |

**Examples:**
```sql
CREATE TABLE products (
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(255) UNIQUE,
  price DECIMAL(10, 2) NOT NULL DEFAULT 0,
  CHECK (price >= 0)
);

CREATE TABLE transactions (
  transaction_id INT PRIMARY KEY AUTO_INCREMENT,
  amount DECIMAL(10, 2),
  customer_id INT,
  FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
    ON DELETE SET NULL
);
```

**ON DELETE options:**
- `ON DELETE SET NULL` - Sets the foreign key to `NULL` in child rows when the parent is deleted
- `ON DELETE CASCADE` - Automatically deletes all child rows when the parent is deleted

---

### 5. Filtering & Sorting

> Files: `03-filtering-and-sorting/`

**Logical Operators:**

| Operator | Description | Example |
|---|---|---|
| `AND` | Both conditions must be true | `WHERE age > 18 AND city = 'SP'` |
| `OR` | At least one condition must be true | `WHERE city = 'SP' OR city = 'RJ'` |
| `NOT` | Negates a condition | `WHERE NOT job = 'Manager'` |
| `BETWEEN` | Within a range (inclusive) | `WHERE salary BETWEEN 1000 AND 5000` |
| `IN` | Matches any value in a list | `WHERE department IN ('IT', 'HR')` |

**Wildcards (with `LIKE`):**

| Wildcard | Meaning | Example | Matches |
|---|---|---|---|
| `%` | Any number of characters | `LIKE 'A%'` | Alice, Adam, A... |
| `%` | (any position) | `LIKE '%son'` | Johnson, Wilson, ...son |
| `_` | Exactly one character | `LIKE '_a%'` | David, James, ?a... |

**Sorting & Pagination:**
```sql
SELECT * FROM employees ORDER BY last_name ASC;
SELECT * FROM employees ORDER BY hire_date DESC;
SELECT * FROM customers ORDER BY last_name LIMIT 3;
SELECT * FROM customers LIMIT 2, 1;
```

---

### 6. Joins (Relationships)

> Files: `05-joins/`

Joins combine data from two or more tables based on a related column.

| Join Type | File | Returns |
|---|---|---|
| `INNER JOIN` | `01-inner-left-right-join.sql` | Only rows with matches in **both** tables |
| `LEFT JOIN` | `01-inner-left-right-join.sql` | **All** rows from the left table + matched rows from right |
| `RIGHT JOIN` | `01-inner-left-right-join.sql` | **All** rows from the right table + matched rows from left |
| `SELF JOIN` | `02-self-join.sql` | Table joined to itself (hierarchies like employee -> supervisor) |
| `UNION` | `03-unions.sql` | Combines results of two SELECTs (removes duplicates) |
| `UNION ALL` | `03-unions.sql` | Combines results of two SELECTs (keeps duplicates) |

**Example:**
```sql
SELECT transaction_id, amount, first_name, last_name
FROM transactions
  INNER JOIN customers
    ON transactions.customer_id = customers.customer_id;
```

> **Note:** `UNION` and `UNION ALL` require both SELECTs to return the same number of columns with compatible data types.

---

### 7. Functions & Grouping

> Files: `04-functions-and-grouping/`

**Aggregate Functions:**

| Function | Returns | Example |
|---|---|---|
| `COUNT(col)` | Number of non-null values | `SELECT COUNT(amount) FROM transactions` |
| `MAX(col)` | Maximum value | `SELECT MAX(salary) FROM employees` |
| `MIN(col)` | Minimum value | `SELECT MIN(salary) FROM employees` |
| `AVG(col)` | Average value | `SELECT AVG(salary) FROM employees` |
| `SUM(col)` | Total sum | `SELECT SUM(amount) FROM transactions` |

**String Functions:**
```sql
SELECT CONCAT(first_name, ' ', last_name) AS "Full Name" FROM employees;
```

**Date & Time Functions:**
```sql
SELECT CURRENT_DATE();
SELECT CURRENT_TIME();
SELECT NOW();
```

**Grouping:**
```sql
SELECT customer_id, SUM(amount)
FROM transactions
GROUP BY customer_id
HAVING COUNT(amount) > 1;
```

- `GROUP BY` - Groups rows with identical values in the specified column(s)
- `HAVING` - Filters groups **after** aggregation (like `WHERE` but for groups)
- `WITH ROLLUP` - Adds a super-aggregate summary row at the end with the grand total

```sql
SELECT SUM(amount), order_date
FROM transactions
GROUP BY order_date WITH ROLLUP;
```

---

### 8. Advanced Topics

> Files: `06-advanced/`

#### Transactions
> File: `06-transactions.sql`

```sql
SET AUTOCOMMIT = OFF;
DELETE FROM employees;
ROLLBACK;
COMMIT;
```

- `AUTOCOMMIT = OFF` - Changes are **not** saved automatically
- `COMMIT` - Saves all pending changes permanently
- `ROLLBACK` - Undoes all uncommitted changes since the last COMMIT
- Essential for protecting against accidental data modifications

#### Subqueries
> File: `01-subqueries.sql`

A subquery is a `SELECT` nested inside another query. It can appear in `SELECT`, `FROM`, or `WHERE` clauses.

```sql
SELECT first_name, hourly_pay,
  (SELECT AVG(hourly_pay) FROM employees) AS avg_pay
FROM employees;

SELECT first_name FROM customers
WHERE customer_id IN (
  SELECT DISTINCT customer_id FROM transactions
  WHERE customer_id IS NOT NULL
);
```

#### Views
> File: `02-views.sql`

A **view** is a saved `SELECT` query that behaves like a virtual table.

```sql
CREATE VIEW employee_attendance AS
SELECT first_name, last_name FROM employees;

SELECT * FROM employee_attendance ORDER BY last_name ASC;
DROP VIEW employee_attendance;
```

- Does not store data separately (updates in real time)
- Simplifies complex queries
- Can be queried, dropped, and in some cases inserted into

#### Indexes
> File: `03-indexes.sql`

An **index** creates a B-Tree structure on a column to dramatically speed up `SELECT` queries on large tables.

```sql
CREATE INDEX last_name_idx ON customers(last_name);
CREATE INDEX last_name_first_name_idx ON customers(last_name, first_name);
SHOW INDEXES FROM customers;
ALTER TABLE customers DROP INDEX last_name_idx;
```

- Makes `SELECT` with `WHERE` on the indexed column much faster
- **Trade-off:** Slows down `INSERT`, `UPDATE`, and `DELETE` (index must be maintained)
- Composite indexes cover multiple columns

#### Stored Procedures
> File: `04-stored-procedures.sql`

A **stored procedure** is a saved, parameterized block of SQL that can be called repeatedly.

```sql
DELIMITER $$
CREATE PROCEDURE find_customer(IN id INT)
BEGIN
  SELECT * FROM customers WHERE customer_id = id;
END $$
DELIMITER;

CALL find_customer(1);
DROP PROCEDURE find_customer;
```

- Accepts `IN` parameters for dynamic queries
- Reduces network traffic (less data sent over the wire)
- Improves security (logic stays in the database)

#### Triggers
> File: `05-triggers.sql`

A **trigger** is an automated action that fires `BEFORE` or `AFTER` an `INSERT`, `UPDATE`, or `DELETE` event.

```sql
CREATE TRIGGER before_hourly_pay_update
BEFORE UPDATE ON employees
FOR EACH ROW
SET NEW.salary = (NEW.hourly_pay * 2080);
```

- `NEW.column_name` - Refers to the new value being inserted or updated
- `OLD.column_name` - Refers to the old value before the update or delete
- Common use cases: auto-calculating derived columns, auditing changes, maintaining aggregate tables

| Trigger Timing | When It Fires |
|---|---|
| `BEFORE INSERT` | Before a new row is inserted |
| `BEFORE UPDATE` | Before a row is updated |
| `AFTER INSERT` | After a new row is inserted |
| `AFTER UPDATE` | After a row is updated |
| `AFTER DELETE` | After a row is deleted |

---

## Author

**Miguel**

- Website: [miguelito.dev](https://miguelito.dev)
- GitHub: [github.com/rniguel](https://github.com/rniguel)
- LinkedIn: [linkedin.com/in/rniguel](https://linkedin.com/in/rniguel)

---

## Credits

- Course: [SQL Full Course for free by Bro Code](https://youtu.be/5OdVJbNCSso)
- Channel: [Bro Code on YouTube](https://www.youtube.com/@BroCodez)
