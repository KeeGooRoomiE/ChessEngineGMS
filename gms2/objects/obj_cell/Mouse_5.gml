///@descr Move piece if it allowed

switch (global.mode)
{
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
		
			global.Selected=ID;
			global.Undo_Color = Color
			global.Undo_ID = Piece_ID
			global.Undo_Cell = id

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
								Moves++;
								//global.player = global.player*-1
							}
						
						global.Next = BoardPos
						}
						
						//Check black king to sucsessful out of scacco
						
						if (global.B_ScaccoKing != noone)
						{
							with (global.B_ScaccoKing)
							{
								if (B_NotSafe = 1)
								{
									
									BOutOfScacco=false;
									set_console("BOOS false: "+string(BOutOfScacco));
									Undo_Scacco()
									
								}
								else
								{
									set_console(+string(global.B_ScaccoKing.Piece_ID)+string(global.B_ScaccoKing.Color))
									global.scacco=false;
									BOutOfScacco=true;
									set_console("BOOS true"+string(BOutOfScacco));
									global.B_ScaccoKing=noone;
									Undo_Scacco()
								}
							}
						}
						else
						{
							set_console("404 BKing not found");
						}
						
						//For the white too ^(upper code)
						if (global.W_ScaccoKing != noone)
						{
							with(global.W_ScaccoKing)
							{
								if (W_NotSafe=1)
								{
									set_console(+string(global.W_ScaccoKing.Piece_ID)+string(global.W_ScaccoKing.Color))
									WOutOfScacco=false;
									set_console("WOOS false"+string(WOutOfScacco));
									Undo_Scacco()
								}
								else
								{
									set_console(+string(global.W_ScaccoKing.Piece_ID)+string(global.W_ScaccoKing.Color))
									global.scacco=false;
									WOutOfScacco=true;
									set_console("WOOS true"+string(WOutOfScacco));
									global.W_ScaccoKing=noone;
									Undo_Scacco()
								}
							}
						}
						else
						{
							set_console("404 WKing not found");
						}

						//set_console(+string(global.Piece_Data[Piece_ID,1])+string(global.Prev)+string(Action) +string(BoardPos));
			
						reset_cells_state();
			
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
			
						
			// if still scacco than Undo
			
			//TODO: GDFix
			#region
			
			//if (global.scacco = 1)
			//{
			//	set_console("here we go")
			//	//undo the move
			//	if (BOutOfScacco=false or WOutOfScacco=false)
			//	{
			//		with (global.Undo_Cell)
			//		{
			//			Color = global.Undo_Color
			//			Piece_ID = global.Undo_ID
			//		}
			//		with (global.Prev_Cell)
			//		{
			//			Color = global.Cell_Color;
			//			Piece_ID = global.Piece_Index;
			//		}
				
			//	set_console("Revert last move");
				
			//	global.player = global.player;
				
			//	}
			//	else
			//	{
			//		global.scacco=0;
			//		global.mode=0;
			//		global.player= - global.player;
			//	}
			//}
			//else
			//{
			//	//setting to common moves
			//	global.mode = 0
			//	global.player = -global.player;
			//	//TODO: Delete doublecheck
			//	set_console("You re out of scacco")
			//}
			//#endregion


			
			//Check if still scacco
			#region
			
			//with (obj_cell)
			//{

			//	if (Color = "Black")
			//	{
			//		if (W_NotSafe=1 and Piece_ID=5)
			//		{
			//			global.scacco = 1
			//	    }
			//	    else
			//	    {
			//			global.scacco = 0;
			//			global.mode = 0
			//	    }
			//	}
			//	else
			//	{
			//		if (Color = "White")
			//	    {
			//			if (B_NotSafe=1 and Piece_ID=5)
			//	        {
			//				global.scacco = 1;	
			//			}
			//	     }
			//	     else
			//		{
			//	        global.scacco = 0;
			//			global.mode = 0
			//	    }
			//	}
			//}
			#endregion
			
break;
#endregion
#endregion
}