/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 31B3A22F
/// @DnDArgument : "code" "///Draw console$(13_10)$(13_10)xx=obj_board.x-496;$(13_10)yy=obj_board.y+497+8;$(13_10)$(13_10)draw_set_halign(fa_left);$(13_10)for (i=0; i<9; i++)$(13_10){$(13_10)	draw_text_ext_colour(xx,yy+16*i,string_hash_to_newline(string(console_text[console_counter-i])),8,1024,c_black,c_black,c_black,c_black,init_alpha-(i*0.1))    $(13_10)}$(13_10)$(13_10)$(13_10)global.debug_console=true;$(13_10)init_alpha=global.debug_console;$(13_10)$(13_10)$(13_10)$(13_10)"
///Draw console

xx=obj_board.x-496;
yy=obj_board.y+497+8;

draw_set_halign(fa_left);
for (i=0; i<9; i++)
{
	draw_text_ext_colour(xx,yy+16*i,string_hash_to_newline(string(console_text[console_counter-i])),8,1024,c_black,c_black,c_black,c_black,init_alpha-(i*0.1))    
}


global.debug_console=true;
init_alpha=global.debug_console;