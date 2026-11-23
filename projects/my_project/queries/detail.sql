/* detail.sql   DETAIL PAGE: one item, everything about it      (Part 4, Step 7 of the guide)
   Returns ONE row (or none, if the id does not exist). The first column
   after id becomes the page heading; every other column is listed below
   it with its alias as the label.
   Placeholders:  :id   the id of the row that was clicked

   The library version: projects/library_example/queries/detail.sql
   Write your SQL below this comment. */

-- Displays details regarding a celetial object and its parent object

SELECT
   c.object_id AS id,
   c.object_name AS "Object Name",
   c.object_type AS "Object Type",
   c.diameter_km AS "Diameter (km)",
   c.orbit_period_days AS "Orbit Period (days)",
   p.object_name AS "Orbits Around"
FROM CELESTIAL_OBJECT c
LEFT JOIN CELESTIAL_OBJECT p
ON c.parent_object_id = p.object_id
WHERE c.object_id = :id;