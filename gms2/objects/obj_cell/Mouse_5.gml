///@descr Move piece if it allowed

if global.mode = 0
	{

	global.Selected=ID;

		//Move and Take
		#region

		if (CanMove or CanTake)
			{
				take = false
					if (Color = "Grey" && global.Cell_Color != "Grey")
					{
						if CanMove = true
							{
								Color = global.Cell_Color;
								Piece_ID = global.Piece_Index;
								take=true
								image_index = 0
								Moves++;
							}
					en_passant()
					}
					else if (Color = "White" && global.Cell_Color = "Black")
						{
						if CanTake = true
							{
							Color = global.Cell_Color;
							Piece_ID = global.Piece_Index;
							take=true
							image_index = 0
							Moves++;
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
							Moves++;
					
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
			
					drowing_move(mouse_x,mouse_y, "Move: "+ string(Color) +string(Piece_ID) +string(global.Prev) +string(BoardPos),c_black,1)
			
<<<<<<< HEAD
<<<<<<< HEAD
					set_console(string(Color)+" player moves "+string(global.Piece_Data[Piece_ID,1])+" from "+string(global.Prev) +" to " +string(BoardPos));
=======
			set_console(0,string(Color)+" player moves "+string(global.Piece_Data[Piece_ID,1])+" from "+string(global.Prev) +" to " +string(BoardPos));
>>>>>>> Adding new sprites
=======
			set_console(string(Color)+" player moves "+string(global.Piece_Data[Piece_ID,1])+" from "+string(global.Prev) +" to " +string(BoardPos));
>>>>>>> Revert "Adding new sprites"
			
					reset_cells_state();
			
					}

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
		
		//En Passant
		#region
		//if (Passant = 1)
		//	{
		//	self.Color = "White"
		//	self.Piece_ID = 0
		//	instance_destroy(global.Prev_Pass)
		//	instance_destroy(global.Passant_W_left)
		//	instance_destroy(global.Passant_W_right)
		//	}
			
		#endregion

	}
else
		// Pawn Change
#region
	{
	if global.mode = 1
		{
			global.Cell_Color=Color;
			global.Piece_Index=Piece_ID;
			with (global.Prev_Cell)
				{
				Color = global.Cell_Color
				Piece_ID = global.Piece_Index
				}
		instance_destroy(global.temp1)
		instance_destroy(global.temp2)
		instance_destroy(global.temp3)
		instance_destroy(global.temp4)
		global.mode = 0
		}
#endregion
	}