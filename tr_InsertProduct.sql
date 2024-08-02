USE Bakers_Bin

GO
CREATE TRIGGER tr_InsertProduct
ON Products AFTER INSERT, UPDATE
AS
IF UPDATE(ProductID)
BEGIN
	IF (SELECT Products.ProductID FROM Products, inserted
	WHERE Products.ProductID = inserted.ProductID) IS NULL
	BEGIN
		ROLLBACK
		PRINT 'Referential integrity violated - Insert into other tables first'
	END
	ELSE
	PRINT 'The row has been inserted'
END