///Draw 

//Drawing the Color of the cell
draw_self();

//if (id=global.W_ScaccoKing or id=global.B_ScaccoKing) 
//{
//	image_blend=c_red;
//	instance_create_depth(x,y,-99999,obj_all_ns)
//}

//if (id=global.CheckingCellDebug) 
//{
//	image_blend=c_blue
//	instance_create_depth(x,y,-99999,obj_all_ch)
//}

//if (id=global.W_ScaccoKing or id=global.B_ScaccoKing) and (id=global.CheckingCellDebug) 
//{
//	image_blend=c_green
//	instance_create_depth(x,y,-99999,obj_all_all)
//}

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
	
	if  (CanMove=true)
	{
		draw_sprite(s_segment,5,x,y);//5
	};
			
	if  (CanTake=true)
	{
		draw_sprite(s_segment,4,x,y);//4;
	};
				
	if  (Castling_BRight=true) or (Castling_WRight=true) or (Castling_BLeft=true) or (Castling_WLeft=true) or (Passant = 1)
	{
		draw_sprite(s_segment,6,x,y);//6;
	};	
	
	if  (W_NotSafe=true) 
	{
		draw_sprite(s_segment,7,x,y);//7;
	};	
	
	if  (B_NotSafe=true) 
	{
		draw_sprite(s_segment,8,x,y);//8;
	};	
	
	if  (W_NotSafe=true and B_NotSafe=true) 
	{
		draw_sprite(s_segment,9,x,y);//9;
	};	
	
}
else								//if in debug
{
	draw_text_color(x,y,"B_nosafe: "+string(B_NotSafe),c_red,c_red,c_red,c_red,1); //type of pieces
	draw_text_color(x,y+16,"W_nosafe: "+string(W_NotSafe),c_red,c_red,c_red,c_red,1); //Color 
	draw_text_color(x,y+32,"Piece_ID" +string(Piece_ID),c_red,c_red,c_red,c_red,1);//name of the position
	draw_text_color(x,y+48,"Passant" +string(Passant),c_red,c_red,c_red,c_red,1);		//number of cell at the board
	draw_text_color(x,y+64,"Enpass: " +string(Enpass),c_red,c_red,c_red,c_red,1);	//count of moves at this cell
	//draw_text(x,y+80,"Passant:" +string(Passant),c_red,c_red,c_red,c_red,1);	//Passant
}

//draw_arrow(x,y,debug_x_check,debug_y_check,10);

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

