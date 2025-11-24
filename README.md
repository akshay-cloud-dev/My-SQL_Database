 MySQL Practice Repository

Welcome to my **MySQL Practice Journey** — a professionally structured collection of SQL scripts and examples that I completed during my course.  
This repo is built to be:

- ✅ Beginner-friendly  
- ✅ Interview-ready  
- ✅ Industry-standard  
- ✅ Portfolio-ready


---

## 📘 Topics Covered (at-a-glance)

### 🔹 1. DDL — Data Definition Language
**Files:** `create_tables.sql`, `alter_tables.sql`, `drop_truncate.sql`  
**Includes:** `CREATE`, `ALTER`, `DROP`, `TRUNCATE`, safe column modifications, structure verification.

---

### 🔹 2. DML — Data Manipulation Language
**Files:** `insert_examples.sql`, `update_examples.sql`, `delete_examples.sql`  
**Includes:** `INSERT` (explicit & implicit), `UPDATE`, `DELETE`, safe deletes with `LIMIT`.

---

### 🔹 3. DQL — Data Query Language
**Files:** `groupby_having.sql`, `orderby_limit.sql`  
**Includes:** `SELECT`, `WHERE`, `GROUP BY`, `HAVING`, `ORDER BY`, `LIMIT`, pagination, aggregate functions.

---

### 🔹 4. TCL — Transaction Control Language
**File:** `commit_rollback_savepoint.sql`  
**Includes:** `COMMIT`, `ROLLBACK`, `SAVEPOINT` — transaction safety & control.

---

### 🔹 5. DCL — Data Control Language
**File:** `grant_revoke.sql`  
**Includes:** `GRANT`, `REVOKE`, creating users, viewing permissions.

---

### 🔹 6. JOINS
**Files:** `inner_join.sql`, `left_join.sql`, `right_join.sql`, `full_join.sql`, `union_union_all.sql`  
**Includes:** `INNER`, `LEFT`, `RIGHT`, `FULL` (emulated), `UNION` vs `UNION ALL`.

---

### 🔹 7. Subqueries
**Files:** `simple_subquery.sql`, `derived_table.sql`, `nth_highest_value.sql`  
**Includes:** simple & correlated subqueries, derived tables, Nth-highest examples (with/without window functions).

---

### 🔹 8. Constraints
**Files:** `regular_constraints.sql`, `key_constraints.sql`  
**Includes:** `NOT NULL`, `DEFAULT`, `CHECK`, `PRIMARY KEY`, `UNIQUE`, `FOREIGN KEY`, `AUTO_INCREMENT`.

---

### 🔹 9. Indexes
**Files:** `btree_index.sql`, `hash_index.sql`, `rtree_index.sql`  
**Includes:** BTREE (default), HASH (MEMORY engine), R-TREE (spatial), `SHOW INDEX`.

---

### 🔹 10. Views
**Files:** `updatable_view.sql`, `non_updatable_view.sql`  
**Includes:** updatable views, aggregated/non-updatable views, limitations.

---

### 🔹 11. Stored Procedures
**Files:** `simple_procedure.sql`, `procedure_with_logic.sql`  
**Includes:** IN/OUT params, error handling, business logic (e.g., salary increment).

---

### 🔹 12. Functions
**Files:** `user_defined_functions.sql`, `ranking_functions.sql`  
**Includes:** user-defined functions, monthly→yearly conversion, `RANK()` vs `DENSE_RANK()` (MySQL 8+).

---

### 🔹 13. Triggers
**Files:** `before_insert_trigger.sql`, `after_update_trigger.sql`  
**Includes:** `BEFORE` triggers (normalize/defaults), `AFTER` triggers (audit logs), magic tables `NEW` / `OLD`.

---

## ▶️ Quick Start (recommended order)

1. `01-DDL/create_tables.sql` — create DB & core tables (includes sample seed data).  
2. `02-DML/*` — practice `INSERT`, `UPDATE`, `DELETE`.  
3. `03-DQL/*` — queries, aggregation, pagination.  
4. `06-Joins/*` — practice joining tables.  
5. `07-Subqueries/*` — subqueries & derived tables.  
6. `08-Constraints/*` → `09-Indexes/*` → `10-Views/*`.  
7. `11-Stored_Procedures/*`, `12-Functions/*`, `13-Triggers/*`.  
8. Run `04-TCL/commit_rollback_savepoint.sql` to learn transaction control.  
9. Use `05-DCL/grant_revoke.sql` only with a privileged account.

---
---

## 🛡️ Best Practices demonstrated
- Idempotent scripts (`IF NOT EXISTS`, `DROP IF EXISTS`)  
- Use transactions & savepoints for multi-step changes  
- Limit destructive operations during practice (`LIMIT`)  
- Use window functions and audits (MySQL 8+) for real-world tasks  
- Keep credentials out of source code (never hard-code passwords in production)

---
---

## ⚙️ Requirements
- MySQL Server **8.0+** recommended (for window functions and some features).  
- Workbench / CLI / MySQL Shell for running `.sql` files.

---

## ✨ Want me to:
- Generate all `.sql` files as a ZIP? → **Reply:** `Generate ZIP`  
- Push these files to your GitHub (I can provide the exact commands)? → **Reply:** `Push to my GitHub` and share repo details (or a link).

---
THANK YOU:)
---
