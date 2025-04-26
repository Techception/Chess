mainly a SQL project for now.
creating the chess game in a sql table. 

stages:

>> Drawing the board (0/2 subtasks completed)
>> moving the pieces (0/2 subtasks completed)
>> Game over (0/2 subtasks completed)
>> AI (/ subtasks completed)

stages: 
 - Drawing the board -> in progress FENdraw.sql
 - - formatting the FEN notation
   - - Manually --> Done
     - Automatically --> In progress to do: FEN derived table 
   - adding the pieces to a table that resembles a chess board --> in review 
 - moving the pieces - in progress
 - - selecting the right piece
   - checking if move is legal
   - -  check if square is occupied
     - - square is available to move to
       - square contains ally pieces blocking movement to it
       - square contains enemy pieces which can be destroyed 
     - moving the piece to the legal square
  - check for game over
    - - is it check?
      - can the king move?
  - chess engine AI
  - - legal movement
    - Evaluation
    - - Strategy
      - tactics
      - worth 
    - 


looking to work on a smaller piece of the project looking at just drawing the positions from the FEN notation 
see file FENdraw.SQL 

Idea being i need to be able to display the positions before i consider making ways to interactively move the pieces 
first just draw the positions but then there are also other parts to the FEN i need to consider such as whos the current move 
need to learn more about FEN 
ref: https://www.chess.com/terms/fen-chess#:~:text=FEN%20is%20the%20abbreviation%20of%20Forsyth-Edwards%20Notation%2C%20and,another%20system%20designed%20by%20the%20journalist%20David%20Forsyth.

in fen lower case is black upper case is white - I will need SQL to be case sensitive.

to move the pieces I will use PGN notation 
