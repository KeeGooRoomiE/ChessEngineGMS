///@descr queen_move_check(state);

if argument0=0
#region
{
//Selected To Move

//Pos1
#region

Returned=0;

Y=y-sprite_height*1.5;
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
	        Returned.CanTake=true
	    };
    if (Returned!=noone) and (Returned.Color!=Color)
	    {
	        Returned.CanMove=true
	    };

#endregion;

// Pos2
#region

Returned=0;

Y=y-sprite_height*0.5;
X=x+sprite_width*2.5;

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
		Returned.CanTake=true 
	};
	if (Returned!=noone) and (Returned.Color!=Color)
	{
		Returned.CanMove=true
	};

#endregion

//Pos3
#region

Returned=0;

Y=y+sprite_height*1.5;
X=x+sprite_width*2.5;

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
		Returned.CanTake=true 
	};
	if (Returned!=noone) and (Returned.Color!=Color)
	{
		Returned.CanMove=true
	};

#endregion

//Pos4
#region

Returned=0;

Y=y+sprite_height*2.5;
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
		Returned.CanTake=true 

	};
	if (Returned!=noone) and (Returned.Color!=Color)
	{
		Returned.CanMove=true
	};

#endregion

//Pos5
#region

Returned=0;

Y=y+sprite_height*2.5;
X=x-sprite_width*0.5;

    Returned=collision_point(X,Y,obj_cell,false,true);
    
    if (Returned!=noone and Returned.Piece_ID!=-1 and Returned.Color=Color)
    {
        if Returned.Piece_ID!=5
        {   
            //Returned.NotSafe=true
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

//Pos6
#region

Returned=0;

Y=y+sprite_height*1.5;
X=x-sprite_width*1.5;

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
			Returned.CanTake=true 
		};
	if (Returned!=noone) and (Returned.Color!=Color)
		{
			Returned.CanMove=true
		};

#endregion

//Pos7
#region

Returned=0;

Y=y-sprite_height*0.5;
X=x-sprite_width*1.5;
	
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
		Returned.CanTake=true 
	};
	if (Returned!=noone) and (Returned.Color!=Color)
	{
		Returned.CanMove=true
	};

#endregion

//Pos8
#region

Returned=0;

Y=y-sprite_height*1.5;
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
{
#region
if Piece_ID = 2
	{
	if Color = "White"
	#region
		{
		//Pos1
		#region

		Returned=0;

		Y=y-sprite_height*1.5;
		X=x+sprite_width*1.5;
		//debug_x_check = X
		//debug_y_check = Y

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
			        Returned.B_NotSafe=true
					
			    };

		#endregion;

		// Pos2
		#region

		Returned=0;

		Y=y-sprite_height*0.5;
		X=x+sprite_width*2.5;

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
				Returned.B_NotSafe=true
				
			};

		#endregion

		//Pos3
		#region

		Returned=0;

		Y=y+sprite_height*1.5;
		X=x+sprite_width*2.5;

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
				Returned.B_NotSafe=true
				
			};

		#endregion

		//Pos4
		#region

		Returned=0;

		Y=y+sprite_height*2.5;
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
				Returned.B_NotSafe=true
				
			};

		#endregion

		//Pos5
		#region

		Returned=0;

		Y=y+sprite_height*2.5;
		X=x-sprite_width*0.5;

		    Returned=collision_point(X,Y,obj_cell,false,true);
    
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
		        Returned.B_NotSafe=true
				
		    };

		#endregion;

		//Pos6
		#region

		Returned=0;

		Y=y+sprite_height*1.5;
		X=x-sprite_width*1.5;

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
					Returned.B_NotSafe=true
					
				};

		#endregion

		//Pos7
		#region

		Returned=0;

		Y=y-sprite_height*0.5;
		X=x-sprite_width*1.5;
	
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
				Returned.B_NotSafe=true
				
			};

		#endregion

		//Pos8
		#region

		Returned=0;

		Y=y-sprite_height*1.5;
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
				Returned.B_NotSafe=true
				
			};

		#endregion
		}
	#endregion	
	if Color = "Black"
	#region
		{
		//Pos1
		#region

		Returned=0;

		Y=y-sprite_height*1.5;
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
			        Returned.W_NotSafe=true
					
			    };

		#endregion;

		// Pos2
		#region

		Returned=0;

		Y=y-sprite_height*0.5;
		X=x+sprite_width*2.5;

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
				Returned.W_NotSafe=true
				
			};

		#endregion

		//Pos3
		#region

		Returned=0;

		Y=y+sprite_height*1.5;
		X=x+sprite_width*2.5;

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
				Returned.W_NotSafe=true
				
			};

		#endregion

		//Pos4
		#region

		Returned=0;

		Y=y+sprite_height*2.5;
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
				Returned.W_NotSafe=true
				
			};

		#endregion

		//Pos5
		#region

		Returned=0;

		Y=y+sprite_height*2.5;
		X=x-sprite_width*0.5;

		    Returned=collision_point(X,Y,obj_cell,false,true);
    
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
		        Returned.W_NotSafe=true
				
		    };

		#endregion;

		//Pos6
		#region

		Returned=0;

		Y=y+sprite_height*1.5;
		X=x-sprite_width*1.5;

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
					Returned.W_NotSafe=true
					
				};

		#endregion

		//Pos7
		#region

		Returned=0;

		Y=y-sprite_height*0.5;
		X=x-sprite_width*1.5;
	
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
				Returned.W_NotSafe=true
				
			};

		#endregion

		//Pos8
		#region

		Returned=0;

		Y=y-sprite_height*1.5;
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
				Returned.W_NotSafe=true
				
			};

		#endregion
	
		}
	#endregion
	}
#endregion
}


