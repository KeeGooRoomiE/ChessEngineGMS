/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0A6131E2
/// @DnDArgument : "code" "///Draw $(13_10)$(13_10)//Drawing the colour of the cell$(13_10)draw_self();$(13_10)$(13_10)//drawing debug info or the pieces$(13_10)if (!global.Debug_Mode)				//if not in debug$(13_10){$(13_10)	if (Color = "White")$(13_10)	{$(13_10)		pieceSprite=spr_pieces_white;$(13_10)	};$(13_10)$(13_10)	if (Color = "Black")$(13_10)	{$(13_10)		pieceSprite=spr_black_pieces;$(13_10)	};$(13_10)$(13_10)$(13_10)	if (Color != "Grey")$(13_10)	{$(13_10)		draw_sprite(pieceSprite,Piece_ID,x,y);$(13_10)	};$(13_10)}$(13_10)else								//if in debug$(13_10){$(13_10)	draw_text(x,y,string(Piece_ID)); //type of pieces$(13_10)	draw_text(x,y+16,string(Color)); //colour $(13_10)	draw_text(x,y+32,string(BoardPos));//name of the position$(13_10)	draw_text(x,y+48,string(ID));		//number of cell at the board$(13_10)	$(13_10)}"
///Draw 

//Drawing the colour of the cell
draw_self();

//drawing debug info or the pieces
if (!global.Debug_Mode)				//if not in debug
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
		draw_sprite(pieceSprite,Piece_ID,x,y);
	};
}
else								//if in debug
{
	draw_text(x,y,string(Piece_ID)); //type of pieces
	draw_text(x,y+16,string(Color)); //colour 
	draw_text(x,y+32,string(BoardPos));//name of the position
	draw_text(x,y+48,string(ID));		//number of cell at the board
	
}