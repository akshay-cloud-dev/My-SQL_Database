🚀 MySQL Practice Repository

Welcome to my MySQL Practice Journey — a professionally structured collection of every SQL concept I learned, organized into clean folders with .sql files, commands, and example outputs.

This repository is designed to be:

✔ Beginner-friendly
✔ Interview-friendly
✔ Industry-standard
✔ Perfect for GitHub portfolio

📂 Repository Structure
MySQL-Practice/
│
├── 01-DDL/
├── 02-DML/
├── 03-DQL/
├── 04-TCL/
├── 05-DCL/
├── 06-Joins/
├── 07-Subqueries/
├── 08-Constraints/
├── 09-Indexes/
├── 10-Views/
├── 11-Stored_Procedures/
├── 12-Functions/
├── 13-Triggers/
└── README.md

📘 Topics Covered

Below is a clean overview of all SQL concepts practiced in this repository.

🔹 1. DDL — Data Definition Language

Files:
create_tables.sql, alter_tables.sql, drop_truncate.sql

Concepts Included:

CREATE

ALTER

DROP

TRUNCATE

Table design

Safe column modifications

Structure verification

🔹 2. DML — Data Manipulation Language

Files:
insert_examples.sql, update_examples.sql, delete_examples.sql

Concepts Included:

INSERT (explicit & implicit)

UPDATE

DELETE

Safe deletion using LIMIT

🔹 3. DQL — Data Query Language

Files:
groupby_having.sql, orderby_limit.sql

Concepts Included:

SELECT

WHERE

GROUP BY

HAVING

ORDER BY

LIMIT

Pagination

Aggregate functions

🔹 4. TCL — Transaction Control Language

File:
commit_rollback_savepoint.sql

Concepts Included:

COMMIT

ROLLBACK

SAVEPOINT

Transaction safety & control

🔹 5. DCL — Data Control Language

File:
grant_revoke.sql

Concepts Included:

GRANT

REVOKE

Creating users

Viewing permissions

🔹 6. JOINS

Files:
inner_join.sql, left_join.sql, right_join.sql, full_join.sql, union_union_all.sql

Concepts Included:

INNER JOIN

LEFT JOIN

RIGHT JOIN

FULL JOIN (via UNION)

UNION vs UNION ALL

🔹 7. Subqueries

Files:
simple_subquery.sql, derived_table.sql, nth_highest_value.sql

Concepts Included:

Simple subqueries

Correlated subqueries

Derived tables

Nth highest salary (with/without window functions)

🔹 8. Constraints

Files:
regular_constraints.sql, key_constraints.sql

Concepts Included:

NOT NULL

DEFAULT

CHECK

PRIMARY KEY

UNIQUE

FOREIGN KEY

AUTO_INCREMENT

🔹 9. Indexes

Files:
btree_index.sql, hash_index.sql, rtree_index.sql

Concepts Included:

BTREE (default index type)

HASH index (Memory engine)

R-TREE (spatial index)

Viewing index details with SHOW INDEX

🔹 10. Views

Files:
updatable_view.sql, non_updatable_view.sql

Concepts Included:

Updatable views

Non-updatable views

Aggregation views

View limitations

🔹 11. Stored Procedures

Files:
simple_procedure.sql, procedure_with_logic.sql

Concepts Included:

IN & OUT parameters

Error handling

Business logic

Salary increment procedure

🔹 12. Functions

Files:
user_defined_functions.sql, ranking_functions.sql

Concepts Included:

User-defined functions

Monthly→Yearly conversion

Ranking functions:

RANK()

DENSE_RANK()

🔹 13. Triggers

Files:
before_insert_trigger.sql, after_update_trigger.sql

Concepts Included:

BEFORE triggers (auto-formatting & default values)

AFTER triggers (audit logs)

Magic tables:

NEW

OLD

🎯 Purpose of This Repository

This repo showcases:

✔ Clean SQL fundamentals
✔ Real-world examples
✔ Best-practice scripts
✔ Query outputs as comments
✔ A perfect SQL learning journey
✔ A professional addition to my GitHub profile

🏁 Final Notes

All scripts run on MySQL 8+

Each folder focuses on one SQL topic

Scripts are idempotent wherever possible

Comments show example outputs