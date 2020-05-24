//create intro

PvP = instance_create(room_width/4,room_height/4,obj_mode)
PvP.image_index=0
PvP.ID = 1

PvPC = instance_create(room_width/4*3,room_height/4,obj_mode)
PvPC.image_index = 1
PvPC.ID = 2

global.AI = 0