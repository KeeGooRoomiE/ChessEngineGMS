/// @description set_console(type,text);
/// @function set_console
/// @param type
/// @param text


//Adds an text to console line up ahead


//create an instance for showing console
if !instance_exists(obj_console)
{
	instance_create_depth(0,0,0,obj_console);
}


//add counter to an array
obj_console.console_counter++;
//add a text to new line
obj_console.console_text[0,obj_console.console_counter]=argument0;
switch (argument1)
{
	case 0: obj_console.console_text[1,obj_console.console_counter]=c_black; break;   //common text
	case 1: obj_console.console_text[1,obj_console.console_counter]=c_orange; break;	//attention text
	case 2: obj_console.console_text[1,obj_console.console_counter]=c_red; break;		//warning text
	default: obj_console.console_text[1,obj_console.console_counter]=c_black; break;   //common text
}
