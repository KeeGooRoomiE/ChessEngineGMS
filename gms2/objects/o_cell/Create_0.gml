/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 19F43275
/// @DnDInput : 3
/// @DnDArgument : "var" "image_speed"
/// @DnDArgument : "var_1" "Piece_ID"
/// @DnDArgument : "var_2" "ID"
image_speed = 0;
Piece_ID = 0;
ID = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 497AC4DD
/// @DnDArgument : "expr" ""White""
/// @DnDArgument : "var" "Color"
Color = "White";

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 20356E4C
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)//ID=0;$(13_10)   $(13_10)   //Sample Comment 1$(13_10)   $(13_10)   $(13_10)    Protected=false;$(13_10)    CanMove=false;//Used to detect if the king piece can move while in check$(13_10)    image_speed=0;//Stops image from animating$(13_10)    Piece_ID=-1;//The ID of the piece from the S_Piece_Data script. -1 = defaut$(13_10)    CanMove=false;//This segment of the board will light up if a selected piece is able to move here.$(13_10)    Colour="Black";//The colour of the piece. defaut = Black$(13_10)    CanTake=false;//This segment of the board will light up if a selected piece is able to take a peice on this segment.$(13_10)    Moves=0;//Amount of moves this piece has made since the match began.$(13_10)    NotSafe=false;//At the start of each turn every piece will be checked to see if its safe or not. This allows us to check to see if a player is in check for instance.$(13_10)    NotSafeAggressor=noone;//The Segment that is thretening this Segment if any.$(13_10)$(13_10)	pieceSprite=s_segment;$(13_10)$(13_10)    Castling=false;//Set to true if an empty segment can be used to castle.$(13_10)    CastlingID=-1;//ID of the castling segment on the board. (Used to calculate what side of the board the castling move is happening)$(13_10)    $(13_10)    "
/// @description Execute Code
//ID=0;
   
   //Sample Comment 1
   
   
    Protected=false;
    CanMove=false;//Used to detect if the king piece can move while in check
    image_speed=0;//Stops image from animating
    Piece_ID=-1;//The ID of the piece from the S_Piece_Data script. -1 = defaut
    CanMove=false;//This segment of the board will light up if a selected piece is able to move here.
    Colour="Black";//The colour of the piece. defaut = Black
    CanTake=false;//This segment of the board will light up if a selected piece is able to take a peice on this segment.
    Moves=0;//Amount of moves this piece has made since the match began.
    NotSafe=false;//At the start of each turn every piece will be checked to see if its safe or not. This allows us to check to see if a player is in check for instance.
    NotSafeAggressor=noone;//The Segment that is thretening this Segment if any.

	pieceSprite=s_segment;

    Castling=false;//Set to true if an empty segment can be used to castle.
    CastlingID=-1;//ID of the castling segment on the board. (Used to calculate what side of the board the castling move is happening)