///Init board pieces and vars
    
    //If the winning text is anything other than "", it will be shown to the player.
    var P=0;
    var X=x;
    var Y=y;
	var CharForCell="A";
	var NumForCell=0;
	var Cell_Position = "";

	//check for a proper setting inside of the cell by using a s_output_mesage
	for (i=0; i<8; i++) //cell collumns 
	{
		for (j=0; j<8; j++) // cell rows
		{
			X=x+j*111;	//100+0*111 = 100 //100+1*111 = 211
			Y=y+i*111;	//100+0*111 = 100 //100+1*111 = 211
			
			//0
			//
			//
			
			switch (i) 
			{
				case 0: CharForCell="A"; break;
				case 1: CharForCell="B"; break;
				case 2: CharForCell="C"; break;
				case 3: CharForCell="D"; break;
				case 4: CharForCell="E"; break;
				case 5: CharForCell="F"; break;
				case 6: CharForCell="G"; break;
				case 7: CharForCell="H"; break;
			};
			
			NumForCell=j+1;
			
			Cell_Position = CharForCell+string(NumForCell);  //A1... H8
			
			BoardPiece = instance_create_layer(X,Y,"Pieces",obj_cell);
			
			BoardPiece.ID = P
			
			BoardPiece.BoardPos = Cell_Position;
			s_output_message(string(BoardPiece.BoardPos));
			
			switch (BoardPiece.ID)
		    {
				 case 0:    BoardPiece.Piece_ID=1;
		                    BoardPiece.Color="Black";
		                    break;                       //Create black Rooks
		         case 1:    BoardPiece.Piece_ID=2;
		                    BoardPiece.Color="Black";
		                    break;                        //Create black knight
		         case 2:    BoardPiece.Piece_ID=3;
		                    BoardPiece.Color="Black";    //Create black bishop
		                    break; 
		         case 3:    BoardPiece.Piece_ID=4;
		                    BoardPiece.Color="Black";    //Crate black king
		                    break;  
		         case 4:    BoardPiece.Piece_ID=5;
		                    BoardPiece.Color="Black";    //Crate black queen
		                    break; 
		         case 5:    BoardPiece.Piece_ID=3;
		                    BoardPiece.Color="Black";    //Create black bishop
		                    break;
		         case 6:    BoardPiece.Piece_ID=2;
		                    BoardPiece.Color="Black";    //Create black knight
		                    break;   
		         case 7:    BoardPiece.Piece_ID=1;
		                    BoardPiece.Color="Black";
		                    break;                        //Create black Rooks
		         case 8:    BoardPiece.Piece_ID=0;        //Create pawns
							BoardPiece.Color="Black";
		         case 9:    BoardPiece.Piece_ID=0;        //from there
						    BoardPiece.Color="Black";
		         case 10:   BoardPiece.Piece_ID=0;
				 			BoardPiece.Color="Black";
		         case 11:   BoardPiece.Piece_ID=0;
				 			BoardPiece.Color="Black";
		         case 12:   BoardPiece.Piece_ID=0;
				 			BoardPiece.Color="Black";
		         case 13:   BoardPiece.Piece_ID=0;
				 			BoardPiece.Color="Black";
		         case 14:   BoardPiece.Piece_ID=0;       //to there
				 			BoardPiece.Color="Black";
		         case 15:   BoardPiece.Piece_ID=0; 
				 			BoardPiece.Color="Black";
							break;
		         case 48:   BoardPiece.Piece_ID=0;
		                    BoardPiece.Colour="White";        //Create pawns
		         case 49:   BoardPiece.Piece_ID=0;
		                    BoardPiece.Color="White";        //from there
		         case 50:   BoardPiece.Piece_ID=0;
		                    BoardPiece.Color="White";
		         case 51:   BoardPiece.Piece_ID=0;
		                    BoardPiece.Color="White";
		         case 52:   BoardPiece.Piece_ID=0;
		                    BoardPiece.Color="White";
		         case 53:   BoardPiece.Piece_ID=0;
		                    BoardPiece.Color="White";
		         case 54:   BoardPiece.Piece_ID=0;
		                    BoardPiece.Color="White";       //to there
		         case 55:   BoardPiece.Piece_ID=0;
		                    BoardPiece.Color="White"; 
		                    break;
		         case 56:   BoardPiece.Piece_ID=1;
		                    BoardPiece.Color="White";  //Create white rook
		                    break;
		         case 57:   BoardPiece.Piece_ID=2;
		                    BoardPiece.Color="White";
		                    break;                        //Create white knight
		         case 58:   BoardPiece.Piece_ID=3;
		                    BoardPiece.Color="White";    //Create white bishop
		                    break;
		         case 59:   BoardPiece.Piece_ID=4;
		                    BoardPiece.Color="White";    //Crate white king
		                    break;  
		         case 60:   BoardPiece.Piece_ID=5;
		                    BoardPiece.Color="White";    //Crate white queen
		                    break; 
		         case 61:   BoardPiece.Piece_ID=3;
		                    BoardPiece.Color="White";    //Create white bishop
		                    break;
		         case 62:   BoardPiece.Piece_ID=2;
		                    BoardPiece.Color="White";    //Create white knight
		                    break;   
		         case 63:   BoardPiece.Piece_ID=1;
		                    BoardPiece.Color="White";
		                    break;                        //Create white Rooks 
				 default:    BoardPiece.Piece_ID = -1;
							BoardPiece.Color = "Grey";
							break;
			}
			P++;
			X=i*111;
			Y=j*111;
		};
	}
    
