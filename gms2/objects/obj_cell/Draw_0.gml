/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0A6131E2
/// @DnDArgument : "code" "///Draw $(13_10)$(13_10)//[HOMEWORK]$(13_10)$(13_10)//change Debug_Mode drawing elemets form pieces to text inside of cell$(13_10)//also will be good to left checking statement for the pieces itself inside of the if statement$(13_10)$(13_10)$(13_10)draw_self();$(13_10)draw_text(x,y,string(Piece_ID));$(13_10)draw_text(x,y+16,string(Color));$(13_10)$(13_10)if (!global.Debug_Mode) $(13_10){$(13_10)	if (Color = "White")$(13_10)	{$(13_10)		pieceSprite=spr_pieces_white;$(13_10)	};$(13_10)$(13_10)	if (Color = "Black")$(13_10)	{$(13_10)		pieceSprite=spr_black_pieces;$(13_10)	};$(13_10)$(13_10)$(13_10)	if (Color != "Grey")$(13_10)	{$(13_10)		draw_sprite(pieceSprite,0,x,y);$(13_10)	};$(13_10)}"
///Draw 

//[HOMEWORK]

//change Debug_Mode drawing elemets form pieces to text inside of cell
//also will be good to left checking statement for the pieces itself inside of the if statement


draw_self();
draw_text(x,y,string(Piece_ID));
draw_text(x,y+16,string(Color));

if (!global.Debug_Mode) 
{
	if (Color = "White")
	{
		pieceSprite=spr_pieces_white;
	};

	if (Color = "Black")
	{
		pieceSprite=spr_black_pieces;
	};


	if (Color != "Grey")
	{
		draw_sprite(pieceSprite,0,x,y);
	};
}