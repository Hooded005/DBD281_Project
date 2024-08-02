USE Bakers_Bin

GO
CREATE VIEW vw_StockSales AS
(
	SELECT Name, SOH, SOH*IncSell AS [Max Sales]
	FROM Products
	INNER JOIN ProductsPricing ON Products.ProductID = ProductsPricing.ProductID
	WHERE SOH > 0
)