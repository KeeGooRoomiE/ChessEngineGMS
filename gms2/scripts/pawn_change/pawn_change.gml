// Pawn change

if Piece_ID=0 
	{
	if Color = "Black"
		{
		if (ID<=63) and (ID>=56)
				 {
				 Piece_ID = 4
				 }
		}
	if Color = "White"
		{
		if (ID<=7) and (ID>=0)
				 {
				 Piece_ID = 4
				 }
		}
	}

