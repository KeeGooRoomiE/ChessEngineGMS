/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4E145BCC
/// @DnDArgument : "code" "///@descr Sets a board to center$(13_10)$(13_10)x=room_width/2;$(13_10)y=room_height/2;$(13_10)$(13_10)$(13_10)instance_create_layer(x-445,y-445,"Board",obj_game)"
///@descr Sets a board to center

x=room_width/2;
y=room_height/2;


instance_create_layer(x-445,y-445,"Board",obj_game)