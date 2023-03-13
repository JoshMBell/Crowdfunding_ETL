SET datestyle TO 'ISO, YMD';

CREATE TABLE subcategory (
    subcategory_id VARCHAR PRIMARY KEY,
    "sub-category" CHAR(100) NOT NULL
);

CREATE TABLE category (
    category_id VARCHAR(100) PRIMARY KEY,
    category CHAR(100) NOT NULL
);

CREATE TABLE "contacts" (
    contact_id INT PRIMARY KEY,
    first_name CHAR(100) NOT NULL,
    last_name CHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL
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
    country CHAR(100) NOT NULL,
    currency CHAR(100) NOT NULL,
    launched_date DATE NOT NULL,
    end_date DATE NOT NULL,
    category_id VARCHAR(100) NOT NULL,
    subcategory_id VARCHAR(100) NOT NULL,
    FOREIGN KEY(contact_id) REFERENCES contacts(contact_id),
    FOREIGN KEY(category_id) REFERENCES category(category_id),
    FOREIGN KEY(subcategory_id) REFERENCES subcategory(subcategory_id)
);

