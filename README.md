# Global COVID-19 Vaccination Database & Analytics

## 📌 Project Overview

This project presents a **relational database design and analytical SQL implementation** built on a publicly available global COVID-19 vaccination dataset. The objective was to transform raw, large-scale public health data into a **well-normalised, query-efficient relational database** capable of supporting meaningful analytical questions around vaccination rollout, coverage, and trends across countries and time.

The project demonstrates applied skills in **data modelling, SQL querying, relational integrity, and analytical reasoning**.

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

This project includes a set of analytical SQL queries designed to answer policy-relevant questions about COVID-19 vaccination rollout using a normalized relational database. Analysis focuses on Canada, Denmark, United States, and Wales, as required by the assignment.

* Month-over-Month Vaccination Growth

   <img width="368" height="108" alt="image" src="https://github.com/user-attachments/assets/64c98dfb-8af6-489b-a804-ef39066c880f" />

* Countries Exceeding Average Monthly Vaccination Levels

  <img width="728" height="237" alt="image" src="https://github.com/user-attachments/assets/aa2d222c-f17a-440e-9998-0888e12f7707" />

* Vaccine Manufacturer Distribution by Country

  <img width="713" height="411" alt="image" src="https://github.com/user-attachments/assets/1eee70c1-d393-4489-a000-76fd2a7481c4" />

* Data Source Contribution Analysis

  <img width="660" height="365" alt="image" src="https://github.com/user-attachments/assets/a4910da2-78b2-48c3-b930-04545769670a" />

* Fully Vaccinated Population Trends (2022–2023)

  <img width="764" height="225" alt="image" src="https://github.com/user-attachments/assets/121fd634-6f2f-4ad9-bd63-21be92d63330" />
 
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
│
├── sql/
│   ├── Database.sql          # Schema creation (DDL)
│   ├── Queries.sql           # Analytical SQL queries
│
├── docs/
│   ├── Model.pdf             # ER & relational design
│   ├── Queries.pdf           # Query explanations & outputs
│   
│
├── data/
│   └── README.md             # Data source & access instructions
└── 
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




