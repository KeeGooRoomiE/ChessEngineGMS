///@descr rook_move_check(state);

if argument0=0
{
//Down
#region

Returned=0;

Y=y+sprite_height+1;

while (Returned!=noone)
{
    Returned=collision_point(x+sprite_width/2,Y,obj_cell,false,true);
    
    if (Returned!=noone and Returned.Piece_ID!=-1 and Returned.Color=Color)
    {
        //if Returned.Piece_ID!=5
        //{   
        //    Returned.NotSafe=true
        //} 
        //break
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
};
#endregion;

//Up
#region

Returned=0;
Y=y-1;
while Returned!=noone
	{
	Returned=collision_point(x+sprite_width/2,Y,obj_cell,false,true);
	if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Color=Color
	{
		//if Returned.Piece_ID!=5
		//	{
		//	Returned.NotSafe=true
		//	} 
		//	break
		
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
	}

#endregion

//Right
#region
Returned=0;
X=x+sprite_width+1;
while Returned!=noone
{
	Returned=collision_point(X,y+sprite_height*0.5,obj_cell,false,true);
	if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Color=Color
	{
		//if Returned.Piece_ID!=5
		//{
		//Returned.NotSafe=true
		//} 
		//break
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
	X+=sprite_width;
}

#endregion

//Left
#region

Returned=0;
X=x-1;
while Returned!=noone
{
	Returned=collision_point(X,y+sprite_height/2,obj_cell,false,true);
	if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Color=Color
	{
		//if Returned.Piece_ID!=5
		//{
		//	Returned.NotSafe=true
		//}
		//break
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
	X-=sprite_width;
}
#endregion

}




if argument0=1
//Check board and mark none safe areas
{
//Down
#region

Returned=0;

Y=y+sprite_height+1;

while (Returned!=noone)
{
    Returned=collision_point(x+sprite_width/2,Y,obj_cell,false,true);
    
    if (Returned!=noone and Returned.Piece_ID!=-1 and Returned.Color=Color)
    {
        //if Returned.Piece_ID!=5
        //{   
        //    Returned.NotSafe=true
        //} 
        //break
    };
    if (Returned!=noone and Returned.Piece_ID!=-1 and Returned.Color!=Color)
    {
        Returned.NotSafe=true
        break
    };
    if (Returned!=noone)
    {
        //Returned.CanMove=true
    };
    
    Y+=sprite_height;
};
#endregion;

//Up
#region

Returned=0;
Y=y-1;
while Returned!=noone
	{
	Returned=collision_point(x+sprite_width/2,Y,obj_cell,false,true);
	if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Color=Color
	{
		//if Returned.Piece_ID!=5
		//	{
		//	Returned.NotSafe=true
		//	} 
		//	break
		
	};
	if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Color!=Color
	{
		Returned.NotSafe=true 
		break
	};
	if Returned!=noone
	{
		//Returned.CanMove=true
	};
	Y-=sprite_height;
	}

#endregion

//Right
#region
Returned=0;
X=x+sprite_width+1;
while Returned!=noone
{
	Returned=collision_point(X,y+sprite_height*0.5,obj_cell,false,true);
	if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Color=Color
	{
		//if Returned.Piece_ID!=5
		//{
		//Returned.NotSafe=true
		//} 
		//break
	};
	if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Color!=Color
	{
		Returned.NotSafe=true 
		break
	};
	if Returned!=noone
	{
		//Returned.CanMove=true
	};
	X+=sprite_width;
}

#endregion

//Left
#region

Returned=0;
X=x-1;
while Returned!=noone
{
	Returned=collision_point(X,y+sprite_height/2,obj_cell,false,true);
	if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Color=Color
	{
		//if Returned.Piece_ID!=5
		//{
		//	Returned.NotSafe=true
		//}
		//break
	};
	if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Color!=Color
	{
		Returned.NotSafe=true 
		break
	};
	if Returned!=noone
	{
		//Returned.CanMove=true
	};
	X-=sprite_width;
}
#endregion




}