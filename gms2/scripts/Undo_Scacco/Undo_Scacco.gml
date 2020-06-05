// Undo

//if (global.scacco = 1)
//{
//	set_console("here we go")

if (BOutOfScacco=false) or (WOutOfScacco=false)
{
	with (global.Undo_Cell)
	{
		Color = global.Undo_Color
		Piece_ID = global.Undo_ID
	}
	with (global.Prev_Cell)
	{
		Color = global.Cell_Color;
		Piece_ID = global.Piece_Index;
	}
				
set_console("Revert last move");
global.player = global.player;
				
}
else
{
	global.scacco=0;
	global.mode=0;
	global.player= - global.player;
}
//}
//else
//{
//	//setting to common moves
//	global.mode = 0
//	global.player = -global.player;
//	//TODO: Delete doublecheck
//	set_console("You re out of scacco")
//}