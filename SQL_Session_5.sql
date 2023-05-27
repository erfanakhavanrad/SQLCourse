/*Select * from AccVoucherHeader H
Cross Apply (Select * from AccVoucherDetail X Where H.VoucherDateG = X.Bed) D
Outer Apply (Select * from AccVoucherDetail X Where H.VoucherDateG = X.Bed) X
where D.VoucherHeaderID = H.VoucherHeaderID


Select * from AccVoucherHeader H
inner join (Select * from AccVoucherDetail X Where H.VoucherDateG = X.Bed) D on D.VoucherHeaderID = H.VoucherHeaderID



*/


Select 
Case
	When 1=1 or 2=2 or (Select 1) = 1 then 345345234
	When 1=1 or 2=2 or (Select 1) = 1 then 345345234
	When 1=1 or 2=2 or (Select 1) = 1 then 345345234
	When 1=1 or 2=2 or (Select 1) = 1 then 345345234
	When 1=1 or 2=2 or (Select 1) = 1 then 345345234
	When 1=1 or 2=2 or (Select 1) = 1 then 345345234
	When 1=1 or 2=2 or (Select 1) = 1 then 345345234
	When 1=1 or 2=2 or (Select 1) = 1 then 345345234
	When 1=1 or 2=2 or (Select 1) = 1 then 345345234
	When 1=1 or 2=2 or (Select 1) = 1 then 345345234
	When 1=1 or 2=2 or (Select 1) = 1 then 345345234
	When 1=1 or 2=2 or (Select 1) = 1 then	Case
												When 1=1 or 2=2 or (Select 1) = 1 then
												Case
													When 1=1 or 2=2 or (Select 1) = 1 then 345345234
													else 1123123123*NULL
												end
											end

end as [سلام],
* 
from AccPerCom
Where 1=1



Select 
Case
	1000
	When 2000 then 423452435
	When 2000 then 423452435
	When 2000 then 423452435
	When 2000 then 423452435
	When 2000 then 423452435
	When 2000 then 423452435
end

Declare @2VoucherSTATID	decimal
Select 
Case
	@2VoucherSTATID
	When 1 then 'صادر شده'
	When 2 then 'کنترل شده'
	When 3 then 'صادر شده'
	When 4 then 'صادر شده'
end



Declare @M	decimal

--Select 
--Case
--	@M
--	When 1 then-- 'فروردین'
--	Case
--		When 1=1 then
--		Case @M
--				When 2 then 'کنترل شده'
--				When 3 then 'صادر شده'	
--		end
--	end
--	When 2 then 'کنترل شده'
--	When 3 then 'صادر شده'
--	When 4 then 'صادر شده'
--	When 4 then 'صادر شده'
--	When 4 then 'صادر شده'
--	When 4 then 'صادر شده'
--	When 4 then 'صادر شده'
--	When 4 then 'صادر شده'
--	When 4 then 'صادر شده'
--	When 4 then 'صادر شده'
--	When 4 then 'صادر شده'
--	else ''
--end

Go

Declare @M	decimal

Select * from 
AccPerCom
Where 
Case
	@M
	When 1 then-- 'فروردین'
	Case
		When 1=1 then
		Case @M
				When 2 then 'کنترل شده'
				When 3 then 'صادر شده'	
		end
	end
	When 2 then 'کنترل شده'
	When 3 then 'صادر شده'
	When 4 then 'صادر شده'
	When 4 then 'صادر شده'
	When 4 then 'صادر شده'
	When 4 then 'صادر شده'
	When 4 then 'صادر شده'
	When 4 then 'صادر شده'
	When 4 then 'صادر شده'
	When 4 then 'صادر شده'
	When 4 then 'صادر شده'
	else ''
end > 1


GO 100


Select* from AccPerCom P
where --P.PerComLName = N'باغین زاده' or
P.PercomLName Like N'باغین زاده'