Select Cast(GetDate() as float)

Create NonClustered Index AA  on dbo._A (ID)

CREATE NONCLUSTERED INDEX BB
    ON _A (ID3)
    WHERE ID3 IS NOT NULL ;



Select GoodsCode,GoodsDesc,UnitDesc,GroupDesc 
from InvGoods 
join InvGoodsUnit on InvGoodsUnit.UnitID = InvGoods.UnitID 
Left join AccAccount X on X.AccountDesc = InvGoodsUnit.UnitID 
Left join InvGoodsGroup on InvGoodsGroup.GroupID = InvGoods.GroupID