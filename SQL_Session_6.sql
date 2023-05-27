
--Select* from AccPerCom P
--where --P.PerComLName = N'باغین زاده' or
--P.PercomLName Like N'%باغی%'
/*
Select Left(PerComAddress,5),
isnull(PerComTypeID,0),PercomName as [نام],*,
Case
	When SexID = 0 then 'زن'
	else 'مرد'
end [جنسیت]

from AccPerCom
Where 1=1
and PerComAddress like 'تهران%' and
Left(PerComAddress,5) = 'تهران' and
Right(PercomAddress,3) = 'ششم' and
SUBSTRING(PerComNameLatin,2,2)= 'OU' and
PerComTypeID is not NULL and
isnull(PerComTypeID,0) = 0 and
isnull(PercomTypeID,isnull(TafsiliID,1)) = 1 and
isnull(isnull(PercomTypeID,TafsiliID),0) = 0 and
Coalesce(NULL,NULL) = 0

/*Group by X
Having */
Order by [نام] Desc,جنسیت Asc,
Left(PerComAddress,5)

*/


Select 
GoodsCode,Len(GoodsCode),
Len(GoodsID),REVERSE(GoodsCode),REPLICATE(GoodsCode,5),
SPACE(5),CHARINDEX(GoodsID,Goodscode)


from ShahrMedical99.dbo.InvGoodsView

Where CHARINDEX(GoodsID,Goodscode) > 0