Select SUM(),MAX,MIN(),AVG(),COUNT(),STRING_AGG


Select YearID,
ROW_NUMBER() Over (Partition by YearID Order by VoucherDate) 
from AccVoucherHeader H
inner join AccVoucherDetail D on D.VoucherHeaderID = H.VoucherHeaderID

Select * from (
Select ROW_NUMBER() Over (Partition by YearID Order by VoucherDate) X,BED,BES,
	SUM(BED + BES) Over (Partition by YearID,SerialCode Order by VoucherDate,ReferNumber) Y

from AccVoucherHeader
inner join AccVoucherDetail on AccVoucherDetail.VoucherHeaderID = AccVoucherHeader.VoucherHeaderID
) A Where Y > 10000000
--LAG()

With CTE
as
(
Select ROW_NUMBER() Over (Partition by YearID Order by VoucherDate) X,BED,BES,
	SUM(BED + BES) Over (Partition by YearID,SerialCode Order by VoucherDate,ReferNumber) Y

from AccVoucherHeader
inner join AccVoucherDetail on AccVoucherDetail.VoucherHeaderID = AccVoucherHeader.VoucherHeaderID
)
Select * from CTE

insert AccBank (BankID,BankLatinName)
Values (1,1,1,'2022/03/28',1,1,1,DEFAULT),
(1,1,1,'2022/03/28',1,1,1,DEFAULT),
(1,1,1,'2022/03/28',1,1,1,DEFAULT),
(1,1,1,'2022/03/28',1,1,1,DEFAULT)

insert AccBank
exec AccShowBank '','','','',''


sp_help AccBank

Select * INTO #T from AccBank

Select T. * from #T T

Select 
/*Select [BankID] +  100
      ,[BankCode]
      ,[TaxCode]
      ,[BankName]
      ,[BankLatinName]
      ,[ModifyDate]
      ,[ServerID]
      ,[CreateDate]
      ,[ModifierID]
      ,[CreatorID] from AccBank

	  */