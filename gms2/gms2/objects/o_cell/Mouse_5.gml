/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 28F384D2
/// @DnDArgument : "code" "//check what cell is represents our last cheking$(13_10)with (global.Prev_Cell)$(13_10){$(13_10)	Color=other.Color;$(13_10)	Piece_ID=other.Piece_ID;$(13_10)}$(13_10)$(13_10)Color=global.Cell_Color;$(13_10)Piece_ID=global.Piece_Index;$(13_10)$(13_10)global.Selected=ID;  //0... 63$(13_10)global.Prev_Cell=id; //0x000... 0x999"
//check what cell is represents our last cheking
with (global.Prev_Cell)
{
	Color=other.Color;
	Piece_ID=other.Piece_ID;
}

Color=global.Cell_Color;
Piece_ID=global.Piece_Index;

global.Selected=ID;  //0... 63
global.Prev_Cell=id; //0x000... 0x999