-- create the board in SQL 
----create database chess
--
if OBJECT_ID(N'dbo.board',N'U') is not null drop table board;
if OBJECT_ID(N'dbo.translation',N'U') is not null drop table translation;
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
select 'bR', 'bN', 'bB', 'bQ', 'bK', 'bB', 'bN', 'bR';
--select * from board

 create table translation 
 (
	 gIndex int identity(1,1),
	 gRank nvarchar(1),
	 gFile nvarchar(1)
 )
 --select * from translation

 declare @totalSquares as int = 64
 declare @cnt as int = 0
 declare @Files as nvarchar(8) = 'ABCDEFGH'

 while @cnt < @totalSquares
 begin 
	declare @moduloFile int = 1+@cnt%8
	declare @Rank int = 1 + @cnt/8
	--select @Rank
	 -- select @ranks, 1+@cnt, @moduloFile, substring(@ranks,@moduloFile,1)
	 -- expected A;B;...;H
	 insert into translation (gRank, gFile)
	 select substring(@Files,@moduloFile,1), @Rank
	 set @cnt = @cnt + 1
 end 


 select * from translation
