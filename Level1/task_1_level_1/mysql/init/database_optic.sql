-- CREATE DATABASE optical_store;
USE optical_store;

CREATE TABLE worker
(
    worker_id INT PRIMARY KEY AUTO_INCREMENT,
    name      VARCHAR(45) NOT NULL
);
CREATE TABLE address
(
    address_id INT PRIMARY KEY AUTO_INCREMENT,
    street     VARCHAR(20) NOT NULL,
    number     INT         NOT NULL,
    floor      VARCHAR(20),
    door       VARCHAR(10),
    city       VARCHAR(30) NOT NULL,
    zip_code   VARCHAR(15) NOT NULL,
    country    VARCHAR(30) NOT NULL
);
CREATE TABLE customers
(
    customers_id            INT PRIMARY KEY AUTO_INCREMENT,
    name                    VARCHAR(45) NOT NULL,
    address_id              INT         NOT NULL,
    phone_number            BIGINT      NOT NULL,
    email                   VARCHAR(45) NOT NULL UNIQUE,
    registration_date       DATE        NOT NULL,
    customer_recommended_id INT,
    FOREIGN KEY (address_id) REFERENCES address (address_id),
    FOREIGN KEY (customer_recommended_id) REFERENCES customers (customers_id)
);
CREATE TABLE supplier
(
    supplier_id  INT PRIMARY KEY AUTO_INCREMENT,
    name         VARCHAR(45) NOT NULL,
    phone_number BIGINT      NOT NULL,
    fax_number   BIGINT,
    nif          VARCHAR(10) NOT NULL,
    address_id   INT         NOT NULL,
    FOREIGN KEY (address_id) REFERENCES address (address_id)
);
CREATE TABLE brand
(
    brand_id    INT PRIMARY KEY AUTO_INCREMENT,
    supplier_id INT         NOT NULL,
    name        VARCHAR(45) NOT NULL,
    FOREIGN KEY (supplier_id) REFERENCES supplier (supplier_id)
);
CREATE TABLE glasses
(
    glasses_id        INT PRIMARY KEY AUTO_INCREMENT,
    graduation_left   DECIMAL(4, 2) NOT NULL,
    graduation_right  DECIMAL(4, 2) NOT NULL,
    material_type     ENUM ('rimless', 'acetate', 'metallic') NOT NULL,
    material_color    VARCHAR(45)   NOT NULL,
    glass_right_color VARCHAR(45)   NOT NULL,
    glass_left_color  VARCHAR(45)   NOT NULL,
    price             DECIMAL(6, 2) NOT NULL,
    brand_id          INT           NOT NULL,
    FOREIGN KEY (brand_id) REFERENCES brand (brand_id)
);
CREATE TABLE sale
(
    sale_id     INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT NOT NULL,
    glasses_id  INT NOT NULL,
    worker_id   INT NOT NULL,
    quantity    INT NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customers (customers_id),
    FOREIGN KEY (glasses_id) REFERENCES glasses (glasses_id),
    FOREIGN KEY (worker_id) REFERENCES worker (worker_id)
);
