script_execute(s_controller_step_GML);

mouse_string=global.Selected;

//keyboard_check_released(vk_space) = !global.Debug_Mode;


//[HOMEWORK]

//1. Read about ini_open, ini_write_string\real, ini_read_real\string, ini_close OK
//2. Create an empty array inside of the obj_game OK
//2.1 Init an array for solve future problems
//3. Save moves between the lines inside of that array OK
//Example for a store moves will be like:  WhitePawnA1H3
//4. Fix en_passant() script
// Aprox. Solving: try to check right and left positions only if it has an instance with a piece at that position
//5. Set a sprite spr_move_info to the room and change this sprite according to the player