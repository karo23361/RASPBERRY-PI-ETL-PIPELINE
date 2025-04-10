-------------------------------------------------------------
-- Script is used for creating sample database for raspberry
-- pi etl pipeline project 

-- Scirpt is prepared for MariaDB

-- Terminology:
-- > bronze layer means that we're taking raw data and 
-- saving it in database without any operations
-------------------------------------------------------------

-- Checking if Database exists, if yes, use DROP DATABASE
DROP DATABASE IF EXISTS bronze_database;

-- Creating Database
CREATE DATABASE bronze_databasae;

-- Using created Database
USE bronze_database;

-- Table: Customers
DROP TABLE IF EXISTS customers;
CREATE TABLE customers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id VARCHAR(50),
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    company VARCHAR(150),
    city VARCHAR(100),
    country VARCHAR(100),
    phone1 VARCHAR(50),
    phone2 VARCHAR(50),
    email VARCHAR(150),
    subscription_date VARCHAR(20),
    website VARCHAR(200)
);

-- Table: People
DROP TABLE IF EXISTS people;
CREATE TABLE people (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id VARCHAR(50),
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    sex VARCHAR(10),
    email VARCHAR(150),
    phone VARCHAR(50),
    date_of_birth VARCHAR(20),
    job_title VARCHAR(100)
);

-- Table: Organizations
DROP TABLE IF EXISTS organizations;
CREATE TABLE organizations (
    id INT AUTO_INCREMENT PRIMARY KEY,
    organization_id VARCHAR(50),
    name VARCHAR(150),
    website VARCHAR(200),
    country VARCHAR(100),
    description TEXT,
    founded VARCHAR(4),
    industry VARCHAR(100),
    number_of_employees VARCHAR(50)
);

-- Table: Leads
DROP TABLE IF EXISTS leads;
CREATE TABLE leads (
    id INT AUTO_INCREMENT PRIMARY KEY,
    account_id VARCHAR(50),
    lead_owner VARCHAR(100),
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    company VARCHAR(150),
    phone1 VARCHAR(50),
    phone2 VARCHAR(50),
    email1 VARCHAR(150),
    email2 VARCHAR(150),
    website VARCHAR(200),
    source VARCHAR(100),
    deal_stage VARCHAR(100),
    notes TEXT
);

-- Table: Products
DROP TABLE IF EXISTS products;
CREATE TABLE products (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(150),
    description TEXT,
    brand VARCHAR(100),
    category VARCHAR(100),
    price VARCHAR(20),
    currency VARCHAR(10),
    stock VARCHAR(50),
    ean VARCHAR(50),
    color VARCHAR(50),
    size VARCHAR(50),
    availability VARCHAR(50),
    internal_id VARCHAR(100)
);
