// draw the move
//  draw_text(x,y,"CanMove: "+string(CanMove)); //type of pieces

draw_set_color(c_black)
draw_text(0,0, "Move: "+ string(Color) +string(Piece_ID) +string(global.Prev) +string(global.Next));