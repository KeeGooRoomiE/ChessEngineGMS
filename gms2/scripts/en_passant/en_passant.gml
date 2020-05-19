// En Passant

// Black
#region

if argument0=0
	{
	global.Piece_Index = Piece_ID
	global.Cell_Color = Color
	global.Prev_Cell = id
	Returned=collision_point(x-sprite_width*0.5,y+sprite_height*0.5,obj_cell,false,true)
	global.Passant_B = Returned.id
	if (Returned.Piece_ID=0) and (Returned.Color="Black") and (ID >= 0) and (ID<= 7) and (Moves=1)
		{
		Returned=collision_point(x-sprite_width*0.5,y+sprite_height*1.5,obj_cell,false,true)
		Returned.Passant=1
		}
	Returned=collision_point(x+sprite_width*1.5,y+sprite_height*0.5,obj_cell,false,true)
	if (Returned.Piece_ID=0) and (Returned.Color="Black") and (ID >= 0) and (ID<= 7) and (Moves=1)
		{
		Returned=collision_point(x+sprite_width*1.5,y+sprite_height*1.5,obj_cell,false,true)	
		Returned.Passant=1
		}
	}
#endregion



// White
#region


if argument0=1
	{
	Returned=collision_point(x-sprite_width*0.5,y+sprite_height*0.5,obj_cell,false,true)
	if (Returned.Piece_ID=0) and (Returned.Color="Black") and (ID >= 24) and (ID<= 31) and (Moves=1)
		{
		global.Passant_W=id	
		Returned=collision_point(x-sprite_width*0.5,y-sprite_height*0.5,obj_cell,false,true)	
		Returned.Passant=1
		}
	Returned=collision_point(x+sprite_width*1.5,y+sprite_height*0.5,obj_cell,false,true)
	if (Returned.Piece_ID=0) and (Returned.Color="Black") and (ID >= 24) and (ID<= 31) and (Moves=1)
		{
		global.Passant_W=id
		Returned=collision_point(x+sprite_width*1.5,y-sprite_height*0.5,obj_cell,false,true)	
		Returned.Passant=1
		}
	}
#endregion



//#endregion
