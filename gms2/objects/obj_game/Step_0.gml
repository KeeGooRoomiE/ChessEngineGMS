//script_execute(s_controller_step_GML);

mouse_string=global.Selected;

//king_check()

//Check for a changes in a King safety one time per situation
if (global.scacco!=localScaccoCheck)
{
	//if it maded not safe
	if (global.scacco=true)
	{
		set_console("King is not safe!");
		localScaccoCheck=global.scacco;
	}
	else //if it maded safe
	{
		set_console("King is safe now");
		localScaccoCheck=global.scacco;
	}
}

if (!instance_exists(obj_ai))
{
	global.PlayerTurn=global.player;
};


//keyboard_check_released(vk_space) = !global.Debug_Mode;