-----------------------------------------------------
-- Script is used for loading data into bronze layer

-- > Before each load truncate table
----------------------------------------------------- 



TRUNCATE TABLE customers;

LOAD DATA LOCAL INFILE '/home/pi/customers-100000.csv'
INTO TABLE customers
FIELDS TERMINATED BY ','  
LINES TERMINATED BY '\n'  
IGNORE 1 LINES 
(id,customer_id, first_name, last_name, company, city, country, phone1, phone2, email, subscription_date, website);

TRUNCATE TABLE people;

LOAD DATA LOCAL INFILE '/home/pi/people-100000.csv'
INTO TABLE people
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n' 
IGNORE 1 LINES
(id,user_id, first_name, last_name, sex, email, phone, date_of_birth, job_title);

TRUNCATE TABLE organizations;

LOAD DATA LOCAL INFILE '/home/pi/organizations-100000.csv'
INTO TABLE organizations
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n' 
IGNORE 1 LINES
(id,organization_id, name, website, country, description, founded, industry, number_of_employees);

TRUNCATE TABLE leads;

LOAD DATA LOCAL INFILE '/home/pi/leads-100000.csv'
INTO TABLE leads
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n' 
IGNORE 1 LINES
(id,account_id, lead_owner, first_name, last_name, company, phone1, phone2, email1, email2, website, source, deal_stage, notes);

TRUNCATE TABLE products;

LOAD DATA LOCAL INFILE '/home/pi/products-100000.csv'
INTO TABLE products
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n' 
IGNORE 1 LINES
(id,name, description, brand, category, price, currency, stock, ean, color, size, availability, internal_id);


