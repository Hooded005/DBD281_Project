USE Bakers_Bin

GO
CREATE VIEW vw_ProductsPerSupplier AS
(
	SELECT CompanyName, Name, ExclCost
	FROM Products
	INNER JOIN ProductsPricing ON Products.ProductID = ProductsPricing.ProductID
	INNER JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID
	GROUP BY CompanyName, Name, ExclCost
)