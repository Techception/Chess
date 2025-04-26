declare @Files as nvarchar(15); 
declare @FEN as nvarchar(max);
declare @FENext as nvarchar(max);

set @Files = 'A,B,C,D,E,F,G,H';-- the files 
--set @FEN  = 'rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR';  -- fen staring position 
set @FEN  = 'r1bq1rk1/pp3ppp/2pp3n/3P4/1nB1P3/2b2N1P/PB3PP1/R2QK2R'
set @FENext = @FENext
set @FENext = replace(@FENext, 8, space(8));
set @FENext = replace(@FENext, 7, space(7));
set @FENext = replace(@FENext, 6, space(6));
set @FENext = replace(@FENext, 5, space(5));
set @FENext = replace(@FENext, 4, space(4));
set @FENext = replace(@FENext, 3, space(3));
set @FENext = replace(@FENext, 2, space(2));
set @FENext = replace(@FENext, 1, space(1));

select @FEN;
select @FENext;

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
