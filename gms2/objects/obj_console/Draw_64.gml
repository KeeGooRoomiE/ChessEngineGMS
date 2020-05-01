///Draw console


draw_set_halign(fa_left);
for (i=0; i<9; i++)
{
	draw_text_ext_colour(10,16*i+10,string_hash_to_newline(string(console_text[console_counter-i])),8,1024,c_black,c_black,c_black,c_black,init_alpha-(i*0.1))    
}
global.debug_console=keyboard_check(vk_control);
init_alpha=global.debug_console;



