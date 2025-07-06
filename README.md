# Task_8_Sp-and-Function
This task focuses on creating **Stored Procedures and Functions** in MySQL using the Library Management System project.


## 📌 Objectives

- Understand the concept and syntax of Stored Procedures and Functions.
- Create reusable logic to encapsulate repetitive or business-critical SQL.
- Practice writing parameterized queries.


## 🛠️ What We Implemented

### 🔹 Stored Procedure: `GetLoanHistoryByMember`
- **Input:** MemberID (INT)
- **Output:** List of books issued to that member with loan & return dates.

- **Usage:**
CALL GetLoanHistoryByMember(2);

### 🔹 Stored Function: `TotalLoansByStaff`
- **Input:** StaffID (INT)
- **Returns:** Number of books issued by that staff member.

- **Usage:**
SELECT TotalLoansByStaff(1);

## 🧾 Rules & Best Practices for Procedures & Functions

- ✅ Use `DELIMITER //` when creating multi-line routines in MySQL CLI or Workbench.
- ✅ Always provide meaningful names for input parameters (`p_staffId`, not just `id`).
- ✅ Use `BEGIN...END` for logic blocks even if there is only one statement.
- ✅ `Procedures` can include multiple `SELECT`, `INSERT`, `UPDATE`, or `DELETE` statements.
- ✅ `Functions` must return exactly **one value** using `RETURN`.
- ❌ Functions should **not modify tables** (no INSERT, DELETE).
- ✅ Use `DETERMINISTIC` for functions when output is consistent for same input.
- ✅ Use `IF`, `CASE`, and `LOOP` for logic inside procedures.
- ✅ Always test using `CALL` for procedures and `SELECT` for functions.
- ✅ Drop procedures/functions using:
