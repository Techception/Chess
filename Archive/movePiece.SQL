declare @FEN nvarchar(max);
declare @FENext as nvarchar(max);

set @FEN = 'r1bq1rk1/pp3ppp/2pp3n/3P4/1nB1P3/2b2N1P/PB3PP1/R2QK2R w KQ - 0 12';
set @FENext = @FEN

select @FENext = value from string_split(@FENext, ' ', 1) where ordinal = 1 -- just get the position part of the FEN
select @FENext

declare @FENfreeSq int
set @FENfreeSq = substring(@FENext,patindex('%[1-8]%', @FENext),1)
select replace(@FENext, @FENfreeSq, space(@FENfreeSq))
--select replace(@FENext, 

select replace(value, @FENfreeSq, space(@FENfreeSq))
select value from string_split(@FENext, ' ', 1) where ordinal = 1
