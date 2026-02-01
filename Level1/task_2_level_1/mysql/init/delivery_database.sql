CREATE
DATABASE delivery_ddbb;

USE
delivery_ddbb;

CREATE TABLE category
(
    category_id INT PRIMARY KEY,
    name        VARCHAR(45) NOT NULL
);

CREATE TABLE province
(
    province_id INT PRIMARY KEY,
    name VARCHAR(45) NOT NULL
);

CREATE TABLE town
(
    town_id INT PRIMARY KEY,
    name VARCHAR(45) NOT NULL,
    province_id INT NOT NULL,
    FOREIGN KEY (province_id) REFERENCES province(province_id)
)

CREATE TABLE customer
(
    customer_id INT PRIMARY KEY,
    name VARCHAR(45) NOT NULL ,
    surname VARCHAR(45) NOT NULL ,
    address VARCHAR(100) NOT NULL ,
    zip_code VARCHAR(45) NOT NULL ,
    town_id INT NOT NULL,
    FOREIGN KEY (town_id) REFERENCES town(town_id)
)

CREATE TABLE store
(
    store_id INT PRIMARY KEY,
    adress VARCHAR(45),
    zip_code VARCHAR(45),
    town_id INT NOT NULL,
    FOREIGN KEY (town_id) REFERENCES town(town_id)
)

CREATE TABLE worker
(
    worker_id INT PRIMARY KEY,
    name VARCHAR(45) NOT NULL ,
    surname VARCHAR(45) NOT NULL ,
    nif VARCHAR(15) NOT NULL ,
    phone_number BIGINT NOT NULL ,
    worker_type ENUM('cooker', 'delivery') NOT NULL,
    store_id INT NOT NULL ,
    FOREIGN KEY (store_id) REFERENCES store(store_id)
)

CREATE TABLE order
(
    order_id INT PRIMARY KEY,
    customer_id INT NOT NULL,
    date_time_order DATETIME NOT NULL,
    total_price DECIMAL(5,2) NOT NULL,
    shipping_method ENUM('delivery', 'at_store'),
    worker_id INT,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
)

CREATE TABLE order_products
(
    order_products_id INT PRIMARY KEY,
    quantity INT NOT NULL,
    order_id INT NOT NULL,
    FOREIGN KEY (order_id) REFERENCES order(order_id)
)

CREATE TABLE product
(
    product_id INT PRIMARY KEY,
    name VARCHAR(45) NOT NULL,
    description VARCHAR(45) NOT NULL,
    type ENUM('burguer', 'pizza', 'drink') NOT NULL,
    price DECIMAL(4,2) NOT NULL,
    image VARCHAR(100),
    category_id INT,
    order_products_id INT NOT NULL,
    FOREIGN KEY (order_products_id) REFERENCES order_products(order_id)
)



