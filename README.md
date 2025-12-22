# Global COVID-19 Vaccination Database & Analytics

## 📌 Project Overview

This project presents a **relational database design and analytical SQL implementation** built on a publicly available global COVID-19 vaccination dataset. The objective was to transform raw, large-scale public health data into a **well-normalised, query-efficient relational database** capable of supporting meaningful analytical questions around vaccination rollout, coverage, and trends across countries and time.

The project was completed as part of **ISYS1055 – Database Concepts (Semester 1, 2024)** at RMIT University and demonstrates applied skills in **data modelling, SQL querying, relational integrity, and analytical reasoning**.

---

## 🎯 Problem Statement

Public COVID-19 vaccination data is large, multi-dimensional, and often distributed as flat files, which limits analytical flexibility and performance.

**This project addresses the problem by:**

* Designing a **normalised relational schema** for vaccination data
* Enforcing **primary key / foreign key constraints**
* Supporting **complex analytical SQL queries**
* Ensuring **data integrity, scalability, and reproducibility**

---

## 👤 My Role

**Role:** Solo project
**Responsibilities:**

* Relational database modelling (ER & logical design)
* Schema normalisation (up to 3NF)
* SQL DDL and DML implementation
* Analytical SQL query development
* Documentation and reporting

---

## 📊 Dataset

* **Source:**
  Our World in Data – *Global COVID-19 Vaccination Dataset*

* **Original Publication:**
  *A Global Database of COVID-19 Vaccinations* (Nature Human Behaviour)

* **Data Characteristics:**

  * Global coverage (169+ countries)
  * Daily vaccination records
  * Metrics include:

    * Total vaccinations
    * People vaccinated (first dose)
    * Fully vaccinated
    * Daily vaccination rates
    * Population-adjusted coverage

* **Data Type:** Public, aggregated, time-series

* **Format Used:** CSV → Relational Database (SQLite)

---

## 🧰 Tech Stack

* **Database:** SQLite
* **Languages:** SQL
* **Design Tools:** ER modelling (conceptual & logical)
* **Artifacts:**

  * `.sql` schema scripts
  * Analytical query scripts
  * PDF documentation

---

## 🏗️ Database Design

### Key Design Principles

* Normalised schema to reduce redundancy
* Clear separation of:

  * Country metadata
  * Daily vaccination records
  * Vaccine metrics
* Enforced referential integrity using foreign keys
* Optimised for analytical querying

### Core Tables 

* `Source`
* `Date`
* `Vaccine`
* `Location`
* `Age`

> Full schema and ER diagrams are included in `/docs/Model.pdf`

---

## 🔄 Approach

### 1. Data Understanding

* Analysed raw COVID vaccination structure
* Identified repeating attributes and time-variant fields

### 2. Relational Modelling

* Designed ER diagram
* Converted to logical relational schema
* Applied normalisation rules (1NF → 3NF)

### 3. Database Implementation

* Created schema using SQL DDL
* Applied primary and foreign key constraints
* Loaded cleaned vaccination data

### 4. Analytical SQL Queries

Implemented queries to answer questions such as:

* Countries with highest vaccination coverage
* Daily vs cumulative vaccination trends
* Comparative vaccination progress across regions
* Temporal growth patterns

### 5. Validation

* Verified referential integrity
* Ensured query correctness and performance
* Cross-checked outputs against source data

---

## 📈 Results & Insights

* Successfully transformed flat public health data into a **query-ready relational database**
* Enabled **multi-table analytical queries** not feasible in CSV form
* Demonstrated scalable design suitable for ongoing data updates
* Improved analytical clarity through structured modelling

> This project focuses on **data modelling and analytical correctness** rather than predictive modelling.

---

## 📂 Repository Structure

```
Global-COVID19-Vaccination-Database/
│
├── README.md
├── LICENSE
│
├── sql/
│   ├── Database.sql          # Schema creation (DDL)
│   ├── Queries.sql           # Analytical SQL queries
│
├── docs/
│   ├── Model.pdf             # ER & relational design
│   ├── Queries.pdf           # Query explanations & outputs
│   └── Assignment_Spec.pdf   # Assessment brief
│
├── data/
│   └── README.md             # Data source & access instructions
│
└── .gitignore
```

---

## 🔁 Reproducibility

To reproduce this project locally:

1. Download the vaccination dataset from:

   ```
   https://github.com/owid/covid-19-data/tree/master/public/data/vaccinations
   ```

2. Create the database:

   ```sql
   sqlite3 vaccinations.db < sql/Database.sql
   ```

3. Load the dataset (CSV import via SQLite or DB tool)

4. Run analytical queries:

   ```sql
   sqlite3 vaccinations.db < sql/Queries.sql
   ```

> Note: The `.db` file is excluded due to size and academic restrictions.

---

## 📜 Licensing & Academic Use

### Dataset License

* Dataset © **Our World in Data**
* Licensed under **Creative Commons BY 4.0**
* Attribution required for reuse

### Project License

This repository is licensed under the **MIT License**.

> Academic submissions are shared **for portfolio and learning purposes only**.
> This project does **not** include proprietary assessment solutions beyond permitted artefacts.


---

## 📌 Notes on Academic Integrity

* This repository contains **original work**
* Shared in compliance with RMIT’s *Trusted* classification
* No grading rubrics, marking guides, or confidential feedback included



