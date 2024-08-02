USE Bakers_Bin

GO
CREATE VIEW vw_StockLevel AS
(
	SELECT Name, SOH,
	CASE
		WHEN SOH <= 10 THEN 'Stock Low'
		WHEN SOH >= 50 THEN 'Stock High'
		ELSE 'Stock Moderate'
	END AS [Stock Level]
	FROM Products
)