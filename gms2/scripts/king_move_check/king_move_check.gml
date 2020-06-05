///@descr queen_move_check(state);

if argument0=0
#region
{
//Selected To Move

//Down-Right
#region

Returned=0;

Y=y+sprite_height*1.5;
X=x+sprite_width*1.5;

    Returned=collision_point(X,Y,obj_cell,false,true);
    
    if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Color=Color
	{
		if Returned.Piece_ID!=5
			{
			Returned.NotSafe=true
			}

	};
    if (Returned!=noone and Returned.Piece_ID!=-1 and Returned.Color!=Color)
	    {
	        Returned.CanTake=true
	    };
    if (Returned!=noone) and (Returned.Color!=Color)
	    {
	        Returned.CanMove=true
	    };

#endregion;

// Down-Left
#region

Returned=0;

Y=y+sprite_height*1.5;
X=x-sprite_width*0.5;

	Returned=collision_point(X,Y,obj_cell,false,true);
	if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Color=Color
	{
		if Returned.Piece_ID!=5
			{
			Returned.NotSafe=true
			}

	};
	if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Color!=Color
	{
		Returned.CanTake=true 
	};
	if (Returned!=noone) and (Returned.Color!=Color)
	{
		Returned.CanMove=true
	};

#endregion

//Top-Right
#region

Returned=0;

Y=y-sprite_height;
X=x+sprite_width*1.5;

	Returned=collision_point(X,Y,obj_cell,false,true);
	if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Color=Color
	{
		if Returned.Piece_ID!=5
		{
		Returned.NotSafe=true
		} 
	};
	if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Color!=Color
	{
		Returned.CanTake=true 
	};
	if (Returned!=noone) and (Returned.Color!=Color)
	{
		Returned.CanMove=true
	};

#endregion

//Top-Left
#region

Returned=0;

Y=y-sprite_height*0.5;
X=x-sprite_width*0.5;

	Returned=collision_point(X,Y,obj_cell,false,true);
	if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Color=Color
	{
		if Returned.Piece_ID!=5
		{
			Returned.NotSafe=true
		}

	};
	if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Color!=Color
	{
		Returned.CanTake=true 

	};
	if (Returned!=noone) and (Returned.Color!=Color)
	{
		Returned.CanMove=true
	};

#endregion

//Down
#region

Returned=0;

Y=y+sprite_height+1;

    Returned=collision_point(x+sprite_width/2,Y,obj_cell,false,true);
    
    if (Returned!=noone and Returned.Piece_ID!=-1 and Returned.Color=Color)
    {
        if Returned.Piece_ID!=5
        {   
            Returned.NotSafe=true
        } 
    };
    if (Returned!=noone and Returned.Piece_ID!=-1 and Returned.Color!=Color)
    {
        Returned.CanTake=true
    };
    if (Returned!=noone) and (Returned.Color!=Color)
    {
        Returned.CanMove=true
    };

#endregion;

//Up
#region

Returned=0;
Y=y-1;

	Returned=collision_point(x+sprite_width/2,Y,obj_cell,false,true);
	if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Color=Color
	{
		if Returned.Piece_ID!=5
			{
			Returned.NotSafe=true
			} 
	};
	if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Color!=Color
		{
			Returned.CanTake=true 
		};
	if (Returned!=noone) and (Returned.Color!=Color)
		{
			Returned.CanMove=true
		};

#endregion

//Right
#region

Returned=0;
X=x+sprite_width+1;
	
	Returned=collision_point(X,y+sprite_height/2,obj_cell,false,true);
	if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Color=Color
	{
		if Returned.Piece_ID!=5
		{
		Returned.NotSafe=true
		} 
	};
	if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Color!=Color
	{
		Returned.CanTake=true 
	};
	if (Returned!=noone) and (Returned.Color!=Color)
	{
		Returned.CanMove=true
	};

#endregion

//Left
#region

Returned=0;
X=x-1;

	Returned=collision_point(X,y+sprite_height*0.5,obj_cell,false,true);
	if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Color=Color
	{
		if Returned.Piece_ID!=5
		{
			Returned.NotSafe=true
		}
	};
	if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Color!=Color
	{
		Returned.CanTake=true 
	};
	if (Returned!=noone) and (Returned.Color!=Color)
	{
		Returned.CanMove=true
	};

#endregion

}
#endregion

if argument0=1
//Check board and mark none safe areas
	#region
	{
		if Piece_ID = 5
		{
			if Color = "White"
			#region
			{
			//Down-Right
			#region

			Returned=0;

			Y=y+sprite_height*1.5;
			X=x+sprite_width*1.5;

				Returned=collision_point(X,Y,obj_cell,false,true);
    
				if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Color=Color
				{
					if Returned.Piece_ID!=5
						{
						//Returned.NotSafe=true
						}

				};
				if (Returned!=noone and Returned.Piece_ID!=-1 and Returned.Color!=Color)
					{
						Returned.B_NotSafe=true
						king_check();
					};
				if (Returned!=noone) and (Returned.Color!=Color)
					{
						//Returned.CanMove=true
					};

			#endregion;

			// Down-Left
			#region

			Returned=0;

			Y=y+sprite_height*1.5;
			X=x-sprite_width*0.5;

				Returned=collision_point(X,Y,obj_cell,false,true);
				if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Color=Color
				{
					if Returned.Piece_ID!=5
						{
						//Returned.NotSafe=true
						}

				};
				if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Color!=Color
				{
					Returned.B_NotSafe=true
					king_check();
				};
				if (Returned!=noone) and (Returned.Color!=Color)
				{
					//Returned.CanMove=true
				};

			#endregion

			//Top-Right
			#region

			Returned=0;

			Y=y-sprite_height;
			X=x+sprite_width*1.5;

				Returned=collision_point(X,Y,obj_cell,false,true);
				if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Color=Color
				{
					if Returned.Piece_ID!=5
					{
					//Returned.NotSafe=true
					} 
				};
				if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Color!=Color
				{
					Returned.B_NotSafe=true
					king_check();
				};
				if (Returned!=noone) and (Returned.Color!=Color)
				{
					//Returned.CanMove=true
				};

			#endregion

			//Top-Left
			#region

			Returned=0;

			Y=y-sprite_height*0.5;
			X=x-sprite_width*0.5;

				Returned=collision_point(X,Y,obj_cell,false,true);
				if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Color=Color
				{
					if Returned.Piece_ID!=5
					{
						//Returned.NotSafe=true
					}

				};
				if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Color!=Color
				{
					Returned.B_NotSafe=true
					king_check();

				};
				if (Returned!=noone) and (Returned.Color!=Color)
				{
					//Returned.CanMove=true
				};

			#endregion

			//Down
			#region

			Returned=0;

			Y=y+sprite_height+1;

				Returned=collision_point(x+sprite_width/2,Y,obj_cell,false,true);
    
				if (Returned!=noone and Returned.Piece_ID!=-1 and Returned.Color=Color)
				{
					if Returned.Piece_ID!=5
					{   
					    //Returned.NotSafe=true
					} 
				};
				if (Returned!=noone and Returned.Piece_ID!=-1 and Returned.Color!=Color)
				{
					Returned.B_NotSafe=true
					king_check();
				};
				if (Returned!=noone) and (Returned.Color!=Color)
				{
					//Returned.CanMove=true
				};

			#endregion;

			//Up
			#region

			Returned=0;
			Y=y-1;

				Returned=collision_point(x+sprite_width/2,Y,obj_cell,false,true);
				if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Color=Color
				{
					if Returned.Piece_ID!=5
						{
						//Returned.NotSafe=true
						} 
				};
				if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Color!=Color
					{
						Returned.B_NotSafe=true
						king_check();
					};
				if (Returned!=noone) and (Returned.Color!=Color)
					{
						//Returned.CanMove=true
					};

			#endregion

			//Right
			#region

			Returned=0;
			X=x+sprite_width+1;
	
				Returned=collision_point(X,y+sprite_height/2,obj_cell,false,true);
				if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Color=Color
				{
					if Returned.Piece_ID!=5
					{
					//Returned.NotSafe=true
					} 
				};
				if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Color!=Color
				{
					Returned.B_NotSafe=true
					king_check();
				};
				if (Returned!=noone) and (Returned.Color!=Color)
				{
					//Returned.CanMove=true
				};

			#endregion

			//Left
			#region

			Returned=0;
			X=x-1;

				Returned=collision_point(X,y+sprite_height*0.5,obj_cell,false,true);
				if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Color=Color
				{
					if Returned.Piece_ID!=5
					{
						//Returned.NotSafe=true
					}
				};
				if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Color!=Color
				{
					Returned.B_NotSafe=true
					king_check();
				};
				if (Returned!=noone) and (Returned.Color!=Color)
				{
					//Returned.CanMove=true
				};

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

				Returned=collision_point(X,Y,obj_cell,false,true);
    
				if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Color=Color
				{
					if Returned.Piece_ID!=5
						{
						//Returned.NotSafe=true
						}

				};
				if (Returned!=noone and Returned.Piece_ID!=-1 and Returned.Color!=Color)
					{
						Returned.W_NotSafe=true
						king_check();
					};
				if (Returned!=noone) and (Returned.Color!=Color)
					{
						//Returned.CanMove=true
					};

			#endregion;

			// Down-Left
			#region

			Returned=0;

			Y=y+sprite_height*1.5;
			X=x-sprite_width*0.5;

				Returned=collision_point(X,Y,obj_cell,false,true);
				if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Color=Color
				{
					if Returned.Piece_ID!=5
						{
						//Returned.NotSafe=true
						}

				};
				if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Color!=Color
				{
					Returned.W_NotSafe=true
					king_check();
				};
				if (Returned!=noone) and (Returned.Color!=Color)
				{
					//Returned.CanMove=true
				};

			#endregion

			//Top-Right
			#region

			Returned=0;

			Y=y-sprite_height;
			X=x+sprite_width*1.5;

				Returned=collision_point(X,Y,obj_cell,false,true);
				if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Color=Color
				{
					if Returned.Piece_ID!=5
					{
					//Returned.NotSafe=true
					} 
				};
				if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Color!=Color
				{
					Returned.W_NotSafe=true
					king_check();
				};
				if (Returned!=noone) and (Returned.Color!=Color)
				{
					//Returned.CanMove=true
				};

			#endregion

			//Top-Left
			#region

			Returned=0;

			Y=y-sprite_height*0.5;
			X=x-sprite_width*0.5;

				Returned=collision_point(X,Y,obj_cell,false,true);
				if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Color=Color
				{
					if Returned.Piece_ID!=5
					{
						//Returned.NotSafe=true
					}

				};
				if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Color!=Color
				{
					Returned.W_NotSafe=true 
					king_check();

				};
				if (Returned!=noone) and (Returned.Color!=Color)
				{
					//Returned.CanMove=true
				};

			#endregion

			//Down
			#region

			Returned=0;

			Y=y+sprite_height+1;

				Returned=collision_point(x+sprite_width/2,Y,obj_cell,false,true);
    
				if (Returned!=noone and Returned.Piece_ID!=-1 and Returned.Color=Color)
				{
					if Returned.Piece_ID!=5
					{   
					    //Returned.NotSafe=true
					} 
				};
				if (Returned!=noone and Returned.Piece_ID!=-1 and Returned.Color!=Color)
				{
					Returned.W_NotSafe=true
					king_check();
				};
				if (Returned!=noone) and (Returned.Color!=Color)
				{
					//Returned.CanMove=true
				};

			#endregion;

			//Up
			#region

			Returned=0;
			Y=y-1;

				Returned=collision_point(x+sprite_width/2,Y,obj_cell,false,true);
				if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Color=Color
				{
					if Returned.Piece_ID!=5
						{
						//Returned.NotSafe=true
						} 
				};
				if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Color!=Color
					{
						Returned.W_NotSafe=true
						king_check();
					};
				if (Returned!=noone) and (Returned.Color!=Color)
					{
						//Returned.CanMove=true
					};

			#endregion

			//Right
			#region

			Returned=0;
			X=x+sprite_width+1;
	
				Returned=collision_point(X,y+sprite_height/2,obj_cell,false,true);
				if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Color=Color
				{
					if Returned.Piece_ID!=5
					{
					//Returned.NotSafe=true
					} 
				};
				if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Color!=Color
				{
					Returned.W_NotSafe=true
					king_check();
				};
				if (Returned!=noone) and (Returned.Color!=Color)
				{
					//Returned.CanMove=true
				};

			#endregion

			//Left
			#region

			Returned=0;
			X=x-1;

				Returned=collision_point(X,y+sprite_height*0.5,obj_cell,false,true);
				if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Color=Color
				{
					if Returned.Piece_ID!=5
					{
						//Returned.NotSafe=true
					}
				};
				if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Color!=Color
				{
					Returned.W_NotSafe=true
					king_check();
				};
				if (Returned!=noone) and (Returned.Color!=Color)
				{
					//Returned.CanMove=true
				};

			#endregion
			}
			#endregion

		}
	}
	#endregion

if argument0=2
//Check if the king is not safe
#region
{
	if (Piece_ID = 5)
	{
		if Color = "White"
		#region
		{
			if (W_NotSafe = 1)
			{
				global.scacco=true;
			}
			else
			{
				global.scacco=false;
			}
		}
		#endregion
		if Color = "Black"
		#region
		{
			if (B_NotSafe = 1)
			{
				global.scacco=true;
			}
			else
			{
				global.scacco=false;
			}
		}
		#endregion
	}
}
#endregion