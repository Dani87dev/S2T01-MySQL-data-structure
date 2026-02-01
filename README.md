# SPRINT 1.02 — MySQL Pizzeria Database

This project focuses on the design and implementation of a relational database for a **Food Delivery Service**. The goal is to model a system that manages customers, orders, products (pizzas, burgers, and drinks), and employees across different store locations.

Throughout this sprint, the focus is on **Normalizing Data**, defining **Primary and Foreign Keys**, and ensuring **Referential Integrity** between entities such as customers, towns, provinces, and store workers.

## TASK 2 - LEVEL 1
📌 **Exercise 2 — Pizzeria Delivery System**

The challenge was to design a web-based ordering system with the following specifications:
- **Geographic Data**: Towns and Provinces are stored in separate tables to ensure data normalization.
- **Customer Management**: Stores unique identifiers, addresses, and contact information.
- **Order Logic**: Manages both home delivery and in-store pickup, tracking total prices and specific products selected.
- **Product Hierarchy**: Categorization of pizzas, burgers, and drinks. Pizzas belong to specific categories that can be updated over time.
- **Store & Staff**: Orders are assigned to a specific store. Employees are categorized as either cooks or delivery drivers, with specific tracking for delivery times and personnel.



---

## 🛠 Technologies
- **MySQL** (Relational Database Management System)
- **SQL Language** (DDL & DML)
- **Database Normalization**
- **Git & GitHub**

## 📂 Project Structure
- `delivery_ddbb_schema.sql`: Contains the complete database structure and relationships.
- `inserts.sql`: Includes sample records for testing (customers, products, workers, and orders).

---

## 🚀 Prerequisites
- MySQL Server 8.0+ or MariaDB.
- A database client like MySQL Workbench, DBeaver, or terminal access.
