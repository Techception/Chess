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
create proc movePiece 
@start nvarchar,
@end nvarchar
as
begin
end
