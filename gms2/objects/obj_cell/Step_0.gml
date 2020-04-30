   ///Light up segments
   
   
//[HOMEWORK]

//1. determine wich place is the best for checking varibales CanMove and CanTake
//2. try to find place where is the best place to not allow move in cells wich was CanMove = false;
//3. fix postitions in scr_pawn_move() for the White first move to two cells ahead




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
			
			//image_index=4*CanMove;
		}
    };
	
if Piece_ID= 0
	{
	scr_pawn_move_new(0);
	}
	
	
	