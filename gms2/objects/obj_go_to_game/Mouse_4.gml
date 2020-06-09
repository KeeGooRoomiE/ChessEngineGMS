// Go to regolar game

global.Selected=obj_cell.ID;
global.King = 0
global.Gotogame = 0

with (obj_cell)
	{
	for (ID=0; ID>=63; ID++)
		{
		if Piece_ID = 5
			{
			global.King++
			}
		}
	}
	
if global.King = 2
	{
	global.Gotogame = 1
	}	

if (global.Gotogame = 1)
	{
	global.mode = 0
	instance_destroy(global.gtg)
	}
else
{
global.mode = -1
}