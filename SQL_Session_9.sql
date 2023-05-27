;With C (BankID,BankCode)
as
(Select BankID,BankName from AccBank),
D (BankID,BankCode)
as
(Select BankID,BankName from AccBank),
E (Y,X)
as
(Select BankID Y,BankName X from AccBank)
Select * from E



Select * from SaleVoucherDetail
Where SecUnitID in (Select isnull(DReferID,0) from SaleVoucherDetail)


Select * from SaleVoucherDetail D
Where Exists (Select * from (Select Quantity,ROW_NUMBER() Over (Order by Quantity Desc) RN from SaleVoucherDetail X) C Where C.RN = 1 and C.Quantity = D.Quantity)


if Exists (Select Top 1 1 from AccPerCom)
	Select 5

Select Distinct * from (
Select Distinct BankID,BankCode from AccBank
Union All
Select Distinct BankID,BankCode from AccBank
) A
Select PerComCode,PerComCode from AccPerCom Where ISNUMERIC(PerComCode) = 1


Select Distinct BankID,BankCode from AccBank
union All
Select Distinct BankID zxdz,BankCode ZX  from AccBank
union All
Select Distinct BankID asdas ,BankCode  asdasd from AccBank

Order by BankID