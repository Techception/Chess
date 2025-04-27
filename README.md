mainly a SQL project for now.
creating the chess game in a sql table. 

<h3>Milestone Stages</h3>
Drawing the board (0/2 subtasks completed)<br>
Moving the pieces (0/2 subtasks completed)<br>
Game over (0/2 subtasks completed)<br>
AI (0/3 subtasks completed)<br>

<dl>
<dt>Drawing the board <i>in progress, see: FENdraw.sql</i></dt>
 <dd>formatting the FEN notation</dd>
 <dd>Manually --> Done</dd>
 <dd>Automatically --> In progress to do: FEN derived table0</dd>
 <dd>adding the pieces to a table that resembles a chess board --> in review</dd> 
</dl>

<h5>Moving the pieces</h5> - in progress
<ul>
 <li> selecting the right piece</li>
 <li> checking if move is legal</li>
 <li></li>
 <li></li>
 
- - check if square is occupied
- - square is available to move to
- - square contains ally pieces blocking movement to it
- - square contains enemy pieces which can be destroyed 
- moving the piece to the legal square
</ul>

 
 <h5>Game Over</h5>
 - is it check?
 - can the king move?
   
<h5>AI</h5>
- legal movement
- Evaluation
- - Strategy
- - tactics
- - worth 

looking to work on a smaller piece of the project looking at just drawing the positions from the FEN notation 
see file FENdraw.SQL 

Idea being i need to be able to display the positions before i consider making ways to interactively move the pieces 
first just draw the positions but then there are also other parts to the FEN i need to consider such as whos the current move 
need to learn more about FEN 
ref: https://www.chess.com/terms/fen-chess#:~:text=FEN%20is%20the%20abbreviation%20of%20Forsyth-Edwards%20Notation%2C%20and,another%20system%20designed%20by%20the%20journalist%20David%20Forsyth.

in fen lower case is black upper case is white - I will need SQL to be case sensitive.

to move the pieces I will use PGN notation 
