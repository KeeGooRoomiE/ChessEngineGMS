///Draw console

//xx=obj_board.x-496+48;
//yy=obj_board.y+497+8;

<<<<<<< HEAD
//draw_set_halign(fa_left);
//for (i=0; i<9; i++)
//{
//	draw_text_ext_colour(xx,yy+16*i,string_hash_to_newline(string(console_text[console_counter-i])),8,1024,c_black,c_black,c_black,c_black,init_alpha-(i*0.1))    
//}
=======
draw_set_halign(fa_left);
for (i=0; i<9; i++)
{
	draw_text_ext_colour(xx,yy+16*i,string_hash_to_newline(string(console_text[0,console_counter-i])),8,1024,console_text[1,console_counter-i],console_text[1,console_counter-i],console_text[1,console_counter-i],console_text[1,console_counter-i],init_alpha-(i*0.1))    
}
>>>>>>> Adding new sprites


//global.debug_console=true;
//init_alpha=global.debug_console;