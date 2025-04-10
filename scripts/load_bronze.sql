-----------------------------------------------------
-- Script is used for loading data into bronze layer

-- > Before each load truncate table
----------------------------------------------------- 



TRUNCATE TABLE customers;

LOAD DATA INFILE '/home/pi/customers.csv'
INTO TABLE customers
FIELDS TERMINATED BY ','  
LINES TERMINATED BY '\n'  
IGNORE 1 LINES 
(customer_id, first_name, last_name, company, city, country, phone1, phone2, email, subscription_date, website);

TRUNCATE TABLE people;

LOAD DATA INFILE '/home/pi/people.csv'
INTO TABLE people
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n' 
IGNORE 1 LINES
(user_id, first_name, last_name, sex, email, phone, date_of_birth, job_title);

TRUNCATE TABLE organizations;

LOAD DATA INFILE '/home/pi/organizations.csv'
INTO TABLE organizations
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n' 
IGNORE 1 LINES
(organization_id, name, website, country, description, founded, industry, number_of_employees);

TRUNCATE TABLE leads;

LOAD DATA INFILE '/home/pi/leads.csv'
INTO TABLE leads
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n' 
IGNORE 1 LINES
(account_id, lead_owner, first_name, last_name, company, phone1, phone2, email1, email2, website, source, deal_stage, notes);

TRUNCATE TABLE products;

LOAD DATA INFILE '/home/pi/products.csv'
INTO TABLE products
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n' 
IGNORE 1 LINES
(name, description, brand, category, price, currency, stock, ean, color, size, availability, internal_id);


