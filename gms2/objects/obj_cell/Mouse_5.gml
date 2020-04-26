//check what cell is represents our last cheking


//TODO
//set a varivation only for allowing a swap to king and a queen
//and dont allow to swap from grey to others

//[HOMEWORK] 
//check for moving if fist cell is grey and second cell is NOT grey


//with (global.Prev_Cell)
//{
	
//	//if cell is not empty - set it to empty
//	if (Color != "Grey")
//	{
//		if (other.Color != Color) 
//		{
//			Color = "Grey";
//			Piece_ID = -1;
//		}
//		else //if its a grey - get from last of it
//		{
//			//TODO: check for a pieces we swap 
//			//allowed only king and the rook
//			//check for an empty space between them
//			//and check for this pieces not moving before that moment
//			//ED: add a variable in Create for checking movement changing
			
//			if ((other.Piece_ID = 1 || other.Piece_ID = 5) and (Piece_ID = 1 || Piece_ID = 5)) 
//			{
//				Color=other.Color;
//				Piece_ID=other.Piece_ID;
//			}
//		}
//	}
//	other.Color=global.Cell_Color;
//	other.Piece_ID=global.Piece_Index;

	
//}


//global.Selected=ID;  //0... 63
//global.Prev_Cell=id; //0x000... 0x999


	////if cell is not empty - set it to empty
	//if (Color != "Grey")
	//{
	//	if (other.Color != Color) 
	//	{
	//		Color = "Grey";
	//		Piece_ID = -1;
	//	}
	//	else //if its a grey - get from last of it
	//	{
	//		//TODO: check for a pieces we swap 
	//		//allowed only king and the rook
	//		//check for an empty space between them
	//		//and check for this pieces not moving before that moment
	//		//ED: add a variable in Create for checking movement changing
			
	//		if ((other.Piece_ID = 1 || other.Piece_ID = 5) and (Piece_ID = 1 || Piece_ID = 5)) 
	//		{
	//			Color=other.Color;
	//			Piece_ID=other.Piece_ID;
	//		}
	//	}
	//}
	//other.Color=global.Cell_Color;
	//other.Piece_ID=global.Piece_Index;

take = false
	if (Color = "Grey" && global.Cell_Color != "Grey")
	{
		Color = global.Cell_Color;
		Piece_ID = global.Piece_Index;
		take= true
	}
	else if (Color = "White" && global.Cell_Color = "Black")
	{
		Color = global.Cell_Color;
		Piece_ID = global.Piece_Index;
		take=true
	}
	else if (Color = "Black" && global.Cell_Color = "White")
	{
		Color = global.Cell_Color;
		Piece_ID = global.Piece_Index;
		take=true
	}
	else 
	{}
	
if take = true
	{
	with (global.Prev_Cell)
	{
		Color="Grey";
		Piece_ID=-1;
	}
}

	
	
//	switch (Color)
//	{
	
//	case (Color = "Grey" && other.Color = "Grey"):
//		 break;
//	case (Color = "Grey" && other.Color != "Grey"):
//		 Color = other.Color;
//		 Piece_ID = other.Piece_ID;
//		 break;
//	case (Color != "Grey" && other.Color = "Grey"):
//		 break;
//	case (Color = other.Color):
//		 break;
	
//	};
//}
	
	