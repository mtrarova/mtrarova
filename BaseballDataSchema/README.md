Baseball Data Schema and Analysis
Project Overview
This project creates a structured SQL database for storing and analyzing historical baseball data using the Lahman Baseball Database. The goal is to design an efficient database schema to manage key baseball statistics related to players, teams, and their performances over the years. The project showcases how to structure data, perform data loading, and run SQL queries to extract insights.

Files Included
Baseball_Data_Schema_and_Analysis.sql: SQL script that contains the database schema creation, data loading steps, and queries for data analysis.
README.md: This file, providing an overview of the project.
Dataset
The project uses the Lahman Baseball Database, which includes statistics on Major League Baseball dating back to the 19th century. It contains information about players, teams, games, and various performance metrics.

Steps and Process
Schema Creation:

A new schema called Baseball was created in SQL to organize baseball data into separate tables such as Batting, Pitching, People, Teams, and TeamsFranchises.
Each table was designed with appropriate data types and primary keys to ensure data integrity.
Data Loading:

CSV files from the Lahman Baseball Database were imported into the schema after necessary preprocessing, such as adjusting column lengths for name and park in the Teams table.
SQL Queries:

The project includes a variety of SQL queries to explore the data:
Player Statistics: Query player batting averages, home runs, and career performance.
Team Performance: Analyze team statistics, including wins, losses, and runs scored across multiple seasons.
Player Comparisons: Compare players’ batting and pitching stats across different seasons.
A view called PlayerStatsSummary was created to consolidate key statistics for easier querying.
Data Optimization:

Primary keys and indexes were added to enhance the performance of the database and ensure efficient data retrieval.
Table structures were optimized to maintain data consistency and integrity.
Example Queries
Here are some example queries included in the project:

Top 10 Players by Home Runs:
sql
Copy code
SELECT playerID, yearID, HR
FROM Baseball.Batting
ORDER BY HR DESC
LIMIT 10;
Team Performance Over the Years:
sql
Copy code
SELECT teamID, yearID, W, L
FROM Baseball.Teams
WHERE yearID BETWEEN 2000 AND 2020
ORDER BY yearID;
Technologies Used
SQL: Data schema creation, data loading, and querying.
Lahman Baseball Database: The dataset used for the project.
Installation and Setup
Clone the repository or download the SQL script:
bash
Copy code
git clone <repository-url>
Set up a local SQL environment (e.g., MySQL, PostgreSQL, or SQL Server).
Execute the Baseball_Data_Schema_and_Analysis.sql script to create the database schema and load the data.
Future Work
Implementing more advanced queries to calculate career averages and predict future player performance.
Exploring additional insights using joins between different tables such as batting, pitching, and team statistics.
Credits
Dataset: Lahman Baseball Database. Available at Kaggle.
Contact Information
Email: mtra.rose.vazquez@gmail.com
LinkedIn: www.linkedin.com/in/rosevazquezmba
