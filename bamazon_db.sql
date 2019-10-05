-- Drops the animals_db if it exists currently --
DROP DATABASE IF EXISTS bamazon_db;
-- Creates the "animals_db" database --
CREATE DATABASE bamazon_db;

-- Makes it so all of the following code will affect animals_db --
USE bamazon_db;

-- Creates the table "people" within animals_db --
CREATE TABLE products (
  -- Makes a string column called "name" which cannot contain null --
  item_id INT NOT NULL AUTO_INCREMENT,
  -- Makes a boolean column called "has_pet" which cannot contain null --
  product_name VARCHAR(30),
  -- Makes a sting column called "pet_name" --
  department_name VARCHAR(30),
  -- Makes an numeric column called "pet_age" --
  price DECIMAL(19,2),
  stock_quantity INT,
  PRIMARY KEY (item_id)
);

-- Creates new rows containing data in all named columns --
INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Davis Electric Cycle", "Recreation", 1500.00, 10);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("CAD CAM Computers", "Engineering", 175000.00, 26);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Omron", "Sensors", 750.00, 37);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("SCADA Systems", "Controllers", 5000.00, 73);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("CO2 Automotive", "Safety", 2305.00, 365);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("UWH2ODetMonSys", "Safety", 275.00, 500);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Travel Safe System", "Safety", 150.00, 25);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Universal Field Service Pack", "Engineering", 367.00, 46);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("ELANTest", "Engineering", 6.00, 129);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("DMMF-AI", "Mind Mapping", 50.00, 36);