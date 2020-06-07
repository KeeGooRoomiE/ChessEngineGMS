// Undo

if argument0=0

if (BOutOfScacco=false)
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
	set_console("not revert, go on")
}

if argument0=1

if (WOutOfScacco=false)
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
	set_console("not revert, go on")
}