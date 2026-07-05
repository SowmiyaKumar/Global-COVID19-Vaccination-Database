# Data Dictionary & Access Guide

## Overview

This project uses the **Our World in Data (OWID) Global COVID-19 Vaccination Dataset**, a publicly available, regularly updated dataset that tracks COVID-19 vaccination rollout across countries and regions worldwide.

The dataset includes information on:

* Total vaccinations administered
* First and second doses
* Daily vaccination rates
* Population-adjusted coverage
* Vaccine manufacturers
* Age-group level vaccination statistics
* Country-specific and sub-national (US states) time series

The data supports relational database modelling, SQL analytics, and public-health trend analysis.

---

## Data Source

* **Primary Source:** Our World in Data – COVID-19 Vaccinations
* **Live Repository:** [https://github.com/owid/covid-19-data/tree/master/public/data/vaccinations](https://github.com/owid/covid-19-data/tree/master/public/data/vaccinations)
* **Reference Publication:**
  *Mathieu et al. (2021). A global database of COVID-19 vaccinations.*
  Nature Human Behaviour.
  [https://www.nature.com/articles/s41562-021-01122-8](https://www.nature.com/articles/s41562-021-01122-8)

The dataset is maintained and updated by Our World in Data and is intended for **research, education, and public policy analysis**.

---

## Licensing & Usage

* **Dataset License:** Creative Commons Attribution 4.0 International (CC BY 4.0)
* **License URL:** [https://creativecommons.org/licenses/by/4.0/](https://creativecommons.org/licenses/by/4.0/)

You are free to:

* Share
* Adapt
* Redistribute

**Provided that appropriate attribution is given** to *Our World in Data*.

> This repository does **not** redistribute the full raw dataset where file size exceeds GitHub limits.
> Instead, it provides schema, SQL scripts, and instructions to reproduce the database locally.

---

## Data Access Strategy 

Due to GitHub file size constraints, **large database files (`.db`) are excluded** from version control.

To reproduce the database locally:

1. Download the CSV files directly from the OWID repository
2. Place them inside the `data/raw/` directory
3. Run the provided SQL schema and ingestion scripts

This ensures:

* License compliance
* Reproducibility
* Lightweight repository size

---

## Dataset Files Description

| File Name                          | Description                                                                                                |
| ---------------------------------- | ---------------------------------------------------------------------------------------------------------- |
| `locations.csv`                    | Country names and vaccine types administered. Each row represents the most recent observation per country. |
| `vaccinations.csv`                 | Country-by-country daily vaccination data (core dataset).                                                  |
| `vaccinations-by-age-group.csv`    | Vaccination statistics segmented by age group for each country.                                            |
| `vaccinations-by-manufacturer.csv` | Daily vaccination counts by vaccine manufacturer per country.                                              |
| `us_state_vaccinations.csv`        | Sub-national vaccination time series for US states.                                                        |
| `country_data/Wales.csv`           | Daily vaccination data specific to Wales.                                                                  |
| `country_data/Canada.csv`          | Daily vaccination data specific to Canada.                                                                 |
| `country_data/United States.csv`   | Daily vaccination data specific to the US.                                                                 |
| `country_data/Denmark.csv`         | Daily vaccination data specific to Denmark.                                                                |

> File availability and structure are subject to updates by Our World in Data.

---

## Relational Database Design (Project Use)

In this project:

* CSV files were normalised into a **relational schema**
* Primary and foreign keys were designed to support:

  * Time-series analysis
  * Manufacturer-level aggregation
  * Age-group comparisons
  * Country and sub-national queries

The database was implemented using **SQLite**, with:

* Normalised tables
* Referential integrity constraints
* Optimised analytical SQL queries

See:

* `Database.sql` – schema definition
* `Queries.sql` – analytical SQL queries
* `Model.pdf` – ER diagram and design rationale

---

## Reproducibility Instructions

To fully reproduce the database:

```bash
# 1. Clone repository
git clone https://github.com/<your-username>/Global-COVID19-Vaccination-Database.git

# 2. Download datasets from OWID
https://github.com/owid/covid-19-data/tree/master/public/data/vaccinations

# 3. Place CSVs into:
data/raw/

# 4. Create database
sqlite3 Vaccinations.db < Database.sql

# 5. Run analytical queries
sqlite3 Vaccinations.db < Queries.sql
```

---


## Attribution

If you reuse or adapt this work, please cite:

> Our World in Data (2021). Global COVID-19 Vaccination Dataset.
> Mathieu et al., *Nature Human Behaviour*.
> [https://ourworldindata.org/covid-vaccinations](https://ourworldindata.org/covid-vaccinations)

