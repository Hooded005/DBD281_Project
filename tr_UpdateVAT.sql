USE Bakers_Bin

GO
CREATE TRIGGER tr_UpdateVAT
ON ProductsPricing
AFTER UPDATE
AS
IF UPDATE(VATPercentage)
BEGIN
	UPDATE ProductsPricing
	SET IncSell = ExclSell*(100+VATPercentage)/100
END