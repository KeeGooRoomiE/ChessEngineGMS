// draw the move
//  draw_text(x,y,"CanMove: "+string(CanMove)); //type of pieces

draw_text_color(obj_board.x-496,obj_board.y-497-16, "Move: "+ string(Color) +string(Piece_ID) +string(global.Prev) +string(argument0),c_black,c_black,c_black,c_black,1);
//draw_text(0,0, "Move: "+ string(Color) +string(Piece_ID) +string(global.Prev) +string(global.Next));

show_debug_message("Move: "+ string(Color) +string(Piece_ID) +string(global.Prev) +string(global.Next))