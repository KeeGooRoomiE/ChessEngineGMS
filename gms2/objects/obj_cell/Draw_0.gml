///Draw 


debug_x_check=x-sprite_width/2;
debug_y_check=y+sprite_height+32;

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
	draw_text(x,y+48,string(ID));		//number of cell at the board
	draw_text(x,y+64,string(Moves));	//count of moves at this cell
	
	if (collision_point(debug_x_check,debug_y_check,obj_cell,false,true) != noone)
	{
		draw_line_color(x,y,debug_x_check,debug_y_check,c_green,c_green);
	}
	else
	{
		draw_line_color(x,y,debug_x_check,debug_y_check,c_red,c_red);
	}
	
}