declare @Files as nvarchar(15) = 'A,B,C,D,E,F,G,H';-- the files  
declare @FEN as nvarchar(max) = 'rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR';  -- fen staring position 

with board as 
(
--select value as gfile, ordinal as gfilenum from string_split(@files, ',', 1) union all
select value as gFile, ordinal as gFileNum, ROW_NUMBER() over (partition by value order by ordinal) as grank from 
	(
	select * from string_split(@files, ',', 1) union all
	select * from string_split(@files, ',', 1) union all
	select * from string_split(@files, ',', 1) union all
	select * from string_split(@files, ',', 1) union all
	select * from string_split(@files, ',', 1) union all
	select * from string_split(@files, ',', 1) union all
	select * from string_split(@files, ',', 1) union all
	select * from string_split(@files, ',', 1) 
	) as preboard
), 
position as 
(
	select value as gPosition, Ordinal as grank,
	substring(value, 1,1) as A,
	substring(value, 2,1) as B,
	substring(value, 3,1) as C,
	substring(value, 4,1) as D,
	substring(value, 5,1) as E,
	substring(value, 6,1) as F,
	substring(value, 7,1) as G,
	substring(value, 8,1) as H
	from string_split(@FEN, '/', 1)
)
--select *, substring(gPosition, gFileNum, 1) from board as b inner join position as p on b.grank = p.grank order by b.grank, gFileNum
select * from position
--SELECT * FROM BOARD
