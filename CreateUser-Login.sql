USE Bakers_Bin

CREATE LOGIN Sean WITH PASSWORD = 'Sean123'
CREATE LOGIN Ricardo WITH PASSWORD = 'Ricardo123'
CREATE LOGIN Xander WITH PASSWORD = 'Xander123'

CREATE USER Manager FOR LOGIN Sean
CREATE USER Employee FOR LOGIN Ricardo
CREATE USER Intern FOR LOGIN Xander

GRANT UPDATE, INSERT, DELETE ON [dbo].[InventoryCheck] TO Employee
GRANT UPDATE, INSERT, DELETE ON [dbo].[InventoryPricing] TO Employee
GRANT UPDATE, INSERT, DELETE ON [dbo].[Products] TO Employee
GRANT UPDATE, INSERT, DELETE ON [dbo].[ProductsPricing] TO Employee
GRANT UPDATE, INSERT, DELETE ON [dbo].[Suppliers] TO Employee

GRANT SELECT ON [dbo].[InventoryCheck] TO Intern
GRANT SELECT ON [dbo].[InventoryPricing] TO Intern
GRANT SELECT ON [dbo].[Products] TO Intern
GRANT SELECT ON [dbo].[ProductsPricing] TO Intern
GRANT SELECT ON [dbo].[Suppliers] TO Intern