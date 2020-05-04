/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 04847B65
/// @DnDArgument : "code" "$(13_10)global.Debug_Mode = !global.Debug_Mode$(13_10)s_output_message("global variable is now "+string(global.Debug_Mode));$(13_10)$(13_10)"

global.Debug_Mode = !global.Debug_Mode
s_output_message("global variable is now "+string(global.Debug_Mode));