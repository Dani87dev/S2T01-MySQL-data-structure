# S2T01: MySQL Data Structure

This project focuses on designing and implementing relational databases for various business scenarios. The primary goal is to master Data Normalization, Entity-Relationship (EER) modeling, and Referential Integrity.

---
 
## 📂 TASK 1 - LEVEL 1: Optician's System (Cul d'Ampolla)

Database design for an optical store to manage sales, inventory, and referrals:
Suppliers & Brands: Each brand is linked to a unique supplier; providers include full contact details (NIF, address, phone).
Product Management: Detailed glass specifications including graduation, tint, and frame types (floating, plastic, or metallic).
Customer & Sales: Tracks customer registration, internal referrals (recommendations), and identifies the specific employee responsible for each sale.

## 📂 TASK 2 - LEVEL 1: Pizzeria Delivery System

Web-based ordering system for a multi-store food delivery service:
Geographic Data: Normalization of Towns and Provinces into separate tables to ensure data integrity.
Order Logistics: Manages both home delivery and in-store pickup, tracking total prices and timestamped delivery details.
Staff Management: Distinguishes between cooks and delivery drivers, assigning each employee to a specific store.

## 📂 TASK 1 - LEVEL 2: YouTube Reduced Version

A simplified model of a video-sharing platform:
User Content: Manages video uploads with specific metadata (duration, file name, thumbnails) and privacy states (public, hidden, private).
Social Interactions: System for channel subscriptions and timestamped "like/dislike" logs for both videos and comments.
Playlists & Tags: Allows users to organize videos into public/private playlists and categorize content using multiple tags.

---

## 📂 Project Components

- **EER Diagram**: A visual representation of the database schema showing all entities, attributes, and relationships.
- **Database Schema**: A SQL script containing all the CREATE TABLE statements and relational constraints to build the database from scratch.
- **SQL Inserts**: .sql file containing sample data (INSERT statements) to populate the database and verify its functionality
- **Docker Compose**: A configuration file included to easily deploy the database environment in a containerized MySQL instance.

---

## 🛠 Technologies
- **MySQL** (Relational Database Management System)
- **Docker & Docker Compose**
- **Git & GitHub**

---

## 📋 Prerequisites
- MySQL Server or a Docker environment.

---

### Clone the repository
git clone https://github.com/Dani87dev/S2T01-MySQL-data-structure.git

---

### Launch the database:
docker-compose up -d

### Verify the database is running:
docker ps
