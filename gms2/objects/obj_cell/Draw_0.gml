///Draw 
debug_x_check = x+sprite_width*0.5
debug_y_check = y-sprite_height*1.5

//var check_mouse_pos_x;

//[HOMEWORK]

//1. create a popup window for a selecting a piece when it reaches end of the board
//1.1 draw a popup window with check for a proper piece and dont allow to end move if it will not be checked
//2. try to set a responsive scale of the text. (Max font size - percentage, per-line separation the same)
//3. try to create a new argument inside of the script to draw the console output i different colors
//4. check function point_in_*  (point_in_rectangle) in Help.


//isSelectedPiece = true


//if point_in_rectangle(check_mouse_pos_x,y,)
//{
//	//reset pawn to proper piece
//}

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

	//Not drawing any pieces in a cell if its an empty(grey)
	if (Color != "Grey")
	{
		draw_sprite(pieceSprite,Piece_ID,x,y);
	};
	
	
	
}
else								//if in debug
{
	draw_text(x,y,"CanMove: "+string(CanMove)); //type of pieces
	draw_text(x,y+16,"CanTake: "+string(CanTake)); //Color 
	draw_text(x,y+32,string(BoardPos));//name of the position
	draw_text(x,y+48,string(Piece_ID));		//number of cell at the board
	draw_text(x,y+64,"Moves: " +string(Moves));	//count of moves at this cell
	draw_text(x,y+80,"Passant:" +string(Passant));	//Passant

	
//	if (collision_point(debug_x_check,debug_y_check,obj_cell,false,true) != noone)
//	{
//		draw_line_color(x,y,debug_x_check,debug_y_check,c_green,c_green);
//	}
//	else
//	{
//		draw_line_color(x,y,debug_x_check,debug_y_check,c_red,c_red);
//	}
	
}