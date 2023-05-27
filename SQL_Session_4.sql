/*
Create View _TRS
as
Select R.RecieptTypeID,T.RecieptType,R.VoucherID from TrsRecieptVoucher R
Left join TrsRecieptType T on T.RecieptTypeID = R.RecieptTypeID

Select D.VoucherDetailID,T.RecieptType from TrsVoucherDetail D
Left join _TRS T on T.VoucherID = D.VoucherDetailID and T.RecieptType = 0
*/


Select * from (
Select * from (
Select Sum(D.Quantity) as SUMQ,H.VoucherHeaderID HID
from SaleVoucherHeader H
Left join SaleVoucherDetail D on D.VoucherHeaderID = H.VoucherHeaderID
Group by H.VoucherHeaderID
Having Sum(D.Quantity) > 5) A
inner join SaleVoucherHeader H on H.VoucherHeaderID = A.HID
Where A.SUMQ > 5 ) B

Select *,
(Select Sum(D.Quantity) from SaleVoucherDetail D Where D.VoucherHeaderID = H.VoucherHeaderID) 
from SaleVoucherHeader H


Select *,X
from SaleVoucherHeader H
Left join (Select D.VoucherHeaderID,Sum(D.Quantity) X from SaleVoucherDetail D Group by D.VoucherHeaderID) D on D.VoucherHeaderID= H.VoucherHeaderID


Select H.*,B.S from SaleVoucherHeader H
Outer Apply (Select Sum(D.Quantity) S from SaleVoucherDetail D Where D.VoucherHeaderID = H.VoucherHeaderID) B


Select Sum(D.Quantity) as SUMQ,H.VoucherHeaderID HID
from SaleVoucherHeader H
Left join SaleVoucherDetail D on D.VoucherHeaderID = H.VoucherHeaderID
Group by H.VoucherHeaderID
Having Sum(D.Quantity) > 5