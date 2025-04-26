-- create function to find the number of fre squares in a fen 
create function FENfreeSquares(@FEN nvarchar) returns int
begin
return substring(@FEN,patindex('%[1-8]%', @FEN),1)
end

