/* detail_related.sql   DETAIL PAGE: the table under the item      (Part 4, Step 8 of the guide)
   Returns many rows that belong to the item on the detail page, shown as
   a table. Its heading is DETAIL_RELATED_TITLE in settings.py.
   Placeholders:  :id   the same id as detail.sql

   The library version: projects/library_example/queries/detail_related.sql
   Write your SQL below this comment. */

-- Display the observations associated with the celestial objects

SELECT
   observation_date AS "Observation Date",
   instrument_used AS "Instrument Used",
   observation_location AS "Observation Location",
   observation_note AS "Observation Notes"
FROM OBSERVATION
WHERE object_id = :id
ORDER BY observation_date DESC;