///@descr Move piece if it allowed

switch (global.mode)
{
	
case -1:
#region

if global.take = 1
	{
	global.Selected=ID;
	global.Change_Color = Color;
	global.Change_ID = Piece_ID;
	Color = global.Cell_Color;
	Piece_ID = global.Piece_Index;
	global.take = 0
	with (global.Prev)
		{
			Color = global.Change_Color
			Piece_ID = global.Change_ID
		}
	}


break;
#endregion

case 0: // Regolar Game
#region

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
									Action = ":"
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
									Action = ":"			
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
									if Enpass = 1
									{
										Enpass++
									}
								}

						global.Next = BoardPos
			
						//drowing_move(mouse_x,mouse_y, "Move: "+ string(Color) +string(Piece_ID) +string(global.Prev) +string(BoardPos),c_black,1)

						set_console(+string(global.Piece_Data[Piece_ID,1])+string(global.Prev)+string(Action) +string(BoardPos));
						reset_cells_state();
						}
				}

			#endregion

			//Castling Black Left
			#region
			if Castling_BLeft = 1
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
						set_console("0-0-0")
					}
				}
			#endregion
			
			//Castling Black Right
			#region
			if Castling_BRight = 1
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
						set_console("0-0")
					}
				}
			#endregion

			//Castling White Left
			#region
			if Castling_WLeft = 1
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
						set_console("0-0-0")
					}
				}
			#endregion
			
			//Castling White Right
			#region
			if Castling_WRight = 1
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
						set_console("0-0")
					}
				}
			#endregion
		
			//En Passant
			#region
			if (Passant = 1)
			{
				Piece_ID = global.Piece_Index
				Color = global.Cell_Color
				with (global.Prev_Cell)
				{
				Piece_ID = -1
				Color = "Grey"
				}
				if (id = global.LeftPass)
					{
					with (global.Passant_BLeft)
						{
						Piece_ID = -1
						Color = "Grey"
						}
					}
					if (id = global.RightPass)
					{
					with (global.Passant_BRight)
						{
						Piece_ID = -1
						Color = "Grey"
						}	
					}
			global.player = global.player *-1
			}

			#endregion
			
			//En Passant Enpass variable ++
			#region
			with (obj_cell)
			{
				if Enpass = 1
					{
						Enpass++
					}
			}
			#endregion
			
break;
#endregion

case 1: // Pawn Change
#region
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
break;
#endregion

case 2: // Scacco
#region		

			// Set Undo Variables
			#region
			global.Selected=ID;
			global.Undo_Color = Color
			global.Undo_ID = Piece_ID
			global.Undo_Cell = id
			#endregion

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
						set_console("mosso in empty")
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
								Action = ":"
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
								Action = ":"
					
								}
							}
		
						if (take = true)
						{
							with (global.Prev_Cell)
							{
								Color="Grey";
								Piece_ID=-1;
								image_index = 0;
								Moves++;
								set_console("mosso e preso")
								//global.player = global.player*-1
							}
						
						global.Next = BoardPos
						}
			}	
			//reset_cells_state();

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
						set_console("0-0-0")
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
						set_console("0-0-0")
					}
				}
			#endregion
		
			//En Passant
			#region
			if (Passant = 1)
			{
				Piece_ID = global.Piece_Index
				Color = global.Cell_Color
				with (global.Prev_Cell)
				{
				Piece_ID = -1
				Color = "Grey"
				}
				if (id = global.LeftPass)
					{
					with (global.Passant_BLeft)
						{
						Piece_ID = -1
						Color = "Grey"
						}
					}
					if (id = global.RightPass)
					{
					with (global.Passant_BRight)
						{
						Piece_ID = -1
						Color = "Grey"
						}	
					}
			}

			#endregion
			
			reset_cells_state()
			
			//Check king out of scacco
			#region
			
				//Black
				#region	
				

				with (obj_cell)
				{
					knight_move_check(1)
					pawn_move_check(1)
					rook_move_check(1)
					bishop_move_check(1)
					queen_move_check(1)
					king_move_check(1)
				}
				if (global.B_ScaccoKing != noone)
				{
					with (global.B_ScaccoKing)
					{	
						if (global.B_ScaccoKing.B_NotSafe = 1)
						{			
							BOutOfScacco=false;
							set_console("BOOS false: "+string(BOutOfScacco));
							Undo_Scacco(0)							
						}
						else
						{									
							global.scacco=false;
							BOutOfScacco=true;
							set_console("BOOS true"+string(BOutOfScacco));
							global.B_ScaccoKing=noone;
							Undo_Scacco(0)
						}
					}
				}
				else
				{
					set_console("404 BKing not found");
				}
			
				#endregion
				
				//White
				#region
				
				if (global.W_ScaccoKing != noone)
				{
					with(global.W_ScaccoKing)
					{
						if (W_NotSafe=1)
						{
							set_console(+string(global.W_ScaccoKing.Piece_ID)+string(global.W_ScaccoKing.Color))
							WOutOfScacco=false;
							set_console("WOOS false"+string(WOutOfScacco));
							Undo_Scacco(1)
						}
						else
						{
							set_console(+string(global.W_ScaccoKing.Piece_ID)+string(global.W_ScaccoKing.Color))
							global.scacco=false;
							WOutOfScacco=true;
							set_console("WOOS true"+string(WOutOfScacco));
							global.W_ScaccoKing=noone;
							Undo_Scacco(1)
						}
					}
				}
				else
				{
					set_console("404 WKing not found");
				}
				#endregion

			#endregion
			
break;			
#endregion
}
