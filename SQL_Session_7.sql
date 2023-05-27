Select Char(65),Char(97),Char(13),Char(9),Soundex()

Select * from [dbo].[PubSplit]('224243,345345,5645646',',')


Select Cast(GetDate() as char(50)),Try_Cast('sdfsdf' as decimal)

Select Len(STRING_AGG(Cast(VoucherDetailID as nvarchar(500)),',')) - 
Len(REPLACE(STRING_AGG(Cast(VoucherDetailID as nvarchar(500)),','),',','')),VoucherHeaderID,Count(VoucherHeaderID),STRING_AGG(Cast(VoucherDetailID as nvarchar(500)),',') ,
CONVERT(Char(8),ModifyDate,108),ModifyDate,
Sum(BED+BES),SUM(BES) 
,(Select SUM(BED) from AccVoucherDetail),'234325ij3hirskfnskdf'
from AccVoucherDetail
Where BED > 10
Group by VoucherHeaderID,CONVERT(Char(8),ModifyDate,108),ModifyDate
Having Len(STRING_AGG(Cast(VoucherDetailID as nvarchar(500)),',')) - 
Len(REPLACE(STRING_AGG(Cast(VoucherDetailID as nvarchar(500)),','),',','')) > 3