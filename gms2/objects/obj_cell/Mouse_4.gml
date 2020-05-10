///@descr Select this cell


if global.mode = 0
{

if global.player = 1
#region
	{
	if Color = "White"
		{

			global.Selected=ID;

			global.Cell_Color=Color;

			global.Piece_Index=Piece_ID;
			global.Prev_Cell=id;

			global.move=true
			
			global.Prev = BoardPos
			
			global.cast1c = id
			global.cast1d = id

	
			reset_cells_state();

			if (Piece_ID = 0)
				{
					pawn_move_check(0);
				}
			if (Piece_ID = 1)
				{
					rook_move_check(0);
				}	
			if (Piece_ID = 3)
				{
					bishop_move_check(0);
				}
			if (Piece_ID = 4)
				{
					queen_move_check(0);
				}
			if (Piece_ID = 5)
				{
					king_move_check(0);
				}	
			if (Piece_ID = 2)
				{
					knight_move_check(0);
				}
		}
	}
#endregion

if global.player = -1
#region
	{
	if Color = "Black"
		{

			global.Selected=ID;

			global.Cell_Color=Color;

			global.Piece_Index=Piece_ID;
			global.Prev_Cell=id;

			global.move=true
			
			global.Prev = BoardPos
			
			global.cast1a = id
			global.cast1b = id

	
			reset_cells_state();

			if (Piece_ID = 0)
				{
					pawn_move_check(0);
				}
			if (Piece_ID = 1)
				{
					rook_move_check(0);
				}	
			if (Piece_ID = 3)
				{
					bishop_move_check(0);
				}
			if (Piece_ID = 4)
				{
					queen_move_check(0);
				}
			if (Piece_ID = 5)
				{
					king_move_check(0);
				}	
			if (Piece_ID = 2)
				{
					knight_move_check(0);
				}
		}
	}
#endregion

}

else
	{
	copy()	
	}