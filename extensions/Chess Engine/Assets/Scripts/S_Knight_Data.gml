/// S_Knight_Data()
if argument[0]=0{//Selected To Move
//Move Down Right
Returned=collision_point(x+sprite_width+1,y+sprite_height*2+3,o_Segment,false,true);
if Returned!=noone and Returned.Piece_ID=-1{Returned.CanMove=true};
if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Colour!=Colour{Returned.CanTake=true};
//Move Down  Left
Returned=collision_point(x+-1,y+sprite_height*2+3,o_Segment,false,true);
if Returned!=noone and Returned.Piece_ID=-1{Returned.CanMove=true};
if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Colour!=Colour{Returned.CanTake=true};
//Move Up Right
Returned=collision_point(x+sprite_width+1,y-(sprite_height*1.5),o_Segment,false,true);
if Returned!=noone and Returned.Piece_ID=-1{Returned.CanMove=true};
if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Colour!=Colour{Returned.CanTake=true};
//Move Up Left
Returned=collision_point(x-1,y-(sprite_height*1.5),o_Segment,false,true);
if Returned!=noone and Returned.Piece_ID=-1{Returned.CanMove=true};
if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Colour!=Colour{Returned.CanTake=true};
//Move Up Left left
Returned=collision_point(x-sprite_width,y-1,o_Segment,false,true);
if Returned!=noone and Returned.Piece_ID=-1{Returned.CanMove=true};
if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Colour!=Colour{Returned.CanTake=true};
//Move Up Right Right
Returned=collision_point(x+sprite_width*2,y-1,o_Segment,false,true);
if Returned!=noone and Returned.Piece_ID=-1{Returned.CanMove=true};
if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Colour!=Colour{Returned.CanTake=true};
//Move Down Left left
Returned=collision_point(x-sprite_width,y+sprite_height+3,o_Segment,false,true);
if Returned!=noone and Returned.Piece_ID=-1{Returned.CanMove=true};
if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Colour!=Colour{Returned.CanTake=true};
//Move Down Right Right
Returned=collision_point(x+sprite_width*2,y+sprite_height+3,o_Segment,false,true);
if Returned!=noone and Returned.Piece_ID=-1{Returned.CanMove=true};
if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Colour!=Colour{Returned.CanTake=true};
};

if argument[0]=1{//Check board and mark none safe areas

//Move Down Right
Returned=collision_point(x+sprite_width+1,y+sprite_height*2+3,o_Segment,false,true);
if Returned!=noone {Returned.NotSafe=true};
//Move Down  Left
Returned=collision_point(x+-1,y+sprite_height*2+3,o_Segment,false,true);
if Returned!=noone {Returned.NotSafe=true};
//Move Up Right
Returned=collision_point(x+sprite_width+1,y-(sprite_height*1.5),o_Segment,false,true);
if Returned!=noone{Returned.NotSafe=true};
//Move Up Left
Returned=collision_point(x-1,y-(sprite_height*1.5),o_Segment,false,true);
if Returned!=noone {Returned.NotSafe=true};
//Move Up Left left
Returned=collision_point(x-sprite_width,y-1,o_Segment,false,true);
if Returned!=noone {Returned.NotSafe=true};
//Move Up Right Right
Returned=collision_point(x+sprite_width*2,y-1,o_Segment,false,true);
if Returned!=noone {Returned.NotSafe=true};
//Move Down Left left
Returned=collision_point(x-sprite_width,y+sprite_height+3,o_Segment,false,true);
if Returned!=noone {Returned.NotSafe=true};
//Move Down Right Right
Returned=collision_point(x+sprite_width*2,y+sprite_height+3,o_Segment,false,true);
if Returned!=noone {Returned.NotSafe=true};

};
