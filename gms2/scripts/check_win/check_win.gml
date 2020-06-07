// Check Scacco Matto

// Check if Black Win
#region
if argument0=0

if global.scacco = 1
{
	with (obj_cell) 
	{
		for (ID=0; ID=63; ID++) // Check all the position where the Black can move
		{
			if Color != "Black"
			{
				if W_NotSafe = 1
				{
					global.check_color = Color
					global.check_ID = Piece_ID
					Color = "Black"
					Piece_ID = 1
					with (obj_cell)
						{
							knight_move_check(1)
							pawn_move_check(1)
							rook_move_check(1)
							bishop_move_check(1)
							queen_move_check(1)
							king_move_check(1)
						}
					if global.scacco = 0
						{
							global.scaccomatto = 1
						}
					else
					{
						Color = global.check_color
						Piece_ID = global.check_ID
					}
				}
			}
		}		
	}
	//if global.scaccomatto = 0
	//{
	//	set_console("Black Win the Game!!!");
	//}		
}
	

#endregion

// Check if White Win
#region
if argument0=1

if global.scacco = 1
{
	with (obj_cell) // Check if Black Win
	{
		for (ID=0; ID=63; ID++)
		{
			if Color != "White"
			{
				if B_NotSafe = 1
				{
					global.check_color = Color
					global.check_ID = Piece_ID
					Color = "White"
					Piece_ID = 1
					with (obj_cell)
						{
							knight_move_check(1)
							pawn_move_check(1)
							rook_move_check(1)
							bishop_move_check(1)
							queen_move_check(1)
							king_move_check(1)
						}
					if global.scacco = 0
						{
							global.scaccomatto = 1
						}
					else
					{
						Color = global.check_color
						Piece_ID = global.check_ID
					}
				}
			}
		}		
	}
	//if global.scaccomatto = 0
	//{
	//	set_console("White Win the Game!!!");
	//}
}

#endregion
