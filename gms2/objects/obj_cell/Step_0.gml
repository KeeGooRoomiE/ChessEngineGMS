   
   ///Light up segments
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
		if  (Castling1=true)
		{
			image_index=6;
		};	
		
		//image_index=4*CanMove;
	}
};
#endregion

	// Pawn_change
pawn_change()
	