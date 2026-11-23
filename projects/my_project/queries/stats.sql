/* stats.sql   HOME PAGE: the numbers across the top      (Part 4, Step 5 of the guide)
   Returns ONE row. Each column becomes one number on the page, and the
   column's alias (the name after AS, in double quotes) is its label.
   Placeholders: none.
   Each number comes from its own small SELECT inside parentheses,
   called a subquery.

   The library version: projects/library_example/queries/stats.sql
   Write your SQL below this comment. */

-- Display the catalog totals, and the largest celestail object diameter

SELECT
   (SELECT COUNT(*) FROM CELESTIAL_OBJECT) AS "Total Celestial Objects",
   (SELECT COUNT(*) FROM OBSERVATION) AS "Total Observations",
   (SELECT MAX(diameter_km) FROM CELESTIAL_OBJECT) AS "Largest Diameter (km)";