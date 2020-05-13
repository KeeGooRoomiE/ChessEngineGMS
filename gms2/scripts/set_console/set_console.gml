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


//Store data in output file every call

ini_open("savedata.ini");
ini_write_string("console", "line"+string(obj_console.console_counter), obj_console.console_text[obj_console.console_counter] );

//If we call set_console(console_text_we_put_inside_of_set_console);
//it will save inside of savedata.ini this line:

//console.20 = console_text_we_put_inside_of_set_console;

//console_text[console_counter] = ini_read_real("save1", "Score", 0 );
ini_close();