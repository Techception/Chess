mainly a SQL project for now.
creating the chess game in a sql table. 

main play table:
columns: A, B, C, D, E, F, G, H
and 8 rows. 

so its very close to real chess at the moment.

I will represent the pieces like this:
white King - wK
white Queen - wQ
white Rook - wR
white Bishop - wB
white Knight - wN
white Pawn - wp

black King - bK
black Queen  - bQ
black Rook - bR
black Bishop - bB
black Knight - bN
black Pawn - bp

Perhaps I will consider linearising the board to make it easier to control. 
challenges with having it as a table are that I would need to prepare my sql statements in a string first 
harder to debug i think 

liniearisation would like like so: 
standard chess board is 8x8 so 64 squares 
Ill go along the ranks so A to H would be 1 to 8 in the linear scheme for rank 1 
then in rank 2 it would be 9 to 16
etc 
rank 8 would be 56 to 64 
I could then use a translation table for the interface so the user could put something like e4 
the translation will find the index and the pieces will move. 

in base 8 i could easily make key value mair like this 
12345678
12345678
12345678
12345678
12345678
12345678
12345678
12345678


okay so now ive built a table that essentially linearised the chess board 
columns for an index between 1 to 64 that correspond to each file and rank of the board 

i can use this to create somekind of proc or funtion that the user will enter the selected square and the go to square 
it will choose the piece on the translation board and move it to the appropriate row 

I will then have another proc that scans the translation table and uses the value to update the display table that will look more like the conventional chess board.  maybe ultimately this will be replaced. 


looking to work on a smaller piece of the project looking at just drawing the positions from the FEN notation 
see file FENdraw.SQL 

Idea being i need to be able to display the positions before i consider making ways to interactively move the pieces 
first just draw the positions but then there are also other parts to the FEN i need to consider such as whos the current move 
need to learn more about FEN 
ref: https://www.chess.com/terms/fen-chess#:~:text=FEN%20is%20the%20abbreviation%20of%20Forsyth-Edwards%20Notation%2C%20and,another%20system%20designed%20by%20the%20journalist%20David%20Forsyth.
