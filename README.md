# Data Warehousing Demo
The purpose of this project is to build a Data Warehouse using AdventureWorks's OLTP database as the primary data source. The Data Warehouse will be used to build a BI solution on Microsoft's **PowerBI** platform. There's a good representation of the process this demo will go through.
<p align="center">
<img src="https://user-images.githubusercontent.com/56210553/195497260-0b3d0dd2-8034-4b92-a54a-7095552e6308.png"/>
</p>

## Getting started
The first step is to download **[AdventureWorks2019's OLTP database](https://learn.microsoft.com/en-us/sql/samples/adventureworks-install-configure?view=sql-server-ver16&tabs=ssms)** and instantiate it in your preferred Database and RDBMS. I will be using **[SQL Server](https://www.microsoft.com/en-us/sql-server/sql-server-downloads)** and **[SQL Server Management Studio (SSMS)](https://learn.microsoft.com/en-us/sql/ssms/download-sql-server-management-studio-ssms?view=sql-server-ver16)**.

![image](https://user-images.githubusercontent.com/56210553/194992286-9a8ca662-0a78-4019-aa6a-c148e6a54db8.png)

There's two very useful resources I found online to help make sense of the AdventureWorks's dozens of tables and relationships:
- A **[database schema](https://improveandrepeat.com/2019/02/use-the-adventureworks-sample-database-for-your-examples/)** representing the structure of the database.
- A **[data dictionary](AdventureWorks_DataDictionary.pdf)** that describes the content of all tables in detail.

## Choosing a business process to model
In this demo, we will build a sales data mart that will reside in the data warehouse. The business process (Fact) that will be modeled is the **online sales** that are fulfilled by AdventureWorks. In the future, if we want to add new data marts and business processes to our data warehouse, simply follow the same blueprint :blue_book:.

## Designing the dimensional model of the Online Sales
In order to design our dimensional model, we have to use data that is scattered around the OLTP database and **denormalize the tables**. To complete this step, a deep understanding of the database is necessary. This is where using the data dictionary and database schema presented in the Getting Started step will be useful.

Here's the result of my dimensional model surrounding the Online Sales business process (Fact) :point_down:	:

TODO once data mart tables have been created

## Creating the staging database and loading the data
To build our dimensional model, we have to bring the tables we need from the OLTP database into a staging database. It is a good practice to load the relevant tables to a staging database instead of manipulating the tables directly in the data source. Also, in a business setting, you often don't have permission to modify the transactional database (that means we have to bring the data in a staging database first). So let's create our staging database and the relevant tables needed to create the dimensional model for the **online sales**

![image](https://user-images.githubusercontent.com/56210553/195262686-69226974-9cf5-4eac-ada9-1b800ed2cc69.png)

Here's the **[link](STG_AdventureWorks_Demo.sql)** to the script used to create the tables (To obtain the script, simply right click on the source database > Tasks > Generate Scripts > Choose objects > Select specific database objects > Choose the tables you need > Open in new query window).

Generally, the data source is located on another server, but for the sake of this demo, the **data source** (AdventureWorks2019) and the **staging database** (AdventureWorks2019_STG_Demo) will be located on the same server.

Now that the staging database has been created, we need to populate the tables with all the source data. To do that, we will be using **SSIS**, an **ETL tool**. Here's a [basic SSIS solution](AdventureWorksOLTP_To_AdventureWorksSTG_ssis) that has the simple task of loading the data of all corresponding tables in the staging database:

![image](https://user-images.githubusercontent.com/56210553/195264955-eb452a6b-310b-46f6-828c-b4ecae0638f9.png)

CREATE THE DIMENSION AND FACT VIEWS


## Creating the Data Warehouse and loading the data
INSERTING THE DATA THROUGH VIEWS INSTANCIATED IN THE STAGING DATABASE

## Bringing the Dimensional model into PowerBI and create meaningful reports
