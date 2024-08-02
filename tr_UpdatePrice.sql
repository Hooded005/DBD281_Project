USE Bakers_Bin

GO
CREATE TRIGGER tr_Price
ON ProductsPricing
AFTER UPDATE
AS
IF UPDATE(MarkUp)
BEGIN
	UPDATE ProductsPricing
	SET ExclSell = ExclCost*(100+Markup)/100
	UPDATE ProductsPricing
	SET IncSell = ExclSell*(100+VATPercentage)/100
END