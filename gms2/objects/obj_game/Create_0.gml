script_execute(s_piece_data);

script_execute(s_create_GML);

global.Selected = 0;

global.Debug_Mode = 0;

global.Cell_Color = "Grey";

global.Piece_Index = -1;

global.Prev_Cell = 0;

global.mode = 0;

global.player = 1

localScaccoCheck = 0

mouse_string="";

//trigger(set to true\false) variable global.Debug_Mode when we press Space button


camera_size=512;

view_wport[0]=camera_size;
view_hport[0]=camera_size;

//to determine what OS is running right now

//1. use internal GMS constants and functions

//2. determine input on OS
// so if its a mouse = mouse_x and y will change without pressing LMB
// if its a screen = changed mouse_x and y only with pressing LMB

//3. determine aspect ratio 
// so if w>h = its a PC
// if w<h = its a mobile

store_moves[0]=0;
moves_counter=0;

//for (i=0; i<20; i++) //inits more than current and showing array wo errors
//{
	//store_moves[i]="";
	//moves_counter=i;
//}




