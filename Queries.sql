--This query shows the max amount of sales for every stock item that has low stock on hand
SELECT Name, SOH, [Max Sales]
FROM [Bakers_Bin].[dbo].[vw_StockSales]
WHERE SOH <= 10

--This query shows the supplier, the product and the cost of the product
DECLARE @Product NVARCHAR(55)
SET @Product = 'WATER STILL 500ML' --This is an example of an input, any product name can be entered into it

SELECT CompanyName, Name, ExclCost
FROM [Bakers_Bin].[dbo].[vw_ProductsPerSupplier]
WHERE Name = @Product

--Query to display all the products which has low stock
SELECT Name, SOH
FROM [Bakers_Bin].[dbo].[vw_StockLevel]
WHERE [Stock Level] = 'Stock Low'

--This query displays the total amount owed to SARS through VAT
SELECT CONCAT('R', SUM([Owed])) AS TotalOwed
FROM [Bakers_Bin].[dbo].[vw_VATCalculate]