USE [AdventureWorks2019_STG_Demo]
GO
/****** Object:  Table [Sales].[Address]    Script Date: 10/12/2022 1:54:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Sales].[Address](
	[AddressID] [int] NULL,
	[AddressLine1] [nvarchar](60) NULL,
	[AddressLine2] [nvarchar](60) NULL,
	[City] [nvarchar](30) NULL,
	[StateProvinceID] [int] NULL,
	[PostalCode] [nvarchar](15) NULL,
	[SpatialLocation] [geography] NULL,
	[rowguid] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [Sales].[BusinessEntity]    Script Date: 10/12/2022 1:54:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Sales].[BusinessEntity](
	[BusinessEntityID] [int] NULL,
	[rowguid] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [Sales].[BusinessEntityAddress]    Script Date: 10/12/2022 1:54:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Sales].[BusinessEntityAddress](
	[BusinessEntityID] [int] NULL,
	[AddressID] [int] NULL,
	[AddressTypeID] [int] NULL,
	[rowguid] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [Sales].[Customer]    Script Date: 10/12/2022 1:54:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Sales].[Customer](
	[CustomerID] [int] NULL,
	[PersonID] [int] NULL,
	[StoreID] [int] NULL,
	[TerritoryID] [int] NULL,
	[AccountNumber] [varchar](10) NULL,
	[rowguid] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [Sales].[Person]    Script Date: 10/12/2022 1:54:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Sales].[Person](
	[BusinessEntityID] [int] NULL,
	[PersonType] [nvarchar](2) NULL,
	[NameStyle] [bit] NULL,
	[Title] [nvarchar](8) NULL,
	[FirstName] [nvarchar](50) NULL,
	[MiddleName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[Suffix] [nvarchar](10) NULL,
	[EmailPromotion] [int] NULL,
	[AdditionalContactInfo] [nvarchar](max) NULL,
	[Demographics] [nvarchar](max) NULL,
	[rowguid] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [Sales].[Product]    Script Date: 10/12/2022 1:54:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Sales].[Product](
	[ProductID] [int] NULL,
	[Name] [nvarchar](50) NULL,
	[ProductNumber] [nvarchar](25) NULL,
	[MakeFlag] [bit] NULL,
	[FinishedGoodsFlag] [bit] NULL,
	[Color] [nvarchar](15) NULL,
	[SafetyStockLevel] [smallint] NULL,
	[ReorderPoint] [smallint] NULL,
	[StandardCost] [money] NULL,
	[ListPrice] [money] NULL,
	[Size] [nvarchar](5) NULL,
	[SizeUnitMeasureCode] [nvarchar](3) NULL,
	[WeightUnitMeasureCode] [nvarchar](3) NULL,
	[Weight] [numeric](8, 2) NULL,
	[DaysToManufacture] [int] NULL,
	[ProductLine] [nvarchar](2) NULL,
	[Class] [nvarchar](2) NULL,
	[Style] [nvarchar](2) NULL,
	[ProductSubcategoryID] [int] NULL,
	[ProductModelID] [int] NULL,
	[SellStartDate] [datetime] NULL,
	[SellEndDate] [datetime] NULL,
	[DiscontinuedDate] [datetime] NULL,
	[rowguid] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [Sales].[ProductCategory]    Script Date: 10/12/2022 1:54:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Sales].[ProductCategory](
	[ModifiedDate] [datetime] NULL,
	[ProductCategoryID] [int] NULL,
	[Name] [nvarchar](50) NULL,
	[rowguid] [uniqueidentifier] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [Sales].[ProductSubCategory]    Script Date: 10/12/2022 1:54:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Sales].[ProductSubCategory](
	[ProductSubcategoryID] [int] NULL,
	[ProductCategoryID] [int] NULL,
	[Name] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [Sales].[SalesOrderDetail]    Script Date: 10/12/2022 1:54:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Sales].[SalesOrderDetail](
	[SalesOrderID] [int] NULL,
	[SalesOrderDetailID] [int] NULL,
	[CarrierTrackingNumber] [nvarchar](25) NULL,
	[OrderQty] [smallint] NULL,
	[ProductID] [int] NULL,
	[SpecialOfferID] [int] NULL,
	[UnitPrice] [money] NULL,
	[UnitPriceDiscount] [money] NULL,
	[LineTotal] [numeric](38, 6) NULL,
	[rowguid] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [Sales].[SalesOrderHeader]    Script Date: 10/12/2022 1:54:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Sales].[SalesOrderHeader](
	[SalesOrderID] [int] NULL,
	[rowguid] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime] NULL,
	[RevisionNumber] [tinyint] NULL,
	[OrderDate] [datetime] NULL,
	[DueDate] [datetime] NULL,
	[ShipDate] [datetime] NULL,
	[Status] [tinyint] NULL,
	[OnlineOrderFlag] [bit] NULL,
	[SalesOrderNumber] [nvarchar](25) NULL,
	[PurchaseOrderNumber] [nvarchar](25) NULL,
	[AccountNumber] [nvarchar](15) NULL,
	[CustomerID] [int] NULL,
	[SalesPersonID] [int] NULL,
	[TerritoryID] [int] NULL,
	[BillToAddressID] [int] NULL,
	[ShipToAddressID] [int] NULL,
	[ShipMethodID] [int] NULL,
	[CreditCardID] [int] NULL,
	[CreditCardApprovalCode] [varchar](15) NULL,
	[CurrencyRateID] [int] NULL,
	[SubTotal] [money] NULL,
	[TaxAmt] [money] NULL,
	[Freight] [money] NULL,
	[TotalDue] [money] NULL,
	[Comment] [nvarchar](128) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [Sales].[SalesTerritory]    Script Date: 10/12/2022 1:54:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Sales].[SalesTerritory](
	[TerritoryID] [int] NULL,
	[Name] [nvarchar](50) NULL,
	[CountryRegionCode] [nvarchar](3) NULL,
	[Group] [nvarchar](50) NULL,
	[SalesYTD] [money] NULL,
	[SalesLastYear] [money] NULL,
	[CostYTD] [money] NULL,
	[CostLastYear] [money] NULL,
	[rowguid] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime] NULL
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Sales].[SpecialOfferProduct](
	[SpecialOfferID] [int] NULL,
	[ProductID] [int] NULL,
	[rowguid] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime] NULL
);
GO

/****** Object:  Table [Sales].[StateProvince]    Script Date: 10/12/2022 1:54:34 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Sales].[StateProvince](
	[StateProvinceID] [int] NULL,
	[StateProvinceCode] [nchar](3) NULL,
	[CountryRegionCode] [nvarchar](3) NULL,
	[IsOnlyStateProvinceFlag] [bit]  NULL,
	[Name] [nvarchar](50) NULL,
	[TerritoryID] [int] NULL,
	[rowguid] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime] NULL,
);
GO

/** Let's create the views that represent the Online Sales Fact table and the dimensions **/

/** The Customer Dimension**/
CREATE VIEW dbo.STG_vw_sales_DIMcustomer 
AS

SELECT  c.CustomerID,
		p.EmailPromotion,
		a.AddressLine1,
		a.City,
		a.PostalCode,
		sp.CountryRegionCode,
		sp.StateProvinceCode

	FROM Sales.Customer c

LEFT JOIN Sales.Person p 
ON p.BusinessEntityID = c.PersonID

LEFT JOIN Sales.BusinessEntity be
ON be.BusinessEntityID = p.BusinessEntityID

LEFT JOIN Sales.BusinessEntityAddress bea
ON bea.BusinessEntityID = be.BusinessEntityID

LEFT JOIN Sales.Address a
ON a.AddressID = bea.AddressID

LEFT JOIN Sales.StateProvince sp
ON sp.StateProvinceID = a.StateProvinceID

WHERE p.PersonType = 'IN';

GO

/** The Product Dimension**/
CREATE VIEW dbo.STG_vw_sales_DIMproduct
AS

SELECT  p.ProductID,
		p.ProductNumber,
		p.Name,
		p.MakeFlag,
		p.Color,
		p.StandardCost,
		c.Name AS Category,
		sc.Name AS Subcategory

	FROM Sales.Product p

LEFT JOIN Sales.ProductSubCategory sc 
ON sc.ProductSubcategoryID = p.ProductSubcategoryID

LEFT JOIN Sales.ProductCategory c
ON c.ProductCategoryID = sc.ProductCategoryID

GO

/** The SalesTerritory Dimension**/
CREATE VIEW dbo.STG_vw_sales_DIMSalesTerritory
AS

SELECT st.TerritoryID, st.Name, st.CountryRegionCode, st.[Group] 
	FROM Sales.SalesTerritory st

GO

/** The Online Sales Fact table**/
CREATE VIEW dbo.STG_vw_sales_FACTOnlineSales
AS
SELECT  h.SalesOrderID, 
		ROW_NUMBER() OVER(partition by h.[SalesOrderID] ORDER BY h.modifieddate) AS saleLineNumber, --One order can contain multiple items
		d.ProductID, --Foreign key to the product dimension
		d.OrderQty,
		d.UnitPrice,
		d.UnitPriceDiscount,
		d.LineTotal,
		h.SubTotal,
		h.TaxAmt,
		h.Freight,
		h.TotalDue,
		CAST(h.[OrderDate] as DATE) [OrderDate] , -- will be used as a foreign key to the date dimension
		CAST(h.[DueDate] as DATE) [DueDate],
		CAST(h.[ShipDate] as DATE) [ShipDate],
		h.CustomerID, --Foreign key to the customer Dimension
		h.TerritoryID --Foreign key to the sales territory Dimension
	
	FROM Sales.SalesOrderHeader h

LEFT JOIN Sales.SalesOrderDetail d
ON d.SalesOrderID = h.SalesOrderID
	WHERE h.OnlineOrderFlag = 1 --We filter online orders
GO
