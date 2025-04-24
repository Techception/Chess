-- create the board in SQL 
----create database chess
--
if OBJECT_ID(N'dbo.board',N'U') is not null drop table board
--select OBJECT_ID(N'dbo.board',N'U')

create table board 
(
	A nvarchar(2),
	B nvarchar(2),
	C nvarchar(2),
	D nvarchar(2),
	E nvarchar(2),
	F nvarchar(2),
	G nvarchar(2),
	H nvarchar(2),
	nRank int identity (1,1),
	primary key (nRank)
)
insert into board
select 'wR', 'wN', 'wB', 'wQ', 'wK', 'wB', 'wN', 'wR' union all
select 'wp','wp','wp','wp','wp','wp','wp','wp' union all
select '','','','','','','','' union all
select '','','','','','','','' union all
select '','','','','','','','' union all
select '','','','','','','','' union all
select 'bp','bp','bp','bp','bp','bp','bp','bp' union all
select 'bR', 'bN', 'bB', 'bQ', 'bK', 'bB', 'bN', 'bR'

select * from board

-- create sp to move the pieces 
go
create or alter proc movePiece 
@startCol nvarchar,
@startRow nvarchar,
@endCol nvarchar,
@endRow nvarchar
as
begin 
declare @selectedPiece as nVarchar(2)  -- to know what peice was chosen 
-- select @selectedPiece = @startCol from board where nRank = @startRow
select *, @startCol, 'expected: a board piece e.g. wp or bK ' from board where nRank = @startRow

declare @sql nvarchar(max);
set @sql = '
	select ' + quotename(@startCol) + ' 
	from board where nRank = ' + @startRow
execute( @sql )
--print( @sql )

-- expected: a wK when input e,1,e,4
-- included a select * to see what the board looks like 

--select @startCol
--select @selectedPiece
end
exec movePiece 'e',1, 'e',5

go
CREATE FUNCTION movePiece(@selection nvarchar)
RETURNS INT 
WITH EXECUTE AS CALLER 
AS 
BEGIN
END
	select * from 
