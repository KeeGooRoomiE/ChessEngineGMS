///Debug Mouse Events showing

switch (global.mode)
{
#region

case -1:
#region
	
//draw_text_color(-465,-660,"scacco: " +string(global.scacco),c_red,c_red,c_red,c_red,1)
//draw_text_color(-465,-640,"player: " +string(global.player),c_red,c_red,c_red,c_red,1)
//draw_text_color(-465,-620,"this: " +string(global.Undo_Color),c_red,c_red,c_red,c_red,1)
//draw_text_color(-465,-600,"global: " +string(global.Cell_Color),c_red,c_red,c_red,c_red,1)
//draw_text_color(-465,-580,"mode: " +string(global.mode),c_red,c_red,c_red,c_red,1)

break;
#endregion

case 0:
#region


if global.player = 1
	{
	draw_sprite(player,0,-465,-660)
	}
else
	{
	draw_sprite(player,1,-465,-660)
	}
	
draw_text_color(-465,-660,"scacco: " +string(global.scacco),c_red,c_red,c_red,c_red,1)
draw_text_color(-465,-640,"player: " +string(global.player),c_red,c_red,c_red,c_red,1)
draw_text_color(-465,-620,"this: " +string(global.Undo_Color),c_red,c_red,c_red,c_red,1)
draw_text_color(-465,-600,"global: " +string(global.Cell_Color),c_red,c_red,c_red,c_red,1)
draw_text_color(-465,-580,"mode: " +string(global.mode),c_red,c_red,c_red,c_red,1)


break;
#endregion



#endregion
}






