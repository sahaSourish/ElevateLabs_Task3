# ElevateLabs_Task3

This repository contains the SQL queries and supporting work for **Task 3** of the Data Analyst Internship, which focuses on querying and analyzing structured data using SQL.

## Objective

Use SQL to extract, join, filter, and aggregate data from an ecommerce-style football match database. This task is designed to showcase the ability to manipulate relational data efficiently and derive insights through SQL.

---

## Tools Used

- SQL (PostgreSQL / MySQL / SQLite)
- GitHub for version control and submission
- Any SQL client for executing and testing queries

---

## Dataset Schema

This task uses a simplified football match dataset with the following structure:

### Tables & Columns

#### `matches`
- `match_id`: Unique ID for each match
- `season_id`: Season identifier
- `competition_id`: Foreign key referencing the competition
- `matchday`: Matchday number
- `date`: Date of the match
- `venue`: Home or Away (e.g., 'H' or 'A')
- `club_id`: ID of the home/primary club
- `opponent_id`: ID of the opposing club
- `result`: Result of the match (e.g., 'W', 'L', 'D')

#### `clubs`
- `club_id`: Unique ID for each club
- `club_name`: Name of the club
- `club_country`: Country of the club

#### `competitions`
- `competition_id`: Unique ID for each competition
- `competition_name`: Name of the competition

---

## Queries Performed

- Select all data from individual tables
- Filter matches
