

if argument0=0

	if (global.Selected=ID) 
	{

	    if Color="Black"
		{
	        //check 1 step
			if (Moves>0)
			{
	            Returned=collision_point(x+sprite_width/2,y+sprite_height*1.5,obj_cell,false,true);
            
	            if (Returned!=noone and Returned.Piece_ID=-1)
				{
					Returned.CanMove=true;
				}
				else
				{
					Returned.CanMove=false;
				}
			};
         
			//check 2 steps
	            Returned=collision_point(x+sprite_width/2,y+sprite_height*1.5,obj_cell,false,true);
			
	            if (Returned!=noone and Returned.Piece_ID=-1)
				{
					Returned.CanMove=true
					Returned=collision_point(x+sprite_width/2,y+sprite_height*2.5,obj_cell,false,true);
            	    if (Returned!=noone and Returned.Piece_ID=-1)
					{
					Returned.CanMove=true;
					}
					else
				
					{
			
						Returned.CanMove=false;
					}
				}
				else
					{
						Returned.CanMove=false;
					}
				

	        //check for taking bottom right cell for allowing take out the piece
	        Returned=collision_point(x+sprite_width*1.5,y+sprite_height*1.5,obj_cell,false,true);
	        if (Returned!=noone and Returned.Piece_ID!=-1 and Returned.Color!=Color)
			{
				Returned.CanTake=true;
			}
			else
				{
					Returned.CanTake=false;
				}

	         //check for taking bottom left cell for allowing take out the piece
	        Returned=collision_point(x-sprite_width*1.5,y+sprite_height*1.5,obj_cell,false,true);
	        if (Returned!=noone and Returned.Piece_ID!=-1 and Returned.Color!=Color)
			{
				Returned.CanTake=true;
			}
			else
				{
					Returned.CanTake=false;
				}
	    }

	    //White Moves
	    if Color="White"
		{
	        if Moves>0
			{
				
				//check 1 step
	            Returned=collision_point(x+sprite_width/2,y-sprite_height/2,obj_cell,false,true); 
	            
	            if Returned!=noone and Returned.Piece_ID=-1
				{
					Returned.CanMove=true
				}
			};
	        {
	            //Check 2 steps
	            Returned=collision_point(x+sprite_width/2,y-sprite_height/2,obj_cell,false,true);
	            if Returned!=noone and Returned.Piece_ID=-1
				{
					Returned.CanMove=true
				};
	            if Returned!=noone and Returned.Piece_ID=-1
				{
	                Returned=collision_point(x+sprite_width/2,y-(sprite_height/2)*2,obj_cell,false,true);
	                if Returned!=noone and Returned.Piece_ID=-1 and Moves=0
					{
						Returned.CanMove=true
					}
				}
			}

	        //Take Right
	        Returned=collision_point(x+sprite_width+32,y-sprite_height/2,obj_cell,false,true);
	        if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Color!=Color{Returned.CanTake=true};

	        //Take Left
	        Returned=collision_point(x-sprite_width/2,y-sprite_height/2,obj_cell,false,true);
	        if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Color!=Color{Returned.CanTake=true};
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
	