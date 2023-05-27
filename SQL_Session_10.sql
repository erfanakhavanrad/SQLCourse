/*Declare @H	decimal = 999
Declare @T	decimal = 999,
		@J	decimal = 90

Select @T - @J

Set @H = @T + @J
Declare @BankID	decimal
Declare @BankIDs	nvarchar(MAX) = ''
Select @BankIDs = @BankIDs + Cast(BankID as varchar)+ ',' from AccBank
Select @BankIDs = Left(@BankIDs,Len(@BankIDs) - 1)
--Select Trim(@BankIDs,',')
Select @BankIDs
Set @H = 444

Select @kkk_2445 = 555


Select @kkk_2445

Print @kkk_2445
GO

Declare @kkk_2445	decimal = 999


Set @kkk_2445 = 444

Select @kkk_2445 = 444*/

/*
While GETDATE() > ''
begin
	Print 'AKHAVAN'
	Break
end
*/
Declare @BID	decimal,
		@BC		nvarchar(50)

Declare CRS CURSOR FOR
SELECT BankID,BankName from AccBank
Open CRS
Fetch NEXT from CRS INTO @BID,@BC
WHILE @@FETCH_STATUS = 0
BEGIN
	Select @BID,@BC
	Fetch NEXT from CRS INTO @BID,@BC
END
CLOSE CRS
--DEALLOCATE CRS
GO
Declare @BID	decimal,
		@BC		nvarchar(50)
Declare  CRS SCROLL CURSOR FOR
SELECT BankID,BankName from AccBank
Open CRS
Fetch NEXT from  CRS  INTO @BID,@BC
WHILE @@FETCH_STATUS = 0
BEGIN
	Select @BID,@BC
	Update AccBank Set BankLatinName = 'dss' Where BankID = @BID
	Fetch NEXT from CRS INTO @BID,@BC
	--Fetch PRIOR from  CRS  INTO @BID,@BC
END
CLOSE CRS
DEALLOCATE CRS


1000	0	1000	
2000	0	3000
0		4000	-1000
