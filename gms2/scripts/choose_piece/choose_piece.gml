if argument0 = 0
{
	reset_cells_state()
	
	BoardPiece5 = instance_create_layer(-441,440,"Pieces",obj_cell)
	BoardPiece5.ID = 64
	BoardPiece5.Piece_ID=1
	BoardPiece5.Color="Black"
	BoardPiece5.CanTake=true

	BoardPiece6 = instance_create_layer(-331,440,"Pieces",obj_cell)
	BoardPiece6.ID = 65
	BoardPiece6.Piece_ID=2
	BoardPiece6.Color="Black"
	BoardPiece6.CanTake=true

	BoardPiece7 = instance_create_layer(-221,440,"Pieces",obj_cell)
	BoardPiece7.ID = 66
	BoardPiece7.Piece_ID=3
	BoardPiece7.Color="Black"
	BoardPiece7.CanTake=true

	BoardPiece8 = instance_create_layer(-111,440,"Pieces",obj_cell)
	BoardPiece8.ID = 67
	BoardPiece8.Piece_ID=4
	BoardPiece8.Color="Black"
	BoardPiece8.CanTake=true

}



if argument0 = 1
{
	reset_cells_state()
	
	BoardPiece1 = instance_create_layer(-441,-551,"Pieces",obj_cell)
	BoardPiece1.ID = 68
	BoardPiece1.Piece_ID=1
	BoardPiece1.Color="White"
	BoardPiece1.CanTake=true

	BoardPiece2 = instance_create_layer(-331,-551,"Pieces",obj_cell)
	BoardPiece2.ID = 69
	BoardPiece2.Piece_ID=2
	BoardPiece2.Color="White"
	BoardPiece2.CanTake=true

	BoardPiece3 = instance_create_layer(-221,-551,"Pieces",obj_cell)
	BoardPiece3.ID = 70
	BoardPiece3.Piece_ID=3
	BoardPiece3.Color="White"
	BoardPiece3.CanTake=true

	BoardPiece4 = instance_create_layer(-111,-551,"Pieces",obj_cell)
	BoardPiece4.ID = 71
	BoardPiece4.Piece_ID=4
	BoardPiece4.Color="White"
	BoardPiece4.CanTake=true

}
