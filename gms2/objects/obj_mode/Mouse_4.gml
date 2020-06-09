// choose mode

if ID = 1
{
	global.AI = 0
	global.mode = 0
	room_goto(room0)
}

if ID = 2
{
	global.AI = 1
	global.mode = 0
	room_goto(room0)
}

if ID = 5
{
	global.AI = 0
	global.mode = -1
	instance_destroy(global.Create)
	instance_destroy(global.PvP)
	instance_destroy(global.PvPC)
	instance_create_layer(x-445,y-445,"Board",obj_board);
	instance_create_layer(x-445,y-445,"Board",o_cam);
	global.gtg = instance_create_layer(x-700,y-1650,"Board",obj_go_to_game);	
	
}