declare @Files as nvarchar(15); 
declare @FEN as nvarchar(max);
declare @FENext as nvarchar(max);

set @Files = 'A,B,C,D,E,F,G,H';-- the files 
--set @FEN  = 'rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR';  -- fen staring position 
set @FEN  = '2R5/5P2/k4P2/4p2p/1p2r3/1K1PB1PP/3PN3/3r4'
set @FENext = replace(@FEN, 8, space(8));

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
