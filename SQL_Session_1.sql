Select 
*
from dbo.AccBank,[dbo].[AccBankAccount]
inner join AccBankAccount on BankID = BankAccountID
Where BankID = BankAccountID


Select * from AccBankAccount /*as*/ A
inner join AccBank as B	on A.BankID = B.BankID


Select * from AccBank /*as*/ A
Right join AccBankAccount as B
	on A.BankID = B.BankID and A.BankName like N'%ی%'
Left join Acc

Select * from AccBankAccount /*as*/ B
Left join AccBank as A
	on A.BankID = B.BankID and A.BankName like N'%ی%'
Left join AccBank as C
	on A.BankID = B.BankID and A.BankName like N'%ی%'

Select * from AccBankAccount /*as*/ A
inner join AccBank on 1=1 and 1=5 and 0=12000 and BankID = 4

--Left join
--Right Join
--Cross Join 
--Full join
--Cross Apply
--Where BankID < 10000017