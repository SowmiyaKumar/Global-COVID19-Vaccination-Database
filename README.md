# Global COVID-19 Vaccination Database & Analytics
Designed and normalised a scalable 3NF relational database to support country-, state-, age-group-, and manufacturer-level COVID-19 vaccination analytics using real-world public health data.


---

## 📌 Project Overview

This project designs and implements a **relational database system** to store, manage, and analyse **global COVID-19 vaccination data**.
The goal was to transform raw vaccination datasets into a **normalized, query-optimized relational schema** and derive **meaningful analytical insights** using SQL.

The project demonstrates **end-to-end database design**, from conceptual modeling to physical implementation and analytical querying.

---

## 🎯 Problem Statement

Global COVID-19 vaccination data is large, heterogeneous, and often difficult to analyse directly.
This project addresses the challenge by:

* Designing a **well-structured relational schema**
* Enforcing **data integrity and normalization**
* Supporting **analytical SQL queries** for policy and health insights
* Enabling reproducible querying via a portable database file

---

## 👩‍💻 My Role

**Role:** Solo project
**Responsibilities:**

* Conceptual & logical database design
* Schema normalization (3NF)
* SQL DDL & DML implementation
* Analytical SQL query development
* Validation of results against real-world vaccination trends

---

## 🗂 Dataset

**Source:** Public global COVID-19 vaccination datasets (as provided in course materials)
**Type:** Structured tabular data
**Storage:** SQLite relational database

### Key Entities

* Countries / Regions
* Vaccination types
* Vaccination metrics (daily, cumulative)
* Population context

---

## 🛠️ Tech Stack

* **Database:** SQLite
* **Query Language:** SQL
* **Design Tools:** ER modeling (conceptual & logical)
* **Documentation:** PDF reports (model + queries)

---

## 🧠 Database Design Approach

### 1️⃣ Conceptual Design

* Identified core entities and relationships
* Defined primary and foreign keys
* Modeled real-world vaccination processes

📄 *See:* `Model.pdf`

---

### 2️⃣ Logical & Physical Design

* Converted ER model into normalized relational tables
* Applied **3rd Normal Form (3NF)** to reduce redundancy
* Enforced referential integrity using constraints

📄 *See:* `Database.sql`

---

### 3️⃣ Database Implementation

* Created tables using SQL DDL
* Populated data using structured inserts
* Packaged as a portable SQLite database

📄 *See:* `Vaccinations.db`

---

## 📈 Analytical SQL Queries

The project includes **complex analytical queries** answering real-world questions such as:

* Vaccination progress by country and region
* Fully vaccinated vs partially vaccinated population
* Temporal vaccination trends
* Comparative analysis between regions

📄 *See:*

* `Queries.sql` (executable SQL)
* `Queries.pdf` (documented explanations)

---

## ✅ Validation & Insights

* Verified results against known global vaccination patterns
* Ensured aggregation accuracy using GROUP BY and JOIN logic
* Queries return **consistent, explainable outputs** suitable for reporting

---

## 📊 Final Output

* Fully functional **SQLite database**
* Reproducible **SQL analytics**
* Clear **documentation** for schema and queries

---

## 📁 Repository Structure 

```text
Global-COVID19-Vaccination-Database/
│
├── README.md
├── Database.sql              # Schema creation
├── Queries.sql               # Analytical queries
├── Vaccinations.db           # SQLite database
│
├── docs/
│   ├── Model.pdf             # ER & relational model
│   ├── Queries.pdf           # Query explanations
│   └── Assignment_Spec.pdf   # Original assignment brief
```

---

## 🔗 How to Run

1. Open `Vaccinations.db` using:

   * DB Browser for SQLite, or
   * SQLite CLI
2. Execute queries from `Queries.sql`
3. Compare outputs with explanations in `Queries.pdf`





