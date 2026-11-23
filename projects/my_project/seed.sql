/* ==========================================================================
   seed.sql   YOUR SAMPLE ROWS                     (Part 4, Step 4 of the guide)
   The app runs this right after schema.sql, every time it starts. This is
   the data your site shows, so make it realistic.

   Requirements
     * At least 10 rows in every table.
     * Parent rows first: a row must exist before a foreign key points at it.
     * Text and dates go in single quotes: 'Ana Lopez', '2026-03-15'.
       Numbers and NULL do not.
     * A name with an apostrophe doubles it: 'O''Brien'.

   One INSERT can add many rows, separated by commas:
       INSERT INTO authors (author_id, name) VALUES
           (1, 'Jane Austen'),
           (2, 'Mary Shelley');

   Look at projects/library_example/seed.sql for a finished example.
   Write your INSERT statements below this line.
   ========================================================================== */

-- INSERT the celestial objects records


INSERT INTO CELESTIAL_OBJECT
  (object_id, object_name, object_type, diameter_km, orbit_period_days, parent_object_id)
VALUES
  (1, 'Sun', 'Star', 1391400, NULL, NULL),
  (2, 'Mercury', 'Planet', 4879, 88, 1),
  (3, 'Venus', 'Planet', 12104, 224.70, 1),
  (4, 'Earth', 'Planet', 12742, 365.25, 1),
  (5, 'Mars', 'Planet', 6779, 687, 1),
  (6, 'Jupiter', 'Planet', 142984, 4333, 1),
  (7, 'Saturn', 'Planet', 120536, 10756, 1),
  (8, 'Uranus', 'Planet', 51158, 30687, 1),
  (9, 'Neptune', 'Planet', 48528, 60190, 1),
  (10, 'Pluto', 'Dwarf Planet', 2377, 90545, 1),
  (11, 'Moon', 'Moon', 3475, 27.3, 4),
  (12, 'Ceres', 'Dwarf Planet', 939, 1682, 1),
  (13, 'Europa', 'Moon', 3122, 3.5, 6),
  (14, 'Titan', 'Moon', 5150, 15.95, 7),
  (15, 'Io', 'Moon', 3640, 1.77, 6),
  (16,'4 Vesta', 'Asteroid', 525, 1326, 1);


-- SELECT * FROM CELESTIAL_OBJECT;

-- INSERT the observation records


INSERT INTO OBSERVATION
  (observation_id, observation_date, instrument_used, observation_location, observation_note, object_id)
VALUES
  (1, '2026-01-15', 'Optical Telescope', 'California', 'Tracked seasonal cloud patterns', 4),
  (2, '2026-02-09', 'Infrared Telescope', 'Hawaii', 'Examined atmospheric temperature', 7),
  (3, '2026-02-21', 'Space Telescope', 'Earth Orbit', 'Captured images of surface craters', 11),
  (4, '2026-03-04', 'Radar System', 'Puerto Rico', 'Mapped surface elevation', 2),
  (5, '2026-03-29', 'Ultraviolet Telescope', 'Earth Orbit', 'Studied atmospheric gases', 5),
  (6, '2026-04-11', 'Infrared Telescope', 'Hawaii', 'Examined surface composition', 10),
  (7, '2026-04-23', 'Optical Telescope', 'Australia', 'Tracked asteroid movement', 16),
  (8, '2026-05-06', 'Space Telescope', 'Earth Orbit', 'Captured images of icy terrain', 13),
  (9, '2026-06-02', 'Optical Telescope', 'Spain', 'Observed volcanic surface activity', 15),
  (10, '2026-06-14', 'Infrared Telescope', 'California', 'Measured atmospheric changes', 3),
  (11, '2026-07-15', 'Space Telescope', 'Earth Orbit', 'Studied atmospheric composition', 9),
  (12, '2026-08-15', 'Radar System', 'Puerto Rico', 'Mapped surface characteristics', 16),
  (13, '2026-08-17', 'Optical Telescope', 'Australia', 'Recorded changes in brightness', 12),
  (14, '2026-08-19', 'Ultraviolet Telescope', 'Spain', 'Examined atmospheric gases', 8),
  (15, '2026-09-10', 'Infrared Telescope', 'New Mexico', 'Studied surface temperature patterns', 13),
  (16, '2026-09-18', 'Optical Telescope', 'California', 'Observed changes in surface brightness', 5),
  (17, '2026-10-04', 'Infrared Telescope', 'Hawaii', 'Examined atmospheric temperature patterns', 14),
  (18, '2026-10-12', 'Optical Telescope', 'Australia', 'Recorded surface changes over time', 10);


-- SELECT * FROM OBSERVATION;

-- INSERT the Discovery records

INSERT INTO DISCOVERY
  (discovery_id, discovery_date, discoverer, discovery_method, object_id)
VALUES
  (1, '1631-11-07', 'Eleanor Brooks', 'Telescope Observation', 2),
  (2, '1635-03-25', 'Mia Collins', 'Telescope Observation', 14),
  (3, '1761-06-06', 'Marcus Reed', 'Telescope Observation', 3),
  (4, '1801-01-01', 'Olivia Turner', 'Telescope Observation', 12),
  (5, '1877-08-18', 'Sofia Bennett', 'Telescope Observation', 5),
  (6, '1930-02-18', 'Noah Mitchell', 'Photographic Plates', 10),
  (7, '1973-12-03', 'Daniel Foster', 'Spacecraft Imaging', 6),
  (8, '1979-03-05', 'Ethan Parker', 'Spacecraft Imaging', 13),
  (9, '1979-03-05', 'Benjamin Scott', 'Spacecraft Imaging', 15),
  (10, '1979-09-01', 'Amelia Hayes', 'Infrared Imaging', 7),
  (11, '1986-01-24', 'Lucas Morgan', 'Spacecraft Imaging', 8),
  (12, '1989-08-25', 'Isabella Carter', 'Radio Astronomy', 9),
  (13, '1991-08-06', 'Grace Wilson', 'Radar Observation', 16);


 -- SELECT * FROM DISCOVERY;