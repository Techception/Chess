create or alter proc FENdraw 
@FEN as nvarchar(max)
AS
-- testing scenarios 
--set @FEN  = 'rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR';  -- fen staring position note that the full fen will have additional characters that need to be accounted for
--set @FEN  = 'r1bq1rk1/pp3ppp/2pp3n/3P4/1nB1P3/2b2N1P/PB3PP1/R2QK2R'
--set @FEN = 'r1bq1rk1/pp3ppp/2pp3n/3P4/1nB1P3/2b2N1P/PB3PP1/R2QK2R w KQ - 0 12'

BEGIN
declare @FENext as nvarchar(max);
set @FENext = @FEN
select @FENext = value from string_split(@FENext, ' ', 1) where ordinal = 1 -- just get the position part of the FEN
select @FENext
--
--convert the enpy square into spaces for display on the table later 
set @FENext = replace(@FENext, 8, space(8));
set @FENext = replace(@FENext, 7, space(7));
set @FENext = replace(@FENext, 6, space(6));
set @FENext = replace(@FENext, 5, space(5));
set @FENext = replace(@FENext, 4, space(4));
set @FENext = replace(@FENext, 3, space(3));
set @FENext = replace(@FENext, 2, space(2));
set @FENext = replace(@FENext, 1, space(1));


-- this bit will convert the FEN notation into a visible table
with position as 
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
	from string_split(@FENext, '/', 1)
) 
select * from position
END
go

exec FENdraw @FEN = 'r1bq1rk1/pp3ppp/2pp3n/3P4/1nB1P3/2b2N1P/PB3PP1/R2QK2R w KQ - 0 12'
