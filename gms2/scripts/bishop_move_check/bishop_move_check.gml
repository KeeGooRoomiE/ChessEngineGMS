///@descr bishop_move_check(state);

if argument0=0
#region
	{
	//Selected To Move

	//Down-Right
	#region

	Returned=0;

	Y=y+sprite_height*1.5;
	X=x+sprite_width*1.5;

	while (Returned!=noone) 
	{
	    Returned=collision_point(X,Y,obj_cell,false,true);
    
	    if (Returned!=noone and Returned.Piece_ID!=-1 and Returned.Color=Color)
	    {
	        if Returned.Piece_ID!=5
	        {   
	            Returned.NotSafe=true
	        } 
	        break
	    };
	    if (Returned!=noone and Returned.Piece_ID!=-1 and Returned.Color!=Color)
	    {
	        Returned.CanTake=true
	        break
	    };
	    if (Returned!=noone)
	    {
	        Returned.CanMove=true
	    };
    
	    Y+=sprite_height;
		X+=sprite_height;
	};
	#endregion;

	// Down-Left
	#region

	Returned=0;


	Y=y+sprite_height*1.5;
	X=x-sprite_width*0.5;


	while Returned!=noone
		{
		Returned=collision_point(X,Y,obj_cell,false,true);
		if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Color=Color
		{
			if Returned.Piece_ID!=5
				{
				Returned.NotSafe=true
				} 
				break
		
		};
		if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Color!=Color
		{
			Returned.CanTake=true 
			break
		};
		if Returned!=noone
		{
			Returned.CanMove=true
		};
		Y+=sprite_height;
		X-=sprite_height;
		}

	#endregion

	//Top-Right
	#region

	Returned=0;

	Y=y-sprite_height;
	X=x+sprite_width*1.5;

	while Returned!=noone
	{
		Returned=collision_point(X,Y,obj_cell,false,true);
		if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Color=Color
		{
			if Returned.Piece_ID!=5
			{
			Returned.NotSafe=true
			} 
			break
		};
		if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Color!=Color
		{
			Returned.CanTake=true 
			break
		};
		if Returned!=noone
		{
			Returned.CanMove=true
		};
		Y-=sprite_height;
		X+=sprite_height;
	}

	#endregion

	//Top-Left
	#region

	Returned=0;

	Y=y-sprite_height*0.5;
	X=x-sprite_width*0.5;

	while Returned!=noone
	{
		Returned=collision_point(X,Y,obj_cell,false,true);
		if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Color=Color
		{
			if Returned.Piece_ID!=5
			{
				Returned.NotSafe=true
			}
			break
		};
		if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Color!=Color
		{
			Returned.CanTake=true 
			break
		};
		if Returned!=noone
		{
			Returned.CanMove=true
		};
		Y-=sprite_height;
		X-=sprite_height;
	}
	#endregion
	}
#endregion

if argument0=1
//Check board and mark none safe areas
#region
	{
		if Piece_ID = 3
		{
			if Color = "White"
			#region
			{
			//Down-Right
			#region

			Returned=0;

			Y=y+sprite_height*1.5;
			X=x+sprite_width*1.5;

			while (Returned!=noone) 
			{
			    Returned=collision_point(X,Y,obj_cell,false,true);
    
			    if (Returned!=noone and Returned.Piece_ID!=-1 and Returned.Color=Color)
			    {
			        if Returned.Piece_ID!=5
			        {   
			            //Returned.NotSafe=true
			        } 
			        break
			    };
			    if (Returned!=noone and Returned.Piece_ID!=-1 and Returned.Color!=Color)
			    {
			        Returned.W_NotSafe=true
					king_check();
			        break
			    };
			    if (Returned!=noone)
			    {
			        Returned.W_NotSafe=true
					king_check();
			    };
    
			    Y+=sprite_height;
				X+=sprite_height;
			};
			#endregion;

			// Down-Left
			#region

			Returned=0;


			Y=y+sprite_height*1.5;
			X=x-sprite_width*0.5;


			while Returned!=noone
				{
				Returned=collision_point(X,Y,obj_cell,false,true);
				if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Color=Color
				{
					if Returned.Piece_ID!=5
						{
						//Returned.NotSafe=true
						} 
						break
		
				};
				if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Color!=Color
				{
					Returned.W_NotSafe=true
					king_check();
					break
				};
				if Returned!=noone
				{
					Returned.W_NotSafe=true
					king_check();
				};
				Y+=sprite_height;
				X-=sprite_height;
				}

			#endregion

			//Top-Right
			#region

			Returned=0;

			Y=y-sprite_height;
			X=x+sprite_width*1.5;

			while Returned!=noone
			{
				Returned=collision_point(X,Y,obj_cell,false,true);
				if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Color=Color
				{
					if Returned.Piece_ID!=5
					{
					//Returned.NotSafe=true
					} 
					break
				};
				if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Color!=Color
				{
					Returned.W_NotSafe=true
					king_check();
					break
				};
				if Returned!=noone
				{
					Returned.W_NotSafe=true
					king_check();
				};
				Y-=sprite_height;
				X+=sprite_height;
			}

			#endregion

			//Top-Left
			#region

			Returned=0;

			Y=y-sprite_height*0.5;
			X=x-sprite_width*0.5;

			while Returned!=noone
			{
				Returned=collision_point(X,Y,obj_cell,false,true);
				if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Color=Color
				{
					if Returned.Piece_ID!=5
					{
						//Returned.NotSafe=true
					}
					break
				};
				if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Color!=Color
				{
					Returned.W_NotSafe=true
					king_check();
					break
				};
				if Returned!=noone
				{
					Returned.W_NotSafe=true
					king_check();
				};
				Y-=sprite_height;
				X-=sprite_height;
			}

			#endregion
			}
			#endregion
			
			if Color = "Black"
			#region
			{
			//Down-Right
			#region

			Returned=0;

			Y=y+sprite_height*1.5;
			X=x+sprite_width*1.5;

			while (Returned!=noone) 
			{
			    Returned=collision_point(X,Y,obj_cell,false,true);
    
			    if (Returned!=noone and Returned.Piece_ID!=-1 and Returned.Color=Color)
			    {
			        if Returned.Piece_ID!=5
			        {   
			            //Returned.NotSafe=true
			        } 
			        break
			    };
			    if (Returned!=noone and Returned.Piece_ID!=-1 and Returned.Color!=Color)
			    {
			        Returned.B_NotSafe=true
					king_check();
			        break
			    };
			    if (Returned!=noone)
			    {
			        Returned.B_NotSafe=true
					king_check();
			    };
    
			    Y+=sprite_height;
				X+=sprite_height;
			};
			#endregion;

			// Down-Left
			#region

			Returned=0;


			Y=y+sprite_height*1.5;
			X=x-sprite_width*0.5;


			while Returned!=noone
				{
				Returned=collision_point(X,Y,obj_cell,false,true);
				if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Color=Color
				{
					if Returned.Piece_ID!=5
						{
						//Returned.NotSafe=true
						} 
						break
		
				};
				if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Color!=Color
				{
					Returned.B_NotSafe=true 
					king_check();
					break
				};
				if Returned!=noone
				{
					Returned.B_NotSafe=true
					king_check();
				};
				Y+=sprite_height;
				X-=sprite_height;
				}

			#endregion

			//Top-Right
			#region

			Returned=0;

			Y=y-sprite_height;
			X=x+sprite_width*1.5;

			while Returned!=noone
			{
				Returned=collision_point(X,Y,obj_cell,false,true);
				if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Color=Color
				{
					if Returned.Piece_ID!=5
					{
					//Returned.NotSafe=true
					} 
					break
				};
				if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Color!=Color
				{
					Returned.B_NotSafe=true
					king_check();
					break
				};
				if Returned!=noone
				{
					Returned.B_NotSafe=true
					king_check();
				};
				Y-=sprite_height;
				X+=sprite_height;
			}

			#endregion

			//Top-Left
			#region

			Returned=0;

			Y=y-sprite_height*0.5;
			X=x-sprite_width*0.5;

			while Returned!=noone
			{
				Returned=collision_point(X,Y,obj_cell,false,true);
				if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Color=Color
				{
					if Returned.Piece_ID!=5
					{
						//Returned.NotSafe=true
					}
					break
				};
				if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Color!=Color
				{
					Returned.B_NotSafe=true
					king_check();
					break
				};
				if Returned!=noone
				{
					Returned.B_NotSafe=true
					king_check();
				};
				Y-=sprite_height;
				X-=sprite_height;
			}

			#endregion
			}
			#endregion
		}
	}
#endregion