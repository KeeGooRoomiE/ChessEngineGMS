///@descr Move piece if it allowed

global.Selected=ID;

if (CanMove or CanTake)
{
	take = false

	if (global.move=true)
	{

		if (Color = "Grey" && global.Cell_Color != "Grey")
		{
			Color = global.Cell_Color;
			Piece_ID = global.Piece_Index;
			take= true
			image_index = 0
		}
		else if (Color = "White" && global.Cell_Color = "Black")
		{
			Color = global.Cell_Color;
			Piece_ID = global.Piece_Index;
			take=true
			image_index = 0
		}
		else if (Color = "Black" && global.Cell_Color = "White")
		{
			Color = global.Cell_Color;
			Piece_ID = global.Piece_Index;
			take=true
			image_index = 0
		}
		
		if (take = true)
		{
			with (global.Prev_Cell)
			{
				Color="Grey";
				Piece_ID=-1;
				image_index = 0;
				Moves++;
			}
			
			Moves++;
		}
	
		global.move=false
	}
	
	reset_cells_state();
}

	
	