create or alter function FENfreeSquares(@FEN nvarchar(80)) returns int
--extracts first numberic in the FEN notation 
-- e.g. in 'r1bq1rk1/pp3ppp/2pp3n/3P4/1nB1P3/2b2N1P/PB3PP1/R2QK2R w KQ - 0 12'
-- the first number is 1 
begin
return convert(int, substring(@FEN,patindex('%[1-8]%', @FEN),1))  
end
go

declare @FEN nvarchar(max);
set @FEN = 'r1bq1rk1/pp3ppp/2pp3n/3P4/1nB1P3/2b2N1P/PB3PP1/R2QK2R w KQ - 0 12';
select dbo.FENfreeSquares(@FEN)
go


create or alter function FENprocessFreeSquares(@FEN nvarchar(80)) returns nvarchar(80)
--all numbers in FEN processed to spaces 
-- e.g. in 'r1bq1rk1/pp3ppp/2pp3n/3P4/1nB1P3/2b2N1P/PB3PP1/R2QK2R'
-- 'r bq rk /pp   ppp/  pp   n/   P    / nB P   /  b  N P/PB   PP /R  QK  R'
begin 
	while (select dbo.FENfreeSquares(@FEN)) <> 0
		begin
			set @FEN = replace(@FEN,dbo.FENfreeSquares(@FEN),space(dbo.FENfreeSquares(@FEN)))
		end
	return  @FEN  
end
go

declare @FEN nvarchar(max);
set @FEN = 'r1bq1rk1/pp3ppp/2pp3n/3P4/1nB1P3/2b2N1P/PB3PP1/R2QK2R w KQ - 0 12';
select dbo.FENprocessFreeSquares(@FEN)


