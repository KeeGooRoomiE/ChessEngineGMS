script_execute(s_piece_data);
script_execute(s_create_GML);

global.Selected = 0;
global.Debug_Mode = 0;
global.Cell_Color = "Grey";
global.Piece_Index = -1;
global.Prev_Cell = 0;
global.mode = 0;
global.scacco = false;
global.moveCell=noone;

localScaccoCheck=false;


mouse_string="";

camera_size=512;

view_wport[0]=camera_size;
view_hport[0]=camera_size;

//TODO:
//Parse data from an array to reproduce the behavior

//TOMAKE:
//Timeline
//Moves store
//Changes in cells

moves_array[0]="GAME START:";
moves_count=0;






