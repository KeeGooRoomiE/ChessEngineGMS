///@descr Move piece if it allowed

global.Selected=ID;

///[HOMEWORK] 

//1. fix global.Prev inside of set_console OK
//2. go to obj_console and add a new argument - this argument will set color to text we will draw.
//3. reset arguments if drowing_move from internal to external
//4. Optional.fix castling.

//Move and Take
#region

if (CanMove or CanTake)

	{
		take = false

		//if (global.move=true)
		//{

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
			
			//drowing_move(BoardPos)
			
			set_console(string(Color)+" player moves "+string(global.Piece_Data[Piece_ID,1])+" from "+string(global.Prev) +" to " +string(BoardPos));
			
			reset_cells_state();
			
			}
			//global.move=false
		//}
		//reset_cells_state();
	}
#endregion

//Castling Black
#region
if Castling_B = 1
	{
	if (Piece_ID = 5 && Color = "Black")
		{
			Castling_B = 0
			Color = "Grey"
			Piece_ID = -1
			Moves++
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
				}
			global.Castling_B_done = 1
			global.player = global.player*-1
		}
	}
#endregion

//Castling White
#region
if Castling_W = 1
	{
	if (Piece_ID = 5 && Color = "White")
		{
			Castling_W = 0
			Color = "Grey"
			Piece_ID = -1
			Moves++;
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
			global.Castling_W_done = 1
			global.player = global.player*-1
		}
	}
#endregion