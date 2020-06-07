//check where is king
// Black

if argument0= 0

with (obj_cell)
{
	if (Color == "Black")
	{
		if (Piece_ID==5) and (B_NotSafe = 1)
		{
			global.B_ScaccoKing=id
			global.W_ScaccoKing=noone
		}
	}
}


if argument0 = 1

with (obj_cell)
{
	if (Color == "White")
	{
		if (Piece_ID==5) and (W_NotSafe = 1)
		{
			global.B_ScaccoKing=noone
			global.W_ScaccoKing=id
		}
	}
}

