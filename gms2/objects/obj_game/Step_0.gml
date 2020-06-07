
switch (global.mode)
{
case 0:
#region

mouse_string=global.Selected;

//Check for a changes in a King safety one time per situation
#region
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
#endregion

if (!instance_exists(obj_ai))
{
	global.PlayerTurn=global.player;
};


//keyboard_check_released(vk_space) = !global.Debug_Mode;
break;
#endregion

case 1:
break;

case 2:
#region
if global.check = "White"
{
	check_win(0)
}

if global.check = "Black"
{
	check_win(1)
}
break;
#endregion

}






