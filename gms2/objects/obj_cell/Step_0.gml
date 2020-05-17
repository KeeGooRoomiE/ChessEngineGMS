 
if global.mode = 0
{

	//Light up segments
	#region

	if (global.Selected=ID) 
	{
		image_index=3
	}
	else
	{
		if (global.Debug_Mode)  //if (global.Debug_Mode=true)
		{
			if (Color="White")
			{
				image_index=1;
			}
			if (Color="Grey")
			{
				image_index=0;
			}
			if (Color="Black")
			{
				image_index=2;
			}
		}
		else
		{
			image_index=0;
			
			if  (CanMove=true)
			{
				image_index=5;
			};
			
			if  (CanTake=true)
			{
				image_index=4;
			};
			if  (Castling_B=true) or (Castling_W=true) or (Passant = 1)
			{
				image_index=6;
			};	
			if  (NotSafe=true) 
			{
				image_index=7;
			};	
		
			//image_index=4*CanMove;
		}
	};
	#endregion


	//checks for a not safe position
	pawn_move_check(1)
	rook_move_check(1)
	knight_move_check(1)
	bishop_move_check(1)
	queen_move_check(1)
	king_move_check(1)

	king_move_check(2);   //check for a global.scacco
	
	pawn_change() // Pawn_change
}
else		//if global.mode=1;
{
	//nothing here by this moment
	
	if (id = global.moveCell)
	{
		isSelectingPiece=true;
	}
}
  