///@descr pawn_move_check(state);

if argument0=0

{
	if (global.Selected=ID) 
	{
		//Black Moves
	    if Color="Black"
		{
		#region 
	        //check 1 step
			#region;
			if (Moves>0)
			{
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
			}
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
				

	        //check take bottom right
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

	        //check take bottom left
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
			
			//check en_passant
			en_passant(0)
			 
		#endregion;
	 

	    //White Moves
	    if Color="White"
		{
	     #region 
	        //check 1 step
			if (Moves>0)
			{
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
	        //check take top left
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

	         //check take top right
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
			 
			 //check en_passant
			 en_passant(1)

		#endregion;
	    }
	}
}


// Not Safe Zone

if argument0 = 1
	{
	if Piece_ID = 0
		{


			//Black Check

			if Color="Black"
			#region 
			{

				//check take bottom right
				#region;
				Returned=collision_point(x+sprite_width*1.5,y+sprite_height*1.5,obj_cell,false,true);
				if (Returned!=noone)
				{
					if (Returned.Piece_ID!=-1 and Returned.Color!=Color)
					{
						Returned.NotSafe=true;
					}
				}
				#endregion;

				//check take bottom left
				#region;
				Returned=collision_point(x-sprite_width*0.5,y+sprite_height*1.5,obj_cell,false,true);
				if (Returned!=noone)
				{
					if (Returned.Piece_ID!=-1 and Returned.Color!=Color)
					{
						Returned.NotSafe=true;
					}
		
				}
				#endregion;
			}			 
			#endregion;

			 //White Check
			if Color="White"
				{	
			//check take top left
				#region

				Returned=collision_point(x+sprite_width*1.5,y-sprite_height*0.5,obj_cell,false,true);
				if (Returned!=noone)
				{
					if (Returned.Piece_ID!=-1 and Returned.Color!=Color)
					{
						Returned.NotSafe=true;
					}
				}
				#endregion
	
			//check take top right
				#region
				Returned=collision_point(x-sprite_width*0.5,y-sprite_height*0.5,obj_cell,false,true);
				if (Returned!=noone)
					{
						if (Returned.Piece_ID!=-1 and Returned.Color!=Color)
						{
							Returned.NotSafe=true;
						}
					}
				#endregion
				}
		}
	}

