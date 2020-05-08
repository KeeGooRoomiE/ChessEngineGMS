/// draw the move

//  draw_text(x,y,"CanMove: "+string(CanMove)); //type of pieces

var Xpos = argument0;
var Ypos = argument1;
var usedString = argument2;
var DrawColor = argument3;
var DrawAlpha = argument4;

draw_text_color(Xpos,Ypos, usedString, DrawColor, DrawColor, DrawColor, DrawColor, DrawAlpha);
draw_text_color(argument0,argument1,argument2,argument3,argument3,argument3,argument3,argument4);
//draw_text(0,0, "Move: "+ string(Color) +string(Piece_ID) +string(global.Prev) +string(global.Next));

show_debug_message("Move: "+ string(Color) +string(Piece_ID) +string(global.Prev) +string(global.Next))