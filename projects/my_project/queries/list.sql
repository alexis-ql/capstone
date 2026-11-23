/* list.sql   BROWSE PAGE: every item in a table      (Part 4, Step 6 of the guide)
   Returns many rows. Must include a column named id: the page hides it
   and uses it to link each row to its detail page. Every other column
   is shown, with its alias as the column heading.
   Placeholders: none.

   The library version: projects/library_example/queries/list.sql
   Write your SQL below this comment. */


/*
-- Join every celestial object with its parent object

SELECT
   c.object_id AS id,
   c.object_name AS "Object Name",
   c.object_type AS "Object Type",
   c.diameter_km AS "Diameter (km)",
   c.orbit_period_days AS "Orbit Period (Days)",
   p.object_name AS "Orbits Around"
FROM CELESTIAL_OBJECT c
LEFT JOIN CELESTIAL_OBJECT p
ON c.parent_object_id = p.object_id
ORDER BY c.object_name;

*/


-- Display all the celestial object with the view in schema.sql

SELECT
   object_id AS id,
   object_name AS "Object Name",
   object_type AS "Object Type",
   diameter_km AS "Diameter (km)",
   orbit_period_days AS "Orbit Period (days)",
   orbits_around AS "Orbits Around"
FROM celestial_object_catalog
ORDER BY object_name;