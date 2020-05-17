// En Passant


// Black
#region

global.Prev_Pass = id
Returned=0;
pos_passant = 0

if Piece_ID = 0 and Color = "Black" and (ID >= 24) and (ID<= 31) and Moves=1
	{
	Returned=collision_point(x+sprite_width*1.5,y+sprite_height*0.5,obj_cell,false,true);
	if (Returned.Piece_ID != noone)
		{
		if (Returned.Piece_ID = 0) and (Returned.Color = "White")
			{
			global.Passant_B_right = Returned.id
			pos_passant = 1
			//Returned=collision_point(x+sprite_width*0.5,y-sprite_height*0.5,obj_cell,false,true);
			//other.Passant = 1
			}
		}
	Returned=collision_point(x-sprite_width*0.5,y-sprite_height*0.5,obj_cell,false,true);
	if (Returned.Piece_ID != noone)
		{
		if(Returned.Piece_ID = 0) and (Returned.Color = "White")
			{
			global.Passant_B_left = Returned.id
			pos_passant = 1
			//Returned=collision_point(x+sprite_width*0.5,y-sprite_height*0.5,obj_cell,false,true);
			//other.Passant = 1
			}
		}
	Returned=collision_point(x+sprite_width*0.5,y-sprite_height*0.5,obj_cell,false,true);
	if pos_passant = 1
		{
		Returned.Passant = 1
		}
	
	}
#endregion

// White
#region

#endregion
