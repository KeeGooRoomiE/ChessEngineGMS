/// S_Rook_Data()
if argument[0]=0{//Selected To Move
//Down
var Returned=0;
Y=y+sprite_height+1;
while Returned!=noone
{
Returned=collision_point(x+sprite_width/2,Y,o_Segment,false,true);
if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Colour=Colour{if Returned.Piece_ID!=5{Returned.NotSafe=true} break};
if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Colour!=Colour{Returned.CanTake=true break};
if Returned!=noone{Returned.CanMove=true};
Y+=sprite_height;
};

//Up
var Returned=0;
Y=y-1;
while Returned!=noone
{
Returned=collision_point(x+sprite_width/2,Y,o_Segment,false,true);
if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Colour=Colour{if Returned.Piece_ID!=5{Returned.NotSafe=true} break};
if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Colour!=Colour{Returned.CanTake=true break};
if Returned!=noone{Returned.CanMove=true};
Y-=sprite_height;
}

//Right
var Returned=0;
X=x+sprite_width+1;
while Returned!=noone
{
Returned=collision_point(X,y+sprite_height/2,o_Segment,false,true);
if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Colour=Colour{if Returned.Piece_ID!=5{Returned.NotSafe=true} break};
if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Colour!=Colour{Returned.CanTake=true break};
if Returned!=noone{Returned.CanMove=true};
X+=sprite_width;
}


//Left
var Returned=0;
X=x-1;
while Returned!=noone
{
Returned=collision_point(X,y+sprite_height/2,o_Segment,false,true);
if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Colour=Colour{if Returned.Piece_ID!=5{Returned.NotSafe=true}  break};
if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Colour!=Colour{Returned.CanTake=true break};
if Returned!=noone{Returned.CanMove=true};
X-=sprite_width;
}
}


if argument[0]=1{//Check board and mark none safe areas


//Down
var Returned=0;
Y=y+sprite_height+1;
while Returned!=noone
{
Returned=collision_point(x+sprite_width/2,Y,o_Segment,false,true);
if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Colour=Colour{Returned.NotSafe=true break};
if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Colour!=Colour{Returned.NotSafe=true break};
if Returned!=noone{Returned.NotSafe=true};
Y+=sprite_height;
}

//Up
var Returned=0;
Y=y-1;
while Returned!=noone
{
Returned=collision_point(x+sprite_width/2,Y,o_Segment,false,true);
if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Colour=Colour{Returned.NotSafe=true break};
if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Colour!=Colour{Returned.NotSafe=true break};
if Returned!=noone{Returned.NotSafe=true};
Y-=sprite_height;
}

//Right
var Returned=0;
X=x+sprite_width+1;
while Returned!=noone
{
Returned=collision_point(X,y+sprite_height/2,o_Segment,false,true);
if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Colour=Colour{Returned.NotSafe=true break};
if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Colour!=Colour{Returned.NotSafe=true break};
if Returned!=noone{Returned.NotSafe=true};
X+=sprite_width;
}


//Left
var Returned=0;
X=x-1;
while Returned!=noone
{
Returned=collision_point(X,y+sprite_height/2,o_Segment,false,true);
if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Colour=Colour{Returned.NotSafe=true break};
if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Colour!=Colour{Returned.NotSafe=true break};
if Returned!=noone{Returned.NotSafe=true};
X-=sprite_width;
};};
