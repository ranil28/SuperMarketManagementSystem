CREATE SCHEMA supermarkets;

USE supermarkets;

CREATE TABLE role (
  role_id   int(4) NOT NULL AUTO_INCREMENT, 
  role_name varchar(50) NOT NULL, 
  role_desc text, 
  PRIMARY KEY (role_id));
  
CREATE TABLE registered_customer (
  phone_no      varchar(12) NOT NULL, 
  first_name    varchar(20), 
  last_name     varchar(20), 
  reward_points int(5) DEFAULT 0 NOT NULL, 
  PRIMARY KEY (phone_no));
  
  CREATE TABLE store (
  store_id    int(10) NOT NULL AUTO_INCREMENT, 
  street_name varchar(50) NOT NULL, 
  city        varchar(20) NOT NULL, 
  state       varchar(20) NOT NULL, 
  zip_code    int(5) NOT NULL, 
  store_area  int(6) NOT NULL, 
  email       varchar(50) NOT NULL UNIQUE, 
  PRIMARY KEY (store_id));
  
  CREATE TABLE employee (
  emp_id      int(10) NOT NULL AUTO_INCREMENT, 
  role_id     int(4) NOT NULL, 
  store_id    int(10) NOT NULL, 
  emp_phone   varchar(12) NOT NULL UNIQUE, 
  emp_SSN     varchar(11) NOT NULL UNIQUE, 
  first_name  varchar(20) NOT NULL, 
  last_name   varchar(20) NOT NULL, 
  emp_address varchar(100) NOT NULL, 
  hourly_wage numeric(5, 2) NOT NULL, 
  is_working  tinyint(1) NOT NULL, 
  PRIMARY KEY (emp_id),
  FOREIGN KEY (role_id) REFERENCES role (role_id),
  FOREIGN KEY (store_id) REFERENCES store (store_id));
  
  CREATE TABLE category (
  category_id          int(10) NOT NULL AUTO_INCREMENT, 
  category_name        varchar(30) NOT NULL UNIQUE, 
  category_description text, 
  PRIMARY KEY (category_id));
  
  CREATE TABLE warehouse (
  warehouse_id int(10) NOT NULL AUTO_INCREMENT, 
  name         varchar(30) NOT NULL, 
  address      varchar(100) NOT NULL, 
  zip_code     int(5) NOT NULL, 
  email_id     varchar(50) NOT NULL, 
  PRIMARY KEY (warehouse_id));
  
CREATE TABLE supply (
  supply_id    int(10) NOT NULL AUTO_INCREMENT, 
  warehouse_id int(10) NOT NULL, 
  store_id     int(10) NOT NULL, 
  supply_date  date NOT NULL, 
  PRIMARY KEY (supply_id),
  FOREIGN KEY (warehouse_id) REFERENCES warehouse (warehouse_id),
  FOREIGN KEY (store_id) REFERENCES store (store_id));
  
  CREATE TABLE item (
  item_id     int(10) NOT NULL AUTO_INCREMENT, 
  category_id int(10) NOT NULL, 
  name        varchar(50) NOT NULL, 
  description text, 
  brand       varchar(50), 
  PRIMARY KEY (item_id),
  FOREIGN KEY (category_id) REFERENCES category (category_id));
  
  
CREATE TABLE supply_item (
  supply_id  int(10) NOT NULL, 
  item_id    int(10) NOT NULL, 
  quantity  int(10) NOT NULL, 
  unit_price numeric(6, 2) NOT NULL, 
  PRIMARY KEY (supply_id, item_id),
  FOREIGN KEY (supply_id) REFERENCES supply (supply_id),
  FOREIGN KEY (item_id) REFERENCES item (item_id));

CREATE TABLE store_item (
  store_id     int(10) NOT NULL, 
  item_id      int(10) NOT NULL, 
  qty_in_stock int(10) DEFAULT 0 NOT NULL, 
  unit_price   numeric(6, 2) NOT NULL, 
  PRIMARY KEY (store_id, item_id),
  FOREIGN KEY (store_id) REFERENCES store (store_id),
  FOREIGN KEY (item_id) REFERENCES item (item_id));
  
CREATE TABLE discount (
  store_id    int(10) NOT NULL, 
  item_id     int(10) NOT NULL, 
  percent_off numeric(5, 2) NOT NULL, 
  is_active   tinyint(1) NOT NULL,
  PRIMARY KEY (store_id, item_id),
  FOREIGN KEY (store_id, item_id) REFERENCES store_item (store_id, item_id));
  
CREATE TABLE bill (
  bill_id          int(10) NOT NULL AUTO_INCREMENT, 
  store_id         int(10) NOT NULL, 
  registered_phone varchar(12) DEFAULT NULL, 
  bill_date        datetime NOT NULL, 
  PRIMARY KEY (bill_id),
  FOREIGN KEY (store_id) REFERENCES store (store_id),
  FOREIGN KEY (registered_phone) REFERENCES registered_customer (phone_no));
  
CREATE TABLE bill_items (
  bill_id         int(10) NOT NULL, 
  item_id         int(10) NOT NULL, 
  quantity        int(10) NOT NULL,
  unit_price   numeric(6, 2) NOT NULL,
  discount_amount numeric(6, 2) NOT NULL, 
  net_price       numeric(10, 2) NOT NULL, 
  PRIMARY KEY (bill_id, store_id, item_id),
  FOREIGN KEY (bill_id) REFERENCES bill (bill_id),
  FOREIGN KEY (store_id, item_id) REFERENCES store_item (store_id, item_id));




