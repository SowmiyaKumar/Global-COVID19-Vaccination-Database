-- Table: Vaccine
CREATE TABLE Vaccine (
    vaccine_name VARCHAR(50) NOT NULL UNIQUE,
    PRIMARY KEY (vaccine_name)
);

-- Table: Location
CREATE TABLE Location (
    iso_code CHAR(10) NOT NULL UNIQUE,
    location_name VARCHAR(100) NOT NULL,
    type VARCHAR(15),
    PRIMARY KEY (iso_code)
);

-- Table: Source
CREATE TABLE Source (
    source_id INTEGER NOT NULL UNIQUE,
    source_name VARCHAR(100) NOT NULL,
    source_website VARCHAR(255) NOT NULL,
    PRIMARY KEY (source_id),
    UNIQUE (source_name,source_website)
);

-- Table: Date
CREATE TABLE Date (
    date DATE NOT NULL UNIQUE,
    PRIMARY KEY (date)
);

--Table: DataSource
CREATE TABLE DataSource (
    iso_code CHAR(10) NOT NULL,
    source_id INTEGER NOT NULL,
    FOREIGN KEY (iso_code) REFERENCES Location (iso_code),
    FOREIGN KEY (source_id) REFERENCES Source (source_id),
    PRIMARY KEY (iso_code, source_id)
);

--Table: Age
CREATE TABLE Age(
    age_group VARCHAR(10) NOT NULL UNIQUE,
    PRIMARY KEY (age_group)
);

-- Table: VaccinationPerAgeGroup
CREATE TABLE VaccinationPerAgeGroup (
    iso_code CHAR(10) NOT NULL,
    date DATE NOT NULL,
    age_group VARCHAR(10) NOT NULL,
    people_vaccinated_per_hundred DECIMAL(5, 2),
    people_fully_vaccinated_per_hundred DECIMAL(5, 2),
    people_with_booster_per_hundred DECIMAL(5, 2),
    PRIMARY KEY (iso_code, date, age_group),
    FOREIGN KEY (iso_code) REFERENCES Location (iso_code),
    FOREIGN KEY (date) REFERENCES Date (date)
    FOREIGN KEY (age_group) REFERENCES Age (age_group)
);

-- Table: VaccinationData
CREATE TABLE VaccinationData (
    iso_code CHAR(10) NOT NULL,
    date DATE NOT NULL,
    total_vaccinations INTEGER,
    people_vaccinated INTEGER,
    people_fully_vaccinated INTEGER,
    total_boosters INTEGER,
    daily_vaccinations_raw INTEGER,
    daily_vaccinations INTEGER,
    total_vaccinations_per_hundred INTEGER,
    people_vaccinated_per_hundred DECIMAL(5, 2),
    people_fully_vaccinated_per_hundred DECIMAL(5, 2),
    total_boosters_per_hundred DECIMAL(5, 2),
    daily_vaccinations_per_million DECIMAL(10, 2),
    daily_people_vaccinated INTEGER,
    daily_people_vaccinated_per_hundred DECIMAL(5, 2),
    PRIMARY KEY (iso_code, date),
    FOREIGN KEY (iso_code) REFERENCES Location (iso_code),
    FOREIGN KEY (date) REFERENCES Date (date)
);

-- Table: CountryVaccinationByManufacturer
CREATE TABLE CountryVaccinationByManufacturer (
    iso_code CHAR(10) NOT NULL,
    date DATE NOT NULL,
    vaccine_name VARCHAR(50) NOT NULL,
    total_vaccinations INTEGER,
    PRIMARY KEY (iso_code, date, vaccine_name),
    FOREIGN KEY (iso_code) REFERENCES Location (iso_code),
    FOREIGN KEY (date) REFERENCES Date (date),
    FOREIGN KEY (vaccine_name) REFERENCES Vaccine (vaccine_name)
);


-- Table: State
CREATE TABLE State (
    iso_code CHAR(10) NOT NULL,
    state_name VARCHAR(100) NOT NULL,
    PRIMARY KEY (iso_code, state_name),
    FOREIGN KEY (iso_code) REFERENCES Location (iso_code),
    UNIQUE (iso_code, state_name)
);

-- Table: StateVaccinationData
CREATE TABLE StateVaccinationData (
    iso_code CHAR(10) NOT NULL,
    state_name VARCHAR(100) NOT NULL,
    date DATE NOT NULL,
    total_vaccinations INTEGER,
    total_distributed INTEGER,
    people_vaccinated INTEGER,
    people_fully_vaccinated_per_hundred DECIMAL(5, 2),
    people_fully_vaccinated INTEGER,
    people_vaccinated_per_hundred DECIMAL(5, 2),
    distributed_per_hundred DECIMAL(5, 2),
    daily_vaccinations_raw INTEGER,
    daily_vaccinations INTEGER,
    daily_vaccinations_per_million DECIMAL(10, 2),
    share_doses_used DECIMAL(5, 2),
    total_boosters INTEGER,
    total_boosters_per_hundred DECIMAL(5, 2),
    PRIMARY KEY (iso_code, state_name, date),
    FOREIGN KEY (iso_code, state_name) REFERENCES State (iso_code, state_name),
    FOREIGN KEY (date) REFERENCES Date (date)
);

