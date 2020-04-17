/// S_King_Data()
if argument[0]=0{//Selected To Move
    //Down
    Returned=collision_point(x+sprite_width/2,y+sprite_height+32,o_Segment,false,true);
    if Returned!=noone and Returned.Piece_ID=-1 and Returned.NotSafe=false{Returned.CanMove=true};
    if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Colour!=Colour and Returned.NotSafe=false{Returned.CanTake=true};
    
    //Up
    Returned=collision_point(x+sprite_width/2,y-sprite_height/2,o_Segment,false,true);
    if Returned!=noone and Returned.Piece_ID=-1 and Returned.NotSafe=false{Returned.CanMove=true};
    if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Colour!=Colour and Returned.NotSafe=false{Returned.CanTake=true};
    
    //Up Right
    Returned=collision_point(x+sprite_width,y,o_Segment,false,true);
    if Returned!=noone and Returned.Piece_ID=-1 and Returned.NotSafe=false{Returned.CanMove=true};
    if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Colour!=Colour and Returned.NotSafe=false{Returned.CanTake=true};
    
    //Up Left
    Returned=collision_point(x-1,y,o_Segment,false,true);
    if Returned!=noone and Returned.Piece_ID=-1 and Returned.NotSafe=false{Returned.CanMove=true};
    if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Colour!=Colour and Returned.NotSafe=false{Returned.CanTake=true};
    
    //Right
    Returned=collision_point(x+sprite_width,y+sprite_height/2,o_Segment,false,true);
    if Returned!=noone and Returned.Piece_ID=-1 and Returned.NotSafe=false{Returned.CanMove=true};
    if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Colour!=Colour and Returned.NotSafe=false{Returned.CanTake=true};
    
    //Left
    Returned=collision_point(x-1,y+sprite_height/2,o_Segment,false,true);
    if Returned!=noone and Returned.Piece_ID=-1 and Returned.NotSafe=false{Returned.CanMove=true};
    if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Colour!=Colour and Returned.NotSafe=false{Returned.CanTake=true};
    
    //Down Right
    Returned=collision_point(x+sprite_width,y+sprite_height,o_Segment,false,true);
    if Returned!=noone and Returned.Piece_ID=-1 and Returned.NotSafe=false{Returned.CanMove=true};
    if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Colour!=Colour and Returned.NotSafe=false{Returned.CanTake=true};
    
    //Down Left
    Returned=collision_point(x-1,y+sprite_height,o_Segment,false,true);
    if Returned!=noone and Returned.Piece_ID=-1 and Returned.NotSafe=false{Returned.CanMove=true};
    if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Colour!=Colour and Returned.NotSafe=false{Returned.CanTake=true};
    
    //Castling
//Castling Right White
TempPieceData=false;
with o_Segment{if ID=63{if Piece_ID=1 and Moves=0{other.TempPieceData=true}}};
if Moves=0 and Colour="White" and TempPieceData=true{
Returned=collision_point(x+(sprite_width),y+sprite_height/2,o_Segment,false,true);
if Returned!=noone and Returned.Piece_ID=-1{
Returned=collision_point(x+(sprite_width*2),y+sprite_height/2,o_Segment,false,true);
if Returned!=noone and Returned.Piece_ID=-1{Returned.CanMove=true Returned.Castling=true Returned.CastlingID=63};
}}

//Castling Left White
TempPieceData=false;
with o_Segment{if ID=56{if Piece_ID=1 and Moves=0{other.TempPieceData=true}}};
if Moves=0 and Colour="White" and TempPieceData=true{
Returned=collision_point(x-(sprite_width),y+sprite_height/2,o_Segment,false,true);
if Returned!=noone and Returned.Piece_ID=-1{
Returned=collision_point(x-(sprite_width+10),y+sprite_height/2,o_Segment,false,true);
if Returned!=noone and Returned.Piece_ID=-1{Returned.CanMove=true Returned.Castling=true Returned.CastlingID=56};
}}

//Castling Right Black
TempPieceData=false;
with o_Segment{if ID=7{if Piece_ID=1 and Moves=0{other.TempPieceData=true}}};
if Moves=0 and Colour="Black" and TempPieceData=true{
Returned=collision_point(x+(sprite_width),y+sprite_height/2,o_Segment,false,true);
if Returned!=noone and Returned.Piece_ID=-1{
Returned=collision_point(x+(sprite_width*2),y+sprite_height/2,o_Segment,false,true);
if Returned!=noone and Returned.Piece_ID=-1{Returned.CanMove=true Returned.Castling=true Returned.CastlingID=7};
}}

//Castling Left Black
TempPieceData=false;
with o_Segment{if ID=0{if Piece_ID=1 and Moves=0{other.TempPieceData=true}}};
if Moves=0 and Colour="Black" and TempPieceData=true{
Returned=collision_point(x-(sprite_width),y+sprite_height/2,o_Segment,false,true);
if Returned!=noone and Returned.Piece_ID=-1{
Returned=collision_point(x-(sprite_width+10),y+sprite_height/2,o_Segment,false,true);
if Returned!=noone and Returned.Piece_ID=-1{Returned.CanMove=true Returned.Castling=true Returned.CastlingID=0};
}}

}


if argument[0]=1{//Check board and mark none safe areas
    
    //Down
    Returned=collision_point(x+sprite_width/2,y+sprite_height+32,o_Segment,false,true);
    if Returned!=noone and Returned.Protected=false{Returned.NotSafe=true Returned.NotSafeAggressor=ID if Returned.Colour=Colour{Returned.Protected=true}};
    
    //Up
    Returned=collision_point(x+sprite_width/2,y-sprite_height/2,o_Segment,false,true);
    if Returned!=noone and Returned.Protected=false{Returned.NotSafe=true Returned.NotSafeAggressor=ID if Returned.Colour=Colour{Returned.Protected=true}};
    
    //Up Right
    Returned=collision_point(x+sprite_width,y,o_Segment,false,true);
    if Returned!=noone  and Returned.Protected=false{Returned.NotSafe=true Returned.NotSafeAggressor=ID if Returned.Colour=Colour{Returned.Protected=true}};
    
    //Up Left
    Returned=collision_point(x-1,y,o_Segment,false,true);
    if Returned!=noone  and Returned.Protected=false{Returned.NotSafe=true Returned.NotSafeAggressor=ID if Returned.Colour=Colour{Returned.Protected=true}};
    
    //Right
    Returned=collision_point(x+sprite_width,y+sprite_height/2,o_Segment,false,true);
    if Returned!=noone  and Returned.Protected=false{Returned.NotSafe=true Returned.NotSafeAggressor=ID if Returned.Colour=Colour{Returned.Protected=true}};
    
    //Left
    Returned=collision_point(x-1,y+sprite_height/2,o_Segment,false,true);
    if Returned!=noone  and Returned.Protected=false{Returned.NotSafe=true Returned.NotSafeAggressor=ID if Returned.Colour=Colour{Returned.Protected=true}};
    
    //Down Right
    Returned=collision_point(x+sprite_width,y+sprite_height,o_Segment,false,true);
    if Returned!=noone  and Returned.Protected=false{Returned.NotSafe=true Returned.NotSafeAggressor=ID if Returned.Colour=Colour{Returned.Protected=true}};
    
    //Down Left
    Returned=collision_point(x-1,y+sprite_height,o_Segment,false,true);
    if Returned!=noone  and Returned.Protected=false{Returned.NotSafe=true Returned.NotSafeAggressor=ID if Returned.Colour=Colour{Returned.Protected=true}};
    
    
}


if argument[0]=2{//Check board and see if the king can move
  Aggressor=NotSafeAggressor;
    CanMove=false;
    //Down
    Returned=collision_point(x+sprite_width/2,y+sprite_height+32,o_Segment,false,true);
    if Returned!=noone {if Returned.NotSafe=false and Returned.Colour!=Colour and Returned.Protected=false{CanMove=true}};
    
    //Up
    Returned=collision_point(x+sprite_width/2,y-sprite_height/2,o_Segment,false,true);
    if Returned!=noone{if Returned.NotSafe=false and Returned.Colour!=Colour and Returned.Protected=false{CanMove=true}};
    
    //Up Right
    Returned=collision_point(x+sprite_width,y,o_Segment,false,true);
    if Returned!=noone {if Returned.NotSafe=false and Returned.Colour!=Colour and Returned.Protected=false{CanMove=true}};
    
    //Up Left
    Returned=collision_point(x-1,y,o_Segment,false,true);
    if Returned!=noone {if Returned.NotSafe=false and Returned.Colour!=Colour and Returned.Protected=false{CanMove=true}};
    
    //Right
    Returned=collision_point(x+sprite_width,y+sprite_height/2,o_Segment,false,true);
    if Returned!=noone {if Returned.NotSafe=false and Returned.Colour!=Colour and Returned.Protected=false{CanMove=true}};
    
    //Left
    Returned=collision_point(x-1,y+sprite_height/2,o_Segment,false,true);
    if Returned!=noone {if Returned.NotSafe=false and Returned.Colour!=Colour and Returned.Protected=false{CanMove=true}};
    
    //Down Right
    Returned=collision_point(x+sprite_width,y+sprite_height,o_Segment,false,true);
    if Returned!=noone {if Returned.NotSafe=false and Returned.Colour!=Colour and Returned.Protected=false{CanMove=true}};
     
    //Down Left
    Returned=collision_point(x-1,y+sprite_height,o_Segment,false,true);
    if Returned!=noone {if Returned.NotSafe=false and Returned.Colour!=Colour and Returned.Protected=false{CanMove=true}};
    
    //Code to detect if another piece can be moved to save the king
    if CanMove=false
    {
        with o_Segment{NotSafe=false NotSafeAggressor=noone};//Reset all segments as safe to move.

        
        with o_Segment{
            //Mark segments as not safe to move.
            if Piece_ID!=-1 and string(Colour)=string(global.Turn){//Makes sure we dont select any empty segments or segments that can be moved to by the current player.
                if global.Piece_Data[Piece_ID,0]=0{S_Pawn_Data(1)};
                if global.Piece_Data[Piece_ID,0]=5{S_King_Data(1)};
                if global.Piece_Data[Piece_ID,0]=2{S_Knight_Data(1)};
                if global.Piece_Data[Piece_ID,0]=1{S_Rook_Data(1)};
                if global.Piece_Data[Piece_ID,0]=3{S_Bishop_Data(1)};
                if global.Piece_Data[Piece_ID,0]=4{S_Queen_Data(1)};
        }
        }
      
           with o_Segment{ if ID=other.Aggressor and NotSafe=true{global.protectKingTmp=NotSafeAggressor other.CanMove=true }};
            with o_Segment{NotSafe=false NotSafeAggressor=noone};//Reset all segments as safe to move.

with o_Segment{
    //Mark segments as not safe to move.
    if Piece_ID!=-1 and string(Colour)!=string(global.Turn){//Makes sure we dont select any empty segments or segments that can be moved to by the current player.
        if global.Piece_Data[Piece_ID,0]=0{S_Pawn_Data(1)};
        if global.Piece_Data[Piece_ID,0]=5{S_King_Data(1)};
        if global.Piece_Data[Piece_ID,0]=2{S_Knight_Data(1)};
        if global.Piece_Data[Piece_ID,0]=1{S_Rook_Data(1)};
        if global.Piece_Data[Piece_ID,0]=3{S_Bishop_Data(1)};
        if global.Piece_Data[Piece_ID,0]=4{S_Queen_Data(1)};
        
        
    }}}};
