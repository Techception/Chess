mainly a SQL project for now.
creating the chess game in a sql table. 

<b>Milestone Stages</b>
<br>
<i>in progress, 1 of 4 complete</i>
- Drawing the board (2/2 subtasks completed) 2025-07-26
- Moving the pieces (0/7 subtasks completed)
- Game over (0/2 subtasks completed)
- AI (0/4 subtasks completed)

<b>Drawing the board</b>
<br>
<i>complete 2025-07-26, see: DrawChessboard.sql</i>
- Formatting The FEN Notation
- adding the pieces to a table that resembles a chess board --> in review<br>
Notes:
can take the first section of the FEN notation which provides the positition and convert it into a visual representation of pieces on a chess board via an SQL table.
The 'pieces' are just letters representing the piece.  In the next 'sprint' I will consider inprovements. <br>
Still to do:- Format the remain parts of the FEN however this is not essential for the drawing 
<br>
<b>Moving the pieces</b> 
<br>
<i>in progress</i><br>
<br>
<li>selecting the right piece</li> 
<li>checking if move is legal</li>
<li>check if square is occupied</li>
<li>square is available to move to</li>
<li>square contains ally pieces blocking movement to it</li>
<li>square contains enemy pieces which can be destroyed</li>
<li>moving the piece to the legal square</li>
<br>
<b>Game Over</b>
<br>
<i>Not started</i>
- Win
- Loss
- Draw
- 50 Move Rule
- Checkmate 
  - Is it check?
  - Can the king move?
- Stalemate
- Insufficient material
- Time out
<br>   
<b>AI</b>
<br>
<i>Not started</i>
- legal movement
- Evaluation
- Strategy
- Tactics

looking to work on a smaller piece of the project looking at just drawing the positions from the FEN notation 
see file FENdraw.SQL 

Idea being i need to be able to display the positions before i consider making ways to interactively move the pieces 
first just draw the positions but then there are also other parts to the FEN i need to consider such as whos the current move 
need to learn more about FEN 
ref: https://www.chess.com/terms/fen-chess#:~:text=FEN%20is%20the%20abbreviation%20of%20Forsyth-Edwards%20Notation%2C%20and,another%20system%20designed%20by%20the%20journalist%20David%20Forsyth.

in fen lower case is black upper case is white - I will need SQL to be case sensitive.

to move the pieces I will use PGN notation 
