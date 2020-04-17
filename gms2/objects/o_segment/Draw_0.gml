/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0A6131E2
/// @DnDArgument : "code" "///Draw $(13_10)$(13_10)draw_self();$(13_10)draw_text(x,y,string(Piece_ID));$(13_10)draw_text(x,y+16,string(Color));$(13_10)$(13_10)//[HOMEWORK]$(13_10)$(13_10)if (Color = "White")$(13_10){$(13_10)	image_index=1;$(13_10)	//change to 0$(13_10)}$(13_10)$(13_10)if (Color = "Black")$(13_10){$(13_10)	image_index=2;$(13_10)	//change to 1$(13_10)}$(13_10)$(13_10)//repeat if statement for a Grey Color$(13_10)//set image_index = 0;$(13_10)//set sprite_index = s_segment"
///Draw 

draw_self();
draw_text(x,y,string(Piece_ID));
draw_text(x,y+16,string(Color));

//[HOMEWORK]

if (Color = "White")
{
	image_index=1;
	//change to 0
}

if (Color = "Black")
{
	image_index=2;
	//change to 1
}

//repeat if statement for a Grey Color
//set image_index = 0;
//set sprite_index = s_segment