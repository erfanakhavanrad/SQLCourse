Select SCOPE_IDENTITY() from _A



INSERT _A (ID,Code)
VALUES(111,'234234')

INSERT _A (ID,Code)
VALUES(111,'234234')

Select SCOPE_IDENTITY()
Select @@IDENTITY
Select IDENT_CURRENT('_A')

DBCC CHECKIDENT (_A)

CREATE SEQUENCE [dbo].[ID] 
 AS [decimal](18, 0)
 START WITH 100
 INCREMENT BY 1
 MINVALUE -999999999999999999
 MAXVALUE 999999999999999999
 CACHE 


Select Next Value for ID

SELECT current_value FROM sys.sequences WHERE name = 'ID' 
