# PostgreSQL Data Validation Portfolio

This repository showcases a QA data validation project performed on the Pagila (DVD Rental Store) database using PostgreSQL.

## Project Overview

The objective of this project is to validate data integrity, relational consistency, and aggregation accuracy using SQL queries, ensuring reliable and consistent data across the database.

## Database Information

Database: Pagila (DVD Rental Store)
Tool: DBeaver
Database Type: PostgreSQL

## Test Scope

The validation covered key data aspects including:

* Data integrity validation across core transactional tables
* Join validation between related tables
* Aggregation validation on reporting views
* Filtering and query result validation

## Testing Approach

The testing included:

* Validation of foreign key relationships and data consistency
* Verification of aggregation results against manual calculations
* Testing different join paths to ensure correct data relationships
* Validation of filtering logic across single-table and multi-table queries

## Test Coverage

Total Test Cases: 15

Validation areas:

* Data Integrity Validation
* Join Validation
* Aggregation Validation
* View Validation
* Filtering Validation

## Key Findings

* All data integrity constraints across core tables are valid with no missing references
* Aggregation logic in reporting views is consistent with expected results
* An initial discrepancy in join logic was identified and corrected, highlighting the importance of accurate data relationships
* Filtering and query operations produce consistent and reliable results

## Test Result

All test cases were successfully executed with a 100% pass rate.

The database demonstrates strong data integrity, accurate relational mapping, and consistent aggregation logic across views and transactional tables.

## Repository Structure

```
postgresql-data-validation-portfolio
│
├── Evidence
│   ├── TC_DB_01_DataIntegrity_Pass.png
│   ├── TC_DB_02_DataIntegrity_Pass.png
│   ├── TC_DB_03_DataIntegrity_Pass.png
│   ├── TC_DB_04_DataIntegrity_Pass.png
│   ├── TC_DB_05_DateValidation_Pass.png
│   ├── TC_DB_06_JoinIntegrity_Pass.png
│   ├── TC_DB_07_JoinIntegrity_Pass.png
│   ├── TC_DB_08_JoinIntegrity_Pass.png
│   ├── TC_DB_09_JoinIntegrity_Pass.png
│   ├── TC_DB_10_ViewCompleteness_Pass.png
│   ├── TC_DB_11_RootCause_NoActor.png
│   ├── TC_DB_11_ViewCompleteness_FailCheck.png
│   ├── TC_DB_12_AggregationValidation_SourceTables.png
│   ├── TC_DB_12_AggregationValidation_TableView.png
│   ├── TC_DB_13_AggregationValidation_Comparison.png
│   ├── TC_DB_13_AggregationValidation_SourceTables.png
│   ├── TC_DB_14_01_FilterValidation_Pass.png
│   └── TC_DB_14_02_FilterValidationMultiTable_Pass.png
├── SQL-Scripts
│   └── pagila_database_portfolio.sql
├── Test-Documentation
│   └── PostgreSQL_Data_Validation.xlsx
│
└── README.md
```
