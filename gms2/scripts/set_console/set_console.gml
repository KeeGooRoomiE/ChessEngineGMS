/// @description set_console(text);
/// @function set_console
/// @param text

//Adds an text to console line up ahead

if !instance_exists(obj_console)
{
	instance_create_depth(0,0,0,obj_console);
}

obj_console.console_counter++;
obj_console.console_text[obj_console.console_counter]=argument0;
