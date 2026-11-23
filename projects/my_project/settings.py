# YOUR project's names and labels. Fill these in during Part 4, Step 2 of
# the guide (docs/04-write-your-sql.md). Change only the text inside the
# quotes. projects/library_example/settings.py shows every one filled in.

SITE_NAME = "Solar System Catalog"            # the name at the top of every page
TAGLINE = "A catalog of celestial objects, observations, and discoveries within our Solar System."
ICON = "rocket-takeoff"                            # any icon name from icons.getbootstrap.com

YOUR_NAME = "Alexis Quijas-Luna"
COURSE = "CIS 4720"                          # or CIS 2020
GITHUB_URL = ""                              # your repository address, once you have one

# What one row on the Browse page is called, for example "recipe" and "recipes"
ITEM = "celestial object"
ITEMS = "celestial objects"

BROWSE_TITLE = "All Celestial Objects"
BROWSE_INTRO = "Explore planets, moons, dwarf planets, asteroids, and other objects in our Solar System."

DETAIL_RELATED_TITLE = "Observations"
DETAIL_RELATED_EMPTY = "No observations have been recorded for this object."

SEARCH_HINT = "Search by object name or type"

REPORT_TITLE = "Observations by Celestial Object"
REPORT_INTRO = "Compare the number of recorded observations for each object."

ADD_TITLE = "Add a Celestial Object"

# One entry for each box on the Add page, in the order they should appear.
# The name must match a placeholder in queries/add.sql (name "title" fills
# :title). Leave this list empty until you reach Step 11 of Part 4.
#
#   type "text"    a text box
#   type "number"  a number box
#   type "date"    a date picker, saved as YYYY-MM-DD
#   type "select"  a dropdown, filled by the query file named in "options"
#
# Example, from the library:
#   ADD_FORM = [
#       {"name": "title", "label": "Title", "type": "text", "required": True},
#       {"name": "author_id", "label": "Author", "type": "select",
#        "options": "queries/add_options.sql", "required": True},
#       {"name": "pages", "label": "Pages", "type": "number"},
#   ]
ADD_FORM = [
    {"name": "object_name", "label": "Object Name", "type": "text", "required": True},
    {"name": "object_type", "label": "Object Type", "type": "text", "required": True},
    {"name": "diameter_km", "label": "Diameter (km)", "type": "number"},
    {"name": "orbit_period_days", "label": "Orbit Period (days)", "type": "number"},
    {"name": "parent_object_id", "label": "Orbits Around", "type": "select", "options": "queries/add_options.sql"}
]
