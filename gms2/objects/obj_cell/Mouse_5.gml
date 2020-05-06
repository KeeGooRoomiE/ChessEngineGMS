///@descr Move piece if it allowed

global.Selected=ID;


//Move and Take
#region

if (CanMove or CanTake)

	{
		take = false

		if (global.move=true)
		{

			if (Color = "Grey" && global.Cell_Color != "Grey")
			{
				if CanMove = true
					{
						Color = global.Cell_Color;
						Piece_ID = global.Piece_Index;
						take=true
						image_index = 0
					}
				
			}
			else if (Color = "White" && global.Cell_Color = "Black")
				{
				if CanTake = true
					{
					Color = global.Cell_Color;
					Piece_ID = global.Piece_Index;
					take=true
					image_index = 0
					}
				}
			else if (Color = "Black" && global.Cell_Color = "White")
				{
				if CanTake = true
					{	
					Color = global.Cell_Color;
					Piece_ID = global.Piece_Index;
					take=true
					image_index = 0
					}
				}
		
			if (take = true)
			{
				with (global.Prev_Cell)
				{
					Color="Grey";
					Piece_ID=-1;
					image_index = 0;
					global.player = global.player*-1
					Moves++;
				}
			global.Next = BoardPos
			drowing_move()
			
			}
			global.move=false
		}
		reset_cells_state();
	}
#endregion

//Castling Black
#region
if Castling_B
	{
	if (Piece_ID = 5 && Color = "Black")
		{
			with (global.Prev_Cell)
				{
				Color="Grey";
				Piece_ID=-1;
				image_index = 0;
				Moves++;
				}	

			with (global.cast1a)
				{
				Color= "Black";
				Piece_ID = 5;
				Moves++;
				}
			with (global.cast1b)
				{
				Color= "Black";
				Piece_ID = 1;
				Moves++;
				
			Color = "Grey"
			Piece_ID = -1
			Moves++
			global.Castling_B_done = 1
			global.player = global.player*-1
		}
	}
	}
#endregion

//Castling White
#region
if Castling_W
	{
	if (Piece_ID = 5 && Color = "White")
		{
			with (global.Prev_Cell)
				{
				Color="Grey";
				Piece_ID=-1;
				image_index = 0;
				Moves++;
				}	

			with (global.cast1c)
				{
				Color= "White";
				Piece_ID = 5;
				}
			with (global.cast1d)
				{
				Color= "White";
				Piece_ID = 1;
				}
			Color = "Grey"
			Piece_ID = -1
			Moves++;
			global.Castling_W_done = 1
			global.player = global.player*-1
		}
	}
#endregion