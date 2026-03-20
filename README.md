# PostgreSQL Data Validation Portfolio

This repository contains a QA data validation project performed on the Pagila (DVD Rental Store) database using PostgreSQL.

## Project Overview

The objective of this project is to validate data integrity, relational consistency, and aggregation accuracy using SQL queries.

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

postgresql-data-validation-portfolio
├── Evidence
├── SQL-Scripts
├── Test-Documentation
└── README.md
