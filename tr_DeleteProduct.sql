USE Bakers_Bin

GO
CREATE TRIGGER tr_DeleteProduct
ON Products AFTER DELETE, UPDATE
AS
IF UPDATE(ProductID)
BEGIN
	IF (SELECT Products.ProductID FROM Products, deleted
	WHERE Products.ProductID = deleted.ProductID) IS NULL
	BEGIN
		ROLLBACK
		PRINT 'Referential integrity violated - Delete other tables first'
	END
	ELSE
	PRINT 'The row has been deleted'
END