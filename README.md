# Data Warehousing Demo
The purpose of this project is to build a Data Warehouse using AdventureWorks's OLTP database as the primary data source. The Data Warehouse will be used to build a BI solution on Microsoft's **PowerBI** platform.
## Getting started
The first step is to download **[AdventureWorks2019's OLTP database](https://learn.microsoft.com/en-us/sql/samples/adventureworks-install-configure?view=sql-server-ver16&tabs=ssms)** and instantiate it in your preferred Database and RDBMS. I will be using **[SQL Server](https://www.microsoft.com/en-us/sql-server/sql-server-downloads)** and **[SQL Server Management Studio (SSMS)](https://learn.microsoft.com/en-us/sql/ssms/download-sql-server-management-studio-ssms?view=sql-server-ver16)**.

![image](https://user-images.githubusercontent.com/56210553/194992286-9a8ca662-0a78-4019-aa6a-c148e6a54db8.png)

There's two very useful resources I found online to help make sense of the AdventureWorks's dozens of tables and relationships:
- A **[database schema](https://improveandrepeat.com/2019/02/use-the-adventureworks-sample-database-for-your-examples/)** representing the structure of the database.
- A **[data dictionary](AdventureWorks_DataDictionary.pdf)** that describes the content of all tables in detail.
