// En Passant

// Black
#region

if argument0=0
	{
		global.Piece_Index = Piece_ID
		global.Cell_Color = Color
		global.Prev_Cell = id
		Returned=collision_point(x-sprite_width*0.5,y+sprite_height*0.5,obj_cell,false,true)
		if (Returned!=noone)
		{
		global.Passant_BLeft = Returned
		if (Returned.Piece_ID=0) and (Returned.Color="White") and (ID >= 32) and (ID<= 39) and (Moves=1) and (Returned.Enpass = 0)
			{
			Returned.Enpass = 1
			Returned=collision_point(x-sprite_width*0.5,y+sprite_height*1.5,obj_cell,false,true)
			Returned.Passant=1
			global.LeftPass = Returned
			}
		}
		Returned=collision_point(x+sprite_width*1.5,y+sprite_height*0.5,obj_cell,false,true)
		if (Returned!=noone)
		{
		global.Passant_BRight = Returned
		if (Returned.Piece_ID=0) and (Returned.Color="White") and (ID >= 32) and (ID<= 39) and (Moves=1) and (Returned.Enpass = 0)
			{
			Returned.Enpass = 1
			Returned=collision_point(x+sprite_width*1.5,y+sprite_height*1.5,obj_cell,false,true)	
			Returned.Passant=1
			global.RightPass = Returned
			}
		}
	}
#endregion

// White
#region


if argument0=1
	{
	global.Piece_Index = Piece_ID
	global.Cell_Color = Color
	global.Prev_Cell = id
	Returned=collision_point(x-sprite_width*0.5,y+sprite_height*0.5,obj_cell,false,true)
	if (Returned!=noone)
	{
	global.Passant_BLeft = Returned
	if (Returned.Piece_ID=0) and (Returned.Color="Black") and (ID >= 24) and (ID<= 31) and (Moves=1) and (Returned.Enpass = 0)
		{
		Returned.Enpass = 1
		Returned=collision_point(x-sprite_width*0.5,y-sprite_height*0.5,obj_cell,false,true)
		Returned.Passant=1
		global.LeftPass = Returned
		}
	}
	Returned=collision_point(x+sprite_width*1.5,y+sprite_height*0.5,obj_cell,false,true)
	if (Returned!=noone)
	{
	global.Passant_BRight = Returned
	
	if (Returned.Piece_ID=0) and (Returned.Color="Black") and (ID >= 24) and (ID<= 31) and (Moves=1) and (Returned.Enpass = 0)
		{
		Returned.Enpass = 1
		Returned=collision_point(x+sprite_width*1.5,y-sprite_height*0.5,obj_cell,false,true)	
		Returned.Passant=1
		global.RightPass = Returned
		}
	}
	}
#endregion

// Check_Black
#region

if argument0=3
	{
		//global.Piece_Index = Piece_ID
		//global.Cell_Color = Color
		//global.Prev_Cell = id
		Returned=collision_point(x-sprite_width*0.5,y+sprite_height*0.5,obj_cell,false,true)
		if (Returned!=noone)
		{
		//global.Passant_B = Returned
		if (Returned.Piece_ID=0) and (Returned.Color="White") and (ID >= 32) and (ID<= 39) and (Moves=1) and (Returned.Enpass = 0)
			{
			Returned.Enpass = 1
			Returned=collision_point(x-sprite_width*0.5,y+sprite_height*1.5,obj_cell,false,true)
			Returned.Passant=1
			}
		}
		Returned=collision_point(x+sprite_width*1.5,y+sprite_height*0.5,obj_cell,false,true)
		if (Returned!=noone)
		{
		//global.Passant_B = Returned
		if (Returned.Piece_ID=0) and (Returned.Color="White") and (ID >= 32) and (ID<= 39) and (Moves=1) and (Returned.Enpass = 0)
			{
			Returned.Enpass = 1
			Returned=collision_point(x+sprite_width*1.5,y+sprite_height*1.5,obj_cell,false,true)	
			Returned.Passant=1
			}
		}
	}
#endregion

// Check_White
#region


if argument0=4
	{
	//global.Piece_Index = Piece_ID
	//global.Cell_Color = Color
	//global.Prev_Cell = id
	Returned=collision_point(x-sprite_width*0.5,y+sprite_height*0.5,obj_cell,false,true)
	if (Returned!=noone)
	{
	//global.Passant_B = Returned
	if (Returned.Piece_ID=0) and (Returned.Color="Black") and (ID >= 24) and (ID<= 31) and (Moves=1) and (Returned.Enpass = 0)
		{
		Returned.Enpass = 1
		Returned=collision_point(x-sprite_width*0.5,y-sprite_height*0.5,obj_cell,false,true)
		Returned.Passant=1
		}
	}
	Returned=collision_point(x+sprite_width*1.5,y+sprite_height*0.5,obj_cell,false,true)
	if (Returned!=noone)
	{
	if (Returned.Piece_ID=0) and (Returned.Color="Black") and (ID >= 24) and (ID<= 31) and (Moves=1) and (Returned.Enpass = 0)
		{
		Returned.Enpass = 1
		Returned=collision_point(x+sprite_width*1.5,y-sprite_height*0.5,obj_cell,false,true)	
		Returned.Passant=1
		}
	}
	}
#endregion