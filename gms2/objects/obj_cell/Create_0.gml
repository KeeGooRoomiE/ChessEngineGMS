/// @descr Init values
  
switch (global.mode)
{
#region

case -1:
#region

	global.take = 0
	global.Change_Color = "Grey"
	global.Change_ID = 0

	debug_x_check=x;
	debug_y_check=y;
   
	ID = 0;
	Color = "White";
	Piece_ID=-1;
	pieceSprite=s_segment1;
	image_speed=0;
	
	CanMove=false;
    CanTake=false;
    Moves=0;
    W_NotSafe=0;
	B_NotSafe=0;
	Action = "-"
	
	Castling_BRight = 0;
	Castling_BLeft = 0;
	Castling_WRight = 0;
	Castling_WLeft = 0;
	global.Castling_B_done=0;
	global.LeftPass = 0;
	global.RightPass = 0;
	global.Castling_W_done=0;

	Passant = 0
	Enpass = 0
	global.Passant_B2 = 0
	global.Passant_B = 0
	global.Prev_Pass = 0

	WOutOfScacco=true;
	BOutOfScacco=true;

	global.Undo_Color = 0
	global.Undo_ID = 0
	global.Undo_Cell = id
	
	global.B_ScaccoKing=noone;
	global.W_ScaccoKing=noone;
	
	global.BKing = 0
	global.WKing = 0
	global.Gotogame = 0

	global.check_color = "Grey"
	global.check_ID = -1

break;
#endregion


case 0:
#region

   
	debug_x_check=x;
	debug_y_check=y;
   
	ID = 0;
	Color = "White";
	Piece_ID=-1;
	pieceSprite=s_segment1;
	image_speed=0;
	
	CanMove=false;
    CanTake=false;
    Moves=0;
    W_NotSafe=0;
	B_NotSafe=0;
	Action = "-"
	
	Castling_BRight = 0;
	Castling_BLeft = 0;
	Castling_WRight = 0;
	Castling_WLeft = 0;
	global.Castling_B_done=0;
	global.LeftPass = 0;
	global.RightPass = 0;
	global.Castling_W_done=0;

	Passant = 0
	Enpass = 0
	global.Passant_B2 = 0
	global.Passant_B = 0
	global.Prev_Pass = 0

	WOutOfScacco=true;
	BOutOfScacco=true;

	global.Undo_Color = 0
	global.Undo_ID = 0
	global.Undo_Cell = id
	
	global.B_ScaccoKing=noone;
	global.W_ScaccoKing=noone;

	global.check_color = "Grey"
	global.check_ID = -1

break;
#endregion


#endregion
}

