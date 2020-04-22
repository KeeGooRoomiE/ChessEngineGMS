/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0A6131E2
/// @DnDArgument : "code" "///Draw $(13_10)$(13_10)draw_self();$(13_10)draw_text(x,y,string(Piece_ID));$(13_10)draw_text(x,y+16,string(Color));$(13_10)$(13_10)if (!global.Debug_Mode) $(13_10){$(13_10)	if (Color = "White")$(13_10)	{$(13_10)		pieceSprite=spr_pieces_white;$(13_10)	};$(13_10)$(13_10)	if (Color = "Black")$(13_10)	{$(13_10)		pieceSprite=spr_black_pieces;$(13_10)	};$(13_10)$(13_10)$(13_10)	if (Color != "Grey")$(13_10)	{$(13_10)		draw_sprite(pieceSprite,0,x,y);$(13_10)	};$(13_10)}$(13_10)$(13_10)//repeat if statement for a Grey Color$(13_10)//set image_index = 0;$(13_10)//set sprite_index = s_segment"
///Draw 

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

//repeat if statement for a Grey Color
//set image_index = 0;
//set sprite_index = s_segment