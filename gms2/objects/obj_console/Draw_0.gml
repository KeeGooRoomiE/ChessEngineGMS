///Draw console

xx=obj_board.x-496+48;
yy=obj_board.y+497+8;


draw_set_halign(fa_left);
draw_set_font(fnt_default);
for (i=0; i<9; i++)
{
	draw_text_ext_transformed_color(xx,yy+(16+font_size/2)*i,string_hash_to_newline(string(console_text[console_counter-i])),8*(font_size/2),1024,font_size/200,font_size/200,0,c_black,c_black,c_black,c_black,init_alpha-(i*0.1))    
}

global.debug_console=true;
init_alpha=global.debug_console;