# SPRINT 1.02 — MySQL Pizzeria Database

This project focuses on the design and implementation of a relational database for a **Food Delivery Service**. The goal is to model a system that manages customers, orders, products (pizzas, burgers, and drinks), and employees across different store locations.

Throughout this sprint, the focus is on **Normalizing Data**, defining **Primary and Foreign Keys**, and ensuring **Referential Integrity** between entities such as customers, towns, provinces, and store workers.

## TASK 2 - LEVEL 1
📌 **Exercise 2 — Pizzeria Delivery System**

The challenge was to design a web-based ordering system with the following specifications:
- **Geographic Data**: Towns and Provinces are stored in separate tables to ensure data normalization.
- **Customer Management**: Stores unique identifiers, addresses, and contact information.
- **Order Logic**: Manages both home delivery and in-store pickup, tracking total prices and specific products selected.
- **Product Hierarchy**: Categorization of pizzas, burgers, and drinks.
- **Store & Staff**: Orders are assigned to a specific store, tracking cooks and delivery drivers.

---

## 📂 Project Components

- **EER Diagram**: A visual representation of the database schema showing all entities, attributes, and relationships.
- **Database Schema**: A SQL script containing all the CREATE TABLE statements and relational constraints to build the database from scratch.
- **Data Population**: A dedicated SQL script with sample records to fill the database and test its functionality.
- **Docker Compose**: A configuration file included to easily deploy the database environment in a containerized MySQL instance.

---

## 🛠 Technologies
- **MySQL** (Relational Database Management System)
- **SQL Language** (DDL & DML)
- **Docker & Docker Compose**
- **Git & GitHub**

---

## 📋 Prerequisites
- MySQL Server or a Docker environment.
- A SQL client to connect and browse the data (e.g., MySQL Workbench or DBeaver).

### Clone the repository
git clone https://github.com/Dani87dev/S2T01-MySQL-data-structure.git
