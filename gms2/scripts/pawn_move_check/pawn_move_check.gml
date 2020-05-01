///@descr pawn_move_check(state);


//[HOMEWORK]

//1. check coordinates for White pieces in a check from a CanTake statement OK
//2. reset coordinates for White pieces if they are wrong (dont forget about x and y debug positions inside of the obj_cell)
//3. recreate sprites for a pieces (both for black and white)


if argument0=0
{
	if (global.Selected=ID) 
	{

	    if Color="Black"
		{
			#region 
	        //check 1 step
			if (Moves>0)
			{
				//common move
				#region;
	            Returned=collision_point(x+sprite_width/2,y+sprite_height*1.5,obj_cell,false,true);
	            if (Returned!=noone)
				{
					if (Returned.Piece_ID=-1)
					{
						Returned.CanMove=true;
					}
					else
					{
						Returned.CanMove=false;
					}
				}
				
				#endregion;
			}
			else
			{
			//check 2 steps
			#region;
			//check for the first one
	        Returned=collision_point(x+sprite_width/2,y+sprite_height*1.5,obj_cell,false,true);
	        if (Returned!=noone)
				{
					if (Returned.Piece_ID=-1)
					{
						Returned.CanMove=true;
						//check for the second one
						Returned=collision_point(x+sprite_width/2,y+sprite_height*2.5,obj_cell,false,true);
						if (Returned!=noone)
						{
							if (Returned.Piece_ID=-1)
							{
								Returned.CanMove=true;
							}
							else
							{
								Returned.CanMove=false;
							}
						}
					}
					else
					{
						Returned.CanMove=false;
					}
				}
			#endregion;
			};
				

	        //check for taking bottom right cell for allowing take out the piece
			#region;
	        Returned=collision_point(x+sprite_width*1.5,y+sprite_height*1.5,obj_cell,false,true);
	        if (Returned!=noone)
			{
				if (Returned.Piece_ID!=-1 and Returned.Color!=Color)
				{
					Returned.CanTake=true;
				}
				else
				{
					Returned.CanTake=false;
				}
			}
			#endregion;

	         //check for taking bottom left cell for allowing take out the piece
			 #region;
	        Returned=collision_point(x-sprite_width*0.5,y+sprite_height*1.5,obj_cell,false,true);
	        if (Returned!=noone)
			{
				if (Returned.Piece_ID!=-1 and Returned.Color!=Color)
				{
					Returned.CanTake=true;
				}
				else
				{
					Returned.CanTake=false;
				}
			}
			#endregion;
		#endregion;
	    }

	    //White Moves
	    if Color="White"
		{
	       #region 
	        //check 1 step
			if (Moves>0)
			{
				//common move
				#region;
	            Returned=collision_point(x+sprite_width/2,y-sprite_height*0.5,obj_cell,false,true);
	            if (Returned!=noone)
				{
					if (Returned.Piece_ID=-1)
					{
						Returned.CanMove=true;
					}
					else
					{
						Returned.CanMove=false;
					}
				}
				
				#endregion;
			}
			else
			{
			//check 2 steps
			#region;
			//check for the first one
	        Returned=collision_point(x+sprite_width/2,y-sprite_height*0.5,obj_cell,false,true);
	        if (Returned!=noone)
				{
					if (Returned.Piece_ID=-1)
					{
						Returned.CanMove=true;
						//check for the second one
						Returned=collision_point(x+sprite_width/2,y-sprite_height*1.5,obj_cell,false,true);
						if (Returned!=noone)
						{
							if (Returned.Piece_ID=-1)
							{
								Returned.CanMove=true;
							}
							else
							{
								Returned.CanMove=false;
							}
						}
					}
					else
					{
						Returned.CanMove=false;
					}
				}
			#endregion;
			};
				

	        //check for taking top right cell for allowing take out the piece
			#region;
	        Returned=collision_point(x+sprite_width*1.5,y-sprite_height*0.5,obj_cell,false,true);
	        if (Returned!=noone)
			{
				if (Returned.Piece_ID!=-1 and Returned.Color!=Color)
				{
					Returned.CanTake=true;
				}
				else
				{
					Returned.CanTake=false;
				}
			}
			#endregion;

	         //check for taking top left cell for allowing take out the piece
			 #region;
	        Returned=collision_point(x-sprite_width*0.5,y-sprite_height*0.5,obj_cell,false,true);
	        if (Returned!=noone)
			{
				if (Returned.Piece_ID!=-1 and Returned.Color!=Color)
				{
					Returned.CanTake=true;
				}
				else
				{
					Returned.CanTake=false;
				}
			}
			#endregion;
		#endregion;
	    }
	}
}



if argument0=1{//Check board and mark none safe areas

    //Black Moves
    if Color="Black"{

        //Take Right
        Returned=collision_point(x+sprite_width+32,y+sprite_height+32,obj_cell,false,true);
        if Returned!=noone {Returned.NotSafe=true};

        //Take Left
        Returned=collision_point(x-sprite_width/2,y+sprite_height+32,obj_cell,false,true);
        if Returned!=noone {Returned.NotSafe=true};
    }

    //White Moves
    if Color="White"{

        //Take Right
        Returned=collision_point(x+sprite_width+32,y-sprite_height/2,obj_cell,false,true);
        if Returned!=noone {Returned.NotSafe=true};

        //Take Left
        Returned=collision_point(x-sprite_width/2,y-sprite_height/2,obj_cell,false,true);
        if Returned!=noone {Returned.NotSafe=true};
    }
}
	