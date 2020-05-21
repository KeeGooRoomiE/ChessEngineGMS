///Init

//AI GOALS

//1. Take a piece when its turn
//1.1 Check what turn is at the game rigth now 
//1.2 [GOTO obj_cell] Set a cost for an every piece
//2. Find a position to set the piece(setting a new cell for a piece)
//2.1 Set an array of available moves for that piece 
//2.2 Set a target cell(and actually move the piece to that cell)
//3. Set a chance to allow setting special moves(take, passant, etc)
//4. Turn move after the move end

//	var piece
//	var target cell
//var array[]
//bool canTake
//var moving cell
//bool canPassant
//bool canCast
//	bool isEnded
//	bool canStart
//	var time 
//	var phase

//1. start
//2. find piece - check array - save target cell
//3. make a move 
//4. set turn - finish 

//think
//take piece
//think 
//move piece
//your turn


Phase = 0;


canStart=false;
isEnded=false;
//
timeIsSet=false;

startPiece=noone;
targetCell=noone;

myColor = global.player*(-1);
if (myColor)
{
	time=irandom_range(1,6)*room_speed;
}
else
{
	time=irandom_range(1,2)*room_speed;
}

//array_length_1d(array);