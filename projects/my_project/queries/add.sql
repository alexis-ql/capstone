/* add.sql   ADD PAGE: saves the form as a new row      (Part 4, Step 11 of the guide)
   One INSERT. Each placeholder matches the "name" of a box in ADD_FORM in
   settings.py: a box named "title" fills :title. An empty box arrives as
   NULL. Leave the primary key out, so SQLite numbers the new row itself.
   Placeholders: one for each box in ADD_FORM, written :name

   The library version: projects/library_example/queries/add.sql
   Write your SQL below this comment. */

-- Add new celestial object to the catalogue

INSERT INTO CELESTIAL_OBJECT
   (object_name, object_type, diameter_km, orbit_period_days, parent_object_id)
VALUES
   (:object_name, :object_type, :diameter_km, :orbit_period_days, :parent_object_id);