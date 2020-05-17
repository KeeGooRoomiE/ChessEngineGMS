draw_self()
x = -465
y = -550

X=x
Y=y
font_size=36

//draw_text(X,Y,"Player: "+string(global.player)); //player
draw_text_ext_transformed_color(X,Y+(16+font_size/2),string_hash_to_newline(string(global.player)),8*(font_size/2),1024,font_size/200,font_size/200,0,c_black,c_black,c_black,c_black,1)