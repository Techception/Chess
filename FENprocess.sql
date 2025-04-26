-- create function to find the number of fre squares in a fen 
create or alter function FENfreeSquares(@FEN nvarchar(80)) returns int
begin
return convert(int, substring(@FEN,patindex('%[1-8]%', @FEN),1))
end


go

declare @FEN nvarchar(max);
set @FEN = 'r1bq1rk1/pp3ppp/2pp3n/3P4/1nB1P3/2b2N1P/PB3PP1/R2QK2R w KQ - 0 12';
select dbo.FENfreeSquares(@FEN)
