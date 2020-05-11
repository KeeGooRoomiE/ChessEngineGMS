/// @description set_console(text);
/// @function set_console
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
obj_console.console_text[obj_console.console_counter]=argument0;