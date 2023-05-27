/*
Declare @THJK3 dbo.[THJK]
insert @THJK3 Select 1,2
exec TEST 5,'44444','333ffff',@THJK3
*/
/*
Declare @THJK3 dbo.[THJK]
insert @THJK3 Select 1,2
TEST @X = 2,
@U = '444'


5,'44444','333ffff',@THJK3
*/

/*
Declare @i	int
Declare @THJK3 dbo.[THJK]
exec @i = TEST 5,'44444','333ffff',@THJK3
*/


/*
Declare @i	int
Declare @THJK3 dbo.[THJK]
Declare @EE	nvarchar
exec @i = TEST 5,'44444',@EE out,@THJK3


Select @EE
*/


Alter Procedure TEST
@X	int	= 0,
@U	char = 'ewwerwr'	out,
@E	nvarchar	output,
@THJK	[dbo].[THJK] READONLY 
as

Declare @THJK2 dbo.[THJK]

insert @THJK2
Select * from @THJK

insert @THJK2
Select 1,2

/*DECLARE @BsankID decimal(18,0)

DECLARE myCursor CURSOR FOR
SELECT BankID FROM AccBank
OPEN myCursor
FETCH NEXT from my Cursot INTO @BankID
WHILE @@FETCH_STATUS = 0
BEGIN 

--sth
FETCH NEXT from my Cursot INTO @BankID
END 

close myCursor
deallocate myCursor

*/
/*

Declare @THJK	TABLE
(X	char,
 Y	int)

 */
 /*
Create Table THJK
(X	char,
 Y	int)*/

 --DROP Table if Exists #THJK
 Create Table #THJK2
(X	char,
 Y	int)
 /*
  Create Table ##THJK
(X	char,
 Y	int)*/

 /*
 Create Type THJK as TABLE
(X	char,
 Y	int)*/
 Set @E = '432354'

 Return 5354956