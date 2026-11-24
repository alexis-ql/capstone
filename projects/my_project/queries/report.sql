/* report.sql   REPORT PAGE: a summary with GROUP BY      (Part 4, Step 10 of the guide)
   Returns one row per group. If the LAST column is a number, the page
   also draws a bar for it, so put the number you want to compare last.
   Placeholders: none.

   The library version: projects/library_example/queries/report.sql
   Write your SQL below this comment. */


-- How many observations have been recorded per celestial object?
-- Count the observations recorded per celestial object.

SELECT
   c.object_name AS "Celestial Object",
   COUNT(o.observation_id) AS "Total Observations"
FROM CELESTIAL_OBJECT c
LEFT JOIN OBSERVATION o
ON c.object_id = o.object_id
GROUP BY c.object_id, c.object_name
ORDER BY COUNT(o.observation_id) DESC;