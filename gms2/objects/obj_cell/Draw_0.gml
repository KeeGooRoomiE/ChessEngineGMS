///Draw 
debug_x_check = x+sprite_width*0.5
debug_y_check = y-sprite_height*1.5

//Drawing the Color of the cell
draw_self();



//drawing debug info or the pieces
if (!global.Debug_Mode)				//if not in debug
{
	
	//Drawing pieces
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
	draw_text_color(x,y,"B_nosafe: "+string(W_NotSafe),c_red,c_red,c_red,c_red,1); //type of pieces
	draw_text_color(x,y+16,"W_nosafe: "+string(B_NotSafe),c_red,c_red,c_red,c_red,1); //Color 
	draw_text_color(x,y+32,"Moves" +string(Moves),c_red,c_red,c_red,c_red,1);//name of the position
	draw_text_color(x,y+48,"Passant" +string(Passant),c_red,c_red,c_red,c_red,1);		//number of cell at the board
	draw_text_color(x,y+64,"Enpass: " +string(Enpass),c_red,c_red,c_red,c_red,1);	//count of moves at this cell
	//draw_text(x,y+80,"Passant:" +string(Passant),c_red,c_red,c_red,c_red,1);	//Passant
}

//if (isSelectingPiece=true)
//{
//	draw_sprite(spr_selecting_cell,0,x,y);
//	draw_sprite(pieceSprite,Piece_ID,x,y);
//	if x<(1024/2) 
//	{
//		if (Color = "White")
//		{
//			draw_sprite(spr_selecting_line,0,1024/2-283,y+170);
//		}
//		else
//		{
//			draw_sprite(spr_selecting_line,0,1024/2-283,y+170);
//		}
//	}
//	else
//	{
//		if (Color = "Black")
//		{
//			draw_sprite(spr_selecting_line,0,1024/2+283,y+970);
//		}
//		else
//		{
//			draw_sprite(spr_selecting_line,0,1024/2+283,y+970);
//		}
//	}
//}

