/// @descr Init values
   
	ID = 0;
	Color = "White";
	Piece_ID=-1;
	pieceSprite=s_segment1;
	image_speed=0;
	Castling_B = 0;
	Castling_W = 0;
	global.Castling_B_done=0;
	global.Castling_W_done=0;
	
	Passant = 0
	global.Passant_W_right = 0
	global.Passant_W_left = 0
	global.Passant_B_right = 0
	global.Passant_B_left = 0
	global.Prev_Pass = 0
	
	
    CanMove=false;
    CanTake=false;
	
    Moves=0;
	
    NotSafe=false;
    NotSafeAggressor=noone;
	Protected=false;
    