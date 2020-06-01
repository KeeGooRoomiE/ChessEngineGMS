/// @descr Init values
   
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
	
	Castling_B = 0;
	Castling_W = 0;
	global.Castling_B_done=0;
	global.LeftPass = 0;
	global.RightPass = 0;
	global.Castling_W_done=0;

	Passant = 0
	Enpass = 0
	global.Passant_B2 = 0
	global.Passant_B = 0
	global.Prev_Pass = 0
	
	global.Undo_Color = 0
	global.Undo_ID = 0

	
	
    NotSafeAggressor=noone;
	Protected=false;
    
	isSelectingPiece=false;