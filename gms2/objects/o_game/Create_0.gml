/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 1113D454
/// @DnDInput : 2
/// @DnDArgument : "expr" "80"
/// @DnDArgument : "expr_1" "80"
/// @DnDArgument : "var" "x"
/// @DnDArgument : "var_1" "y"
x = 80;
y = 80;

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
/// @DnDHash : 648A478E
/// @DnDArgument : "value" "-1"
/// @DnDArgument : "var" "Selected"
global.Selected = -1;

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

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 24C5FB80
/// @DnDArgument : "code" "mouse_string="";"
mouse_string="";