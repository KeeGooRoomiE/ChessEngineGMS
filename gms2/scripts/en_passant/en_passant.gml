// En Passant


// White 
#region

//global.Prev_Pass = id
Returned=0;

if Piece_ID = 0 and Color = "Black" and (ID >= 24) and (ID<= 31) and Moves=1
	{
	Returned=collision_point(x+sprite_width*1.5,y+sprite_height*0.5,obj_cell,false,true);
	if (Returned.Piece_ID != noone)
		{
		if (Returned.Piece_ID = 0) 
			{
			//global.Passant_W_right = Returned.id
			Returned=collision_point(x+sprite_width*0.5,y-sprite_height*0.5,obj_cell,false,true);
			Returned.Passant = 1
			}
		}
	Returned=collision_point(x-sprite_width*0.5,y-sprite_height*0.5,obj_cell,false,true);
	if (Returned.Piece_ID != noone)
		{
		if(Returned.Piece_ID = 0) 
			{
			//global.Passant_W_left = Returned.id
			Returned=collision_point(x+sprite_width*0.5,y-sprite_height*0.5,obj_cell,false,true);
			Returned.Passant = 1
			}
		}
	}
#endregion

// Black
#region

#endregion
