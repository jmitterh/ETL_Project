-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Modify this code to update the DB schema diagram.
-- To reset the sample schema, replace everything with
-- two dots ('..' - without quotes).
DROP TABLE stock;
DROP TABLE weather_damage;
DROP TABLE us_land_temp;
DROP TABLE disaster;
DROP TABLE year;

SELECT * FROM STOCK;
SELECT * FROM us_land_temp;
SELECT * FROM stock;
SELECT * FROM disaster;
SELECT * from year;

CREATE TABLE stock (
    year int   NOT NULL,
    open float   NOT NULL,
    high float   NOT NULL,
    low float   NOT NULL,
    close float   NOT NULL,
    adj_close float   NOT NULL,
    volume float   NOT NULL,
    CONSTRAINT pk_stock PRIMARY KEY (
        year
     )
);

CREATE TABLE weather_damage (
    id int   NOT NULL,
    year_id int   NOT NULL,
    disaster_id int   NOT NULL,
    death_toll varchar   NOT NULL,
    damage_cost varchar   NOT NULL,
    main_article varchar   NOT NULL,
    location varchar   NOT NULL,
    notes varchar   NOT NULL,
    CONSTRAINT pk_weather_damage PRIMARY KEY (
        id
     )
);

CREATE TABLE us_land_temp (
    year int   NOT NULL,
    avg_temp float   NOT NULL,
    avg_temp_uncert float   NOT NULL,
    CONSTRAINT pk_us_land_temp PRIMARY KEY (
        year
     )
);

CREATE TABLE year (
    id int   NOT NULL UNIQUE,
    year int   NOT NULL UNIQUE,
    CONSTRAINT pk_year PRIMARY KEY (
        id,year
     )
);

CREATE TABLE disaster (
    id int   NOT NULL,
    disaster varchar   NOT NULL,
    CONSTRAINT pk_disaster PRIMARY KEY (
        id
     )
);

ALTER TABLE stock ADD CONSTRAINT fk_stock_year FOREIGN KEY(year)
REFERENCES year (year);

ALTER TABLE weather_damage ADD CONSTRAINT fk_weather_damage_year_id FOREIGN KEY(year_id)
REFERENCES year (id);

ALTER TABLE weather_damage ADD CONSTRAINT fk_weather_damage_disaster_id FOREIGN KEY(disaster_id)
REFERENCES disaster (id);

ALTER TABLE us_land_temp ADD CONSTRAINT fk_us_land_temp_year FOREIGN KEY(year)
REFERENCES year (year);


