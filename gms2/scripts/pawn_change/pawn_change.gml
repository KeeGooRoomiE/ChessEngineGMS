// Pawn change

if (global.mode = 0)
{
	if Piece_ID=0 
		{
		if Color = "Black"
			{
			if (ID<=63) and (ID>=56)
					{
					global.Prev_Cell=id
					choose_piece(0)
					global.mode = 1	
					}
			}
		if Color = "White"
			{
			if (ID<=7) and (ID>=0)
					{
					global.Prev_Cell=id
					choose_piece(1)
					global.mode = 1	
					}
			}
		}
}

