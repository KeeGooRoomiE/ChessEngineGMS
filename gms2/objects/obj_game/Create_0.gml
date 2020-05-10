/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 359B9729
/// @DnDArgument : "script" "s_piece_data"
/// @DnDSaveInfo : "script" "00f1bd55-a977-4b37-999d-dfc3ff832871"
script_execute(s_piece_data);

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 2B821418
/// @DnDArgument : "script" "s_create_GML"
/// @DnDSaveInfo : "script" "1968e2f5-b634-4cda-a38f-0e190f7f12df"
script_execute(s_create_GML);

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 4D520C94
/// @DnDArgument : "var" "Selected"
global.Selected = 0;

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 73EEDB1A
/// @DnDArgument : "var" "Debug_Mode"
global.Debug_Mode = 0;

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 78DEAE3D
/// @DnDArgument : "value" ""Grey""
/// @DnDArgument : "var" "Cell_Color"
global.Cell_Color = "Grey";

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 7574B12E
/// @DnDArgument : "value" "-1"
/// @DnDArgument : "var" "Piece_Index"
global.Piece_Index = -1;

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 24035F24
/// @DnDArgument : "var" "Prev_Cell"
global.Prev_Cell = 0;

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 78B040E3
/// @DnDArgument : "var" "mode"
global.mode = 0;

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 24C5FB80
/// @DnDArgument : "code" "mouse_string="";$(13_10)$(13_10)//trigger(set to true\false) variable global.Debug_Mode when we press Space button$(13_10)$(13_10)//1. Create a event for a pressing space button $(13_10)//1.1 Determine when we need to set it event $(13_10)//2. Create a if statement for a checking a global variable$(13_10)//3. Change global variable depends on the state of this variable$(13_10)$(13_10)camera_size=512;$(13_10)$(13_10)view_wport[0]=camera_size;$(13_10)view_hport[0]=camera_size;$(13_10)$(13_10)//to determine what OS is running right now$(13_10)$(13_10)//1. use internal GMS constants and functions$(13_10)$(13_10)//2. determine input on OS$(13_10)// so if its a mouse = mouse_x and y will change without pressing LMB$(13_10)// if its a screen = changed mouse_x and y only with pressing LMB$(13_10)$(13_10)//3. determine aspect ratio $(13_10)// so if w>h = its a PC$(13_10)// if w<h = its a mobile$(13_10)$(13_10)$(13_10)"
mouse_string="";

//trigger(set to true\false) variable global.Debug_Mode when we press Space button

//1. Create a event for a pressing space button 
//1.1 Determine when we need to set it event 
//2. Create a if statement for a checking a global variable
//3. Change global variable depends on the state of this variable

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