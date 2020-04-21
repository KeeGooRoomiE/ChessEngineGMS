/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 28F384D2
/// @DnDArgument : "code" "//check what cell is represents our last cheking$(13_10)$(13_10)//[HOMEWORK]$(13_10)$(13_10)//$(13_10)$(13_10)//check variables of cell form that we go and see if its color is not Gray$(13_10)//so just turn it gray$(13_10)//beacuse its a gray one - Piece_ID needed to be set as -1$(13_10)$(13_10)//an addition$(13_10)//set variables inside of the o_game:$(13_10)//black_pieces_down = 0;$(13_10)//and for a white too$(13_10)$(13_10)$(13_10)with (global.Prev_Cell)$(13_10){$(13_10)	Color=other.Color;$(13_10)	Piece_ID=other.Piece_ID;$(13_10)}$(13_10)$(13_10)Color=global.Cell_Color;$(13_10)Piece_ID=global.Piece_Index;$(13_10)$(13_10)global.Selected=ID;  //0... 63$(13_10)global.Prev_Cell=id; //0x000... 0x999"
//check what cell is represents our last cheking

//[HOMEWORK]

//

//check variables of cell form that we go and see if its color is not Gray
//so just turn it gray
//beacuse its a gray one - Piece_ID needed to be set as -1

//an addition
//set variables inside of the o_game:
//black_pieces_down = 0;
//and for a white too


with (global.Prev_Cell)
{
	Color=other.Color;
	Piece_ID=other.Piece_ID;
}

Color=global.Cell_Color;
Piece_ID=global.Piece_Index;

global.Selected=ID;  //0... 63
global.Prev_Cell=id; //0x000... 0x999