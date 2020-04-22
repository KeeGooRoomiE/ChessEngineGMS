/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 67422182
/// @DnDArgument : "code" "///Camera settings [early one]$(13_10)$(13_10)if (camera_size >1000) //if cam_size is 1024$(13_10){$(13_10)	camera_size=512;$(13_10)}$(13_10)else  //if cam_size is 512$(13_10){$(13_10)	camera_size=1024;$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10)view_wport[0]=camera_size;$(13_10)view_hport[0]=camera_size;"
///Camera settings [early one]

if (camera_size >1000) //if cam_size is 1024
{
	camera_size=512;
}
else  //if cam_size is 512
{
	camera_size=1024;
}



view_wport[0]=camera_size;
view_hport[0]=camera_size;