//Castling
if other.Castling=true{

//Right White
if other.CastlingID=63{
with o_Segment{if ID=63{
Returned=collision_point(x-(sprite_width),y+sprite_height/2,o_Segment,false,true);
Returned.Piece_ID=Piece_ID Returned.Colour=Colour  Piece_ID=-1 ;
}}};

//Left White
if other.CastlingID=56{
with o_Segment{if ID=56{
Returned=collision_point(x+(sprite_width*3)+10,y+sprite_height/2,o_Segment,false,true);
Returned.Piece_ID=Piece_ID Returned.Colour=Colour  Piece_ID=-1;
}}};

//Right Black
if other.CastlingID=7{
with o_Segment{if ID=7{
Returned=collision_point(x-(sprite_width),y+sprite_height/2,o_Segment,false,true);
Returned.Piece_ID=Piece_ID Returned.Colour=Colour  Piece_ID=-1; 
}}};

//Left Black
if other.CastlingID=0{
with o_Segment{if ID=0{
Returned=collision_point(x+(sprite_width*3)+10,y+sprite_height/2,o_Segment,false,true);
Returned.Piece_ID=Piece_ID Returned.Colour=Colour  Piece_ID=-1;
}}};
};
