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
/// @DnDArgument : "script" "s_create_DnD"
/// @DnDSaveInfo : "script" "409ed7e0-ee9e-41eb-8f7d-c9229b24fb71"
script_execute(s_create_DnD);

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 4D520C94
/// @DnDArgument : "var" "Selected"
global.Selected = 0;