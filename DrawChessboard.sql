create or alter procedure DrawChessboard
@FEN nvarchar(max)
as
set @FEN = dbo.FENprocessFreeSquares(@FEN);

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
select * from position;
go
-----------------------------
-- main
--declare @FEN as nvarchar(max) = 'rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR';  -- fen staring position 
declare @FEN as nvarchar(max) = 'rnbqkbnr/pppppppp/8/8/4P3/8/PPPP1PPP/RNBQKBNR'; --b KQkq e3 0 1
exec DrawChessboard @FEN

