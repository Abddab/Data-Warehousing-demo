USE [AdventureWorks2019_DW_Demo]
GO

CREATE TABLE dbo.DimCustomer( 
      [CustomerID] [int] NOT NULL PRIMARY KEY,
      [EmailPromotion] [int] NULL,
      [AddressLine1] [nvarchar](60) NULL,
      [City] [nvarchar](30) NULL,
      [PostalCode] [nvarchar](15) NULL,
      [CountryRegionCode] [nvarchar](3) NULL,
      [StateProvinceCode] [nvarchar](3) NULL,
)
GO

CREATE TABLE dbo.DimProduct(
      [ProductID][int] NOT NULL PRIMARY KEY,
      [ProductNumber] [nvarchar](30) NOT NULL ,
      [Name] [nvarchar](50) NULL,
      [MakeFlag] [bit] NULL,
      [Color] [nvarchar](15) NULL,
      [StandardCost] [money] NOT NULL,
      [Category] [nvarchar](30) NULL,
      [Subcategory] [nvarchar](30) NULL,
)
GO

CREATE TABLE dbo.DimSalesTerritory( 
      [TerritoryID] [int] NOT NULL PRIMARY KEY,
      [Name] [nvarchar](50) NULL,
      [CountryRegionCode] [nvarchar](3) NULL,
      [Group] [nvarchar](50) NULL
)
GO

CREATE TABLE dbo.FactOnlineSales(
      [Sales_SK][int] NOT NULL IDENTITY(1,1) PRIMARY KEY,
      [SalesOrderID] [int] NOT NULL ,
      [saleLineNumber] [bigint] NOT NULL,
      [ProductID] [int],
      [OrderQty] [smallint],
      [UnitPrice] [money],
      [UnitPriceDiscount] [money],
      [LineTotal] [numeric](38,6),
      [SubTotal] [money],
      [TaxAmt] [money],
      [Freight] [money],
      [TotalDue] [money],
      [OrderDate] [date],
      [DueDate] [date],
      [ShipDate] [date],
      [CustomerID] [int],
      [TerritoryID] [int],
      FOREIGN KEY(ProductID) REFERENCES dbo.DimProduct(ProductID),
      FOREIGN KEY(CustomerID) REFERENCES dbo.DimCustomer(CustomerID),
      FOREIGN KEY(TerritoryID) REFERENCES dbo.DimSalesTerritory(TerritoryID),
      FOREIGN KEY(OrderDate) REFERENCES dbo.DimDate(Date)
)
GO

insert into dbo.FactOnlineSales select * from [AdventureWorks2019_STG_Demo].[dbo].[STG_vw_sales_FACTOnlineSales]
GO


insert into dbo.DimCustomer select * from [AdventureWorks2019_STG_Demo].[dbo].[STG_vw_sales_DIMcustomer]
GO


