-- create the board in SQL 

--drop table board

----create database chess
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
select 'R', 'Kn', 'B', 'Q', 'K', 'B', 'Kn', 'R' union all
select 'p','p','p','p','p','p','p','p' union all
select '','','','','','','','' union all
select '','','','','','','','' union all
select '','','','','','','','' union all
select '','','','','','','','' union all
select 'p','p','p','p','p','p','p','p' union all
select 'R', 'Kn', 'B', 'Q', 'K', 'B', 'Kn', 'R'

select * from board
