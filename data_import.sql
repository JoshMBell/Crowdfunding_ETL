-- Replace file paths with correct csv location and run query to import data.
-- IF ENCOUNTERING PERMISSION ISSUES ON IMPORT FOLLOW THE FOLLOWING STEPS:
    --Right click the folder containing the data file(s) that permission was denied to and then click Properties.
    --In the Folder's Properties window, select the Security tab.
    --Click the Edit button.
    --In the "Permissions for the folder" window that opened, click the Add... button.
    --Type Everyone into the "Enter the object names to select" text area box.
    --Click OK and the window will close.
    --Verify that the default Read & Execute permissions were set to Allow via the check checkbox in the previous window.
    --Click OK and the window will close.
    --Click the Apply button in the Folder Properties window.

COPY subcategory (subcategory_id, "sub-category")
FROM '.csv'
DELIMITER ','
CSV HEADER;

COPY category (category_id, category)
FROM '.csv'
DELIMITER ','
CSV HEADER;

COPY contacts (contact_id, first_name, last_name, email)
FROM '.csv'
DELIMITER ','
CSV HEADER;

COPY campaign (cf_id, contact_id, company_name, "description", goal, pledged, outcome, backers_count, country, currency, launched_date, end_date, category_id, subcategory_id)
FROM '.csv'
DELIMITER ','
CSV HEADER;