///@descr queen_move_check(state);

if argument0=0
{
//Selected To Move

//Pos1
#region

var Returned=0;

Y=y-sprite_height*1.5;
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

// Pos2
#region

var Returned=0;

Y=y-sprite_height*0.5;
X=x+sprite_width*2.5;

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

//Pos3
#region

var Returned=0;

Y=y+sprite_height*1.5;
X=x+sprite_width*2.5;

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

//Pos4
#region

var Returned=0;

Y=y+sprite_height*2.5;
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

//Pos5
#region

var Returned=0;

Y=y+sprite_height*2.5;
X=x-sprite_width*0.5;

    Returned=collision_point(X,Y,obj_cell,false,true);
    
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

//Pos6
#region

var Returned=0;

Y=y+sprite_height*1.5;
X=x-sprite_width*1.5;

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

//Pos7
#region

var Returned=0;

Y=y-sprite_height*0.5;
X=x-sprite_width*1.5;
	
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

//Pos8
#region

var Returned=0;

Y=y-sprite_height*1.5;
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

}

if argument0=1
//Check board and mark none safe areas
{
#region
if Piece_ID = 2
	{

	//Pos1
	#region

	var Returned=0;

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
		        Returned.NotSafe=true
		    };
	    if (Returned!=noone) and (Returned.Color!=Color)
		    {
		        //Returned.CanMove=true
		    };

	#endregion;

	// Pos2
	#region

	var Returned=0;

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
			Returned.NotSafe=true 
		};
		if (Returned!=noone) and (Returned.Color!=Color)
		{
			//Returned.CanMove=true
		};

	#endregion

	//Pos3
	#region

	var Returned=0;

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
			Returned.NotSafe=true 
		};
		if (Returned!=noone) and (Returned.Color!=Color)
		{
			//Returned.CanMove=true
		};

	#endregion

	//Pos4
	#region

	var Returned=0;

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
			Returned.NotSafe=true 

		};
		if (Returned!=noone) and (Returned.Color!=Color)
		{
			//Returned.CanMove=true
		};

	#endregion

	//Pos5
	#region

	var Returned=0;

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
	        Returned.NotSafe=true
	    };
	    if (Returned!=noone) and (Returned.Color!=Color)
	    {
	        //Returned.CanMove=true
	    };

	#endregion;

	//Pos6
	#region

	var Returned=0;

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
				Returned.NotSafe=true 
			};
		if (Returned!=noone) and (Returned.Color!=Color)
			{
				//Returned.CanMove=true
			};

	#endregion

	//Pos7
	#region

	var Returned=0;

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
			Returned.NotSafe=true 
		};
		if (Returned!=noone) and (Returned.Color!=Color)
		{
			//Returned.CanMove=true
		};

	#endregion

	//Pos8
	#region

	var Returned=0;

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
			Returned.NotSafe=true 
		};
		if (Returned!=noone) and (Returned.Color!=Color)
		{
			//Returned.CanMove=true
		};

	#endregion


	}
#endregion
}







//    //Down
//	#region
	
//    var Returned=0;
//    Y=y+sprite_height+1;
    
//    while (Returned!=noone)
//    {
//        Returned=collision_point(x+sprite_width/2,Y,obj_cell,false,true);
        
//        if (Returned!=noone and Returned.Piece_ID!=-1 and Returned.Color=Color)
//        {
//            Returned.NotSafe=true
//            break
//        };
//        if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Color!=Color{Returned.NotSafe=true break};
//        if Returned!=noone{Returned.NotSafe=true};
//        Y+=sprite_height;
//    }
	
//	#endregion



////Up
//#region

//var Returned=0;
//Y=y-1;
//while Returned!=noone
//{
//Returned=collision_point(x+sprite_width/2,Y,obj_cell,false,true);
//if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Color=Color{Returned.NotSafe=true break};
//if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Color!=Color{Returned.NotSafe=true break};
//if Returned!=noone{Returned.NotSafe=true};
//Y-=sprite_height;
//}

//#endregion

////Right
//#region

//var Returned=0;
//X=x+sprite_width+1;
//while Returned!=noone
//{
//Returned=collision_point(X,y+sprite_height/2,obj_cell,false,true);
//if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Color=Color{Returned.NotSafe=true break};
//if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Color!=Color{Returned.NotSafe=true break};
//if Returned!=noone{Returned.NotSafe=true};
//X+=sprite_width;
//}

//#endregion

////Left
//#region

//var Returned=0;
//X=x-1;
//while Returned!=noone
//{
//Returned=collision_point(X,y+sprite_height/2,obj_cell,false,true);
//if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Color=Color{Returned.NotSafe=true break};
//if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Color!=Color{Returned.NotSafe=true break};
//if Returned!=noone{Returned.NotSafe=true};
//X-=sprite_width;
//};};
//#endregion



