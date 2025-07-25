
--declare @FEN as nvarchar(max) = 'rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR';  -- fen staring position 
declare @FEN as nvarchar(max) = 'rnbqkbnr/pppppppp/8/8/4P3/8/PPPP1PPP/RNBQKBNR'; --b KQkq e3 0 1

/*this is a function in FENprocess.sql*/
while convert(int, substring(@FEN,patindex('%[1-8]%', @FEN),1)) <> 0
	begin
		set @FEN = replace(@FEN,convert(int, substring(@FEN,patindex('%[1-8]%', @FEN),1)),space(convert(int, substring(@FEN,patindex('%[1-8]%', @FEN),1))))
	end;
	-- this will replace all numbers in the FEN with spaces, so we can split it into rows later

-- should change this to a table funtion to make it more reusable
with position as 
(
	select value as gPosition, (9-Ordinal) as grank,
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