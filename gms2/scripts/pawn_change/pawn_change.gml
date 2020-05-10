// Pawn change


if Piece_ID=0 
	{
	if Color = "Black"
		{
		if (ID<=63) and (ID>=56)
				 {
				choose_piece(0)
				global.mode = 1	
				 }
		}
	if Color = "White"
		{
		if (ID<=7) and (ID>=0)
				 {
				choose_piece(1)
				global.mode = 1	
				 }
		}
	}

