SET datestyle TO 'ISO, YMD';

CREATE TABLE subcategory (
    subcategory_id VARCHAR PRIMARY KEY,
    "sub-category" CHAR NOT NULL
);

CREATE TABLE category (
    category_id VARCHAR PRIMARY KEY,
    category char NOT NULL
);

CREATE TABLE "contacts" (
    contact_id INT PRIMARY KEY,
    first_name CHAR NOT NULL,
    last_name CHAR NOT NULL,
    email VARCHAR NOT NULL
);

CREATE TABLE campaign (
    cf_id INT PRIMARY KEY,
    contact_id INT NOT NULL,
    company_name VARCHAR(50) NOT NULL,
    "description" VARCHAR(100) NOT NULL,
    goal FLOAT NOT NULL,
    pledged FLOAT NOT NULL,
    outcome CHAR(10) NOT NULL,
    backers_count INT NOT NULL,
    country CHAR NOT NULL,
    currency CHAR NOT NULL,
    launched_date DATE NOT NULL,
    end_date DATE NOT NULL,
    category_id VARCHAR NOT NULL,
    subcategory_id VARCHAR NOT NULL,
    FOREIGN KEY(contact_id) REFERENCES contacts(contact_id),
    FOREIGN KEY(category_id) REFERENCES category(category_id),
    FOREIGN KEY(subcategory_id) REFERENCES subcategory(subcategory_id)
);

