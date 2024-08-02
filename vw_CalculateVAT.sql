USE Bakers_Bin

GO
CREATE VIEW vw_VATCalculate AS
(
	SELECT IncSell-ExclSell AS [VAT Payable], ExclCost*15/100 AS [VAT Receivable], (IncSell-ExclSell) - ExclCost*15/100 AS Owed
	FROM ProductsPricing
)