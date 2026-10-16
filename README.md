# Pharmacy Management System

[🇷🇺 Read this README in Russian](README.ru.md)

## Overview

An academic project developed in Microsoft Access to support pharmacy inventory management, supplier deliveries, sales operations, prescription-related workflows, and reporting.

The project combines relational database design, SQL queries, user interface development, business process modelling, and report generation.

**Project status:** Academic prototype, not a production-ready pharmacy management system.

## Technologies

- Microsoft Access
- Access SQL and QBE
- VBA and Access macros
- Relational database design
- IDEF0 process modelling

## Features

- Medicine and supplier catalogues
- Supplier delivery records
- Staff and user management forms
- Login form and role-related access logic
- Sales form with a shopping cart
- Automatic calculation of order totals
- SQL queries for sales data analysis
- Reports for sales, deliveries, and prescription-related records
- Selected validation checks for sales workflows

## Screenshots

### Application interface

![Main menu](screenshots/01-main-menu.jpg)

*Main menu for staff and customer workflows.*

![Sales order form](screenshots/02-sales-order-form.jpg)

*Sales form with medicine search, quantity, prescription number, shopping cart, and order controls.*

### Database design

![Database relationships](screenshots/08-database-relationships.jpg)

*Relationships between the main database tables.*

### Business process modelling

![IDEF0 A-0 diagram](screenshots/06-idef0-a0-process-diagram.jpg)

*IDEF0 process model for the pharmacy workflow.*

![IDEF0 context diagram](screenshots/07-idef0-context-diagram.jpg)

*Context-level IDEF0 diagram.*

### SQL and reporting

![Prescription sales SQL query](screenshots/03-prescription-sales-query.jpg)

*SQL query for analysing sales of prescription medicines.*

![Query results](screenshots/04-prescription-sales-query-results.jpg)

*Example query results.*

![Sales report](screenshots/05-sales-report.jpg)

*Sales report with item details and totals.*

## Database structure

The database contains nine core tables:

- Medicines
- Suppliers
- Deliveries
- Employees
- Users
- Sales
- Receipt line items
- Prescriptions
- Shopping cart

The database model includes relationships between sales and their line items, medicines and deliveries, suppliers and deliveries, and other related records.

## Example SQL query

The project includes an Access SQL query that joins sales, receipt line items, and the medicine catalogue to retrieve sales of medicines marked as prescription medicines.

The query demonstrates:

- `INNER JOIN`
- Boolean filtering with `WHERE`
- Sorting with `ORDER BY`
- Relational data retrieval across multiple tables

See [`sql/prescription_medicine_sales.sql`](sql/prescription_medicine_sales.sql).

The query filters medicines by their prescription flag. It does not independently validate a prescription or establish regulatory compliance.

## My contribution

I independently worked on:

- Analysing the pharmacy business domain
- Creating IDEF0 process diagrams
- Designing the database model and relationships
- Implementing tables and relationships in Microsoft Access
- Developing application forms
- Creating SQL and QBE queries
- Building reports with grouping and totals
- Implementing selected workflow checks using queries, macros, and VBA

## Known limitations

This project is an academic prototype. Several areas would require further development before any real-world use.

- **Expiry tracking:** the current design stores expiry dates in the medicine catalogue. A more robust inventory system should track expiry dates and quantities by individual delivery batch.
- **Stock management:** quantity is stored in a separate field. Stock consistency should be validated against deliveries, sales, returns, and adjustments.
- **Authentication:** passwords are stored in the Access table in the current implementation. This is not suitable for production; secure password hashing and a stronger access-control design would be required.
- **Prescription validation:** filtering prescription medicines does not prove that a prescription is valid.
- **Transaction integrity:** multi-item sales should be tested for partial failures and consistent totals.
- **Production readiness:** security, backups, auditability, concurrent access, and applicable regulatory requirements have not been certified.

## Skills demonstrated

Microsoft Access · SQL · Relational Database Design · QBE · VBA · Forms and Reports · Business Process Analysis · IDEF0

---

This project is presented as academic work to demonstrate my current technical skills. It is not presented as a commercially deployed or certified pharmacy system.
