/// @descr Init values
   
   //TODO: 
   //check target positions by drawing line
   //check scacco positions
   //1. Check king_check() script
   //2. Check all pieces move scripts argument 1 (like  pawn_move_check(1) )
   
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

	
	
    NotSafeAggressor=noone;
	Protected=false;
    
	isSelectingPiece=false;