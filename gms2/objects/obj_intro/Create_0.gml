//create intro

global.AI = 0
global.mode = -1


global.PvP = instance_create(room_width/4,room_height/4,obj_mode)
global.PvP.image_index=0
global.PvP.ID = 1

global.PvPC = instance_create(room_width/4*3,room_height/4,obj_mode)
global.PvPC.image_index = 1
global.PvPC.ID = 2

global.Create = instance_create(room_width/4,room_height/2,obj_mode)
global.Create.image_index=2
global.Create.ID = 5

