///@descr rook_move_check(state);


//[HOMEWORK]

//1. fix names inside of the script OK
//2. try to set #region OK
//3. refactor tabulation of the script OK
//4. Add: check for a coordinates of collision_point functions
//5. Optional. Try to reset a size and camera borders inside the room.
//6. Optional. Try to set ROC inside of the game(try to set an 15 lines for it to draw)
//7. Optional. Re-create ROC inside of the source. (Open in Explorer > One folder  upper, and there is the files)
//8. Optional. Try to send a new string to the ROC when you trigger the Debug_Mode(also delete showing console only in debug)
//9. Try to start the game w/ working rook_move script
//10.Try to figue out why pawns are able to set CanMove in free cells

if argument0=0
{
	//Selected To Move

//X
//M -- G
//M -- G
//T -- R
//1

//Down
#region

var Returned=0;

Y=y+sprite_height+1;

while (Returned!=noone)
{
    Returned=collision_point(x+sprite_width/2,Y,obj_cell,false,true);
    
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
};
#endregion;

//Up
#region

var Returned=0;
Y=y-1;
while Returned!=noone
	{
	Returned=collision_point(x+sprite_width/2,Y,obj_cell,false,true);
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
	}

#endregion


//Right
#region

var Returned=0;
X=x+sprite_width+1;
while Returned!=noone
{
	Returned=collision_point(X,y+sprite_height*0.5,obj_cell,false,true);
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
	X+=sprite_width;
}

#endregion

//Left
#region

var Returned=0;
X=x-1;
while Returned!=noone
{
	Returned=collision_point(X,y+sprite_height/2,obj_cell,false,true);
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
	X-=sprite_width;
}
}

#endregion


if argument0=1
{//Check board and mark none safe areas
	
#region

    //Down
	#region
	
    var Returned=0;
    Y=y+sprite_height+1;
    
    while (Returned!=noone)
    {
        Returned=collision_point(x+sprite_width/2,Y,obj_cell,false,true);
        
        if (Returned!=noone and Returned.Piece_ID!=-1 and Returned.Color=Color)
        {
            Returned.NotSafe=true
            break
        };
        if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Color!=Color{Returned.NotSafe=true break};
        if Returned!=noone{Returned.NotSafe=true};
        Y+=sprite_height;
    }
	
	#endregion



//Up
#region

var Returned=0;
Y=y-1;
while Returned!=noone
{
Returned=collision_point(x+sprite_width/2,Y,obj_cell,false,true);
if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Color=Color{Returned.NotSafe=true break};
if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Color!=Color{Returned.NotSafe=true break};
if Returned!=noone{Returned.NotSafe=true};
Y-=sprite_height;
}

#endregion

//Right
#region

var Returned=0;
X=x+sprite_width+1;
while Returned!=noone
{
Returned=collision_point(X,y+sprite_height/2,obj_cell,false,true);
if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Color=Color{Returned.NotSafe=true break};
if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Color!=Color{Returned.NotSafe=true break};
if Returned!=noone{Returned.NotSafe=true};
X+=sprite_width;
}

#endregion

//Left
#region

var Returned=0;
X=x-1;
while Returned!=noone
{
Returned=collision_point(X,y+sprite_height/2,obj_cell,false,true);
if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Color=Color{Returned.NotSafe=true break};
if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Color!=Color{Returned.NotSafe=true break};
if Returned!=noone{Returned.NotSafe=true};
X-=sprite_width;
};};
#endregion


#endregion