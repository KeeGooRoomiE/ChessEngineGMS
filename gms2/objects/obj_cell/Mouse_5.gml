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
								Notaz="-"
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
							Moves++;
							Notaz=":"
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
							Notaz=":"
					
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
			
					//drowing_move(mouse_x,mouse_y, "Move: "+ string(Color) +string(Piece_ID) +string(global.Prev) +string(BoardPos),c_black,1)
			
					//set_console(string(Color)+" player moves "+string(global.Piece_Data[Piece_ID,1])+" from "+string(global.Prev) +" to " +string(BoardPos));

					obj_game.moves_count++;
					obj_game.moves_array[obj_game.moves_count]=set_console(string(global.Piece_Data[Piece_ID,1])+string(global.Prev)+string(Notaz)+string(BoardPos))

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
					obj_game.store_moves[obj_game.moves_count]="0-0-0"
					obj_game.moves_count++
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
					//store_moves[i]="0-0-0"
					//moves_counter=moves_counter+1
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
		if (Passant = 1)
			if (Color = "Grey")
			{
				Color = global.Cell_Color;
				Piece_ID = global.Piece_Index;
				Moves++;
				Notaz="-"
				with(global.Prev_Cell)
				{
				Color = "Grey"
				Piece_ID = -1
				}
				if (id = global.LeftPass)
					{
						with(global.Passant_BLeft)
						{
						Color = "Grey"
						Piece_ID = -1
						}
					}
				else
				{
					with(global.Passant_BRight)
					{
					Color = "Grey"
					Piece_ID = -1
					}
				}
			reset_cells_state()
			}
		#endregion
	with (obj_cell)
		{
		if Enpass != 0
			{
				Enpass++
			}
		}
	}
else
		// Pawn Change
		// Click on the selected pieces and destroy the others - than go back to global mode 0 - 
#region
	{
	if (global.mode = 1) and (ID>=64) and (ID<=71)
		{
			global.Cell_Color=Color;
			global.Piece_Index=Piece_ID;
			global.moveCell=id;
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
		
		store_moves[i]=set_console(+string(BoardPos)+string(global.Piece_Data[Piece_ID,1]))
		moves_counter=moves_counter+1
		
		}
		else
		{}
#endregion
	}