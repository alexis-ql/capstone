/* ==========================================================================
   schema.sql   YOUR TABLES                        (Part 4, Step 3 of the guide)
   The app runs this file first, every time it starts.

   Requirements
     * At least 3 tables, in third normal form.
     * Every table has a primary key:      some_id INTEGER PRIMARY KEY
     * At least 2 foreign keys linking the tables:
           FOREIGN KEY (author_id) REFERENCES authors(author_id)
     * Parent tables first. A table can only point at a table created
       above it.
     * CIS 4720 also: at least one CREATE VIEW and one CREATE TRIGGER,
       added at the bottom of this file in Part 4, Step 12.

   SQLite notes, if you are used to MySQL
     * INTEGER PRIMARY KEY numbers the rows for you. No AUTO_INCREMENT.
     * Use TEXT for words and dates (dates as 'YYYY-MM-DD'), INTEGER for
       whole numbers, REAL for decimals.
     * End every statement with a semicolon.

   Look at projects/library_example/schema.sql for a finished example.
   Write your CREATE TABLE statements below this line.
   ========================================================================== */


-- Create the table for CELESTIAL OBJECT
CREATE TABLE CELESTIAL_OBJECT(
  object_id INTEGER PRIMARY KEY,
  object_name VARCHAR(40) NOT NULL,
  object_type VARCHAR(40) NOT NULL,
  diameter_km INT,
  orbit_period_days DECIMAL(10,2),
  parent_object_id INT,
  FOREIGN KEY (parent_object_id) REFERENCES CELESTIAL_OBJECT(object_id)
);

-- DESCRIBE CELESTIAL_OBJECT;

-- Create the table for OBSERVATION
CREATE TABLE OBSERVATION(
  observation_id INT PRIMARY KEY,
  observation_date DATE NOT NULL,
  instrument_used VARCHAR(40) NOT NULL,
  observation_location VARCHAR(40),
  observation_note VARCHAR(200),
  object_id INT NOT NULL,
  FOREIGN KEY (object_id) REFERENCES CELESTIAL_OBJECT(object_id)
);

-- DESCRIBE OBSERVATION;

-- Create the table for DISCOVERY
CREATE TABLE DISCOVERY(
  discovery_id INT PRIMARY KEY,
  discovery_date DATE NOT NULL,
  discoverer VARCHAR(40) NOT NULL,
  discovery_method VARCHAR(40),
  object_id INT NOT NULL,
  FOREIGN KEY (object_id) REFERENCES CELESTIAL_OBJECT(object_id)
);


-- DESCRIBE DISCOVERY;

-- A view that shos the celestial objects and parent object names

CREATE VIEW IF NOT EXISTS celestial_object_catalog AS
SELECT
  c.object_id,
  c.object_name,
  c.object_type,
  c.diameter_km,
  c.orbit_period_days,
  p.object_name AS orbits_around
FROM CELESTIAL_OBJECT c
LEFT JOIN CELESTIAL_OBJECT p
ON c.parent_object_id = p.object_id;


-- This trigger prevents celestial objects from having negative diameter

CREATE TRIGGER check_object_diameter
BEFORE INSERT ON CELESTIAL_OBJECT
FOR EACH ROW
WHEN NEW.diameter_km < 0
BEGIN
  SELECT RAISE(ABORT, "Diameter can't be negative.");
END;