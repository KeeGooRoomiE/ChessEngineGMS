///Init board pieces and vars

// Standar Setup
#region
    
    var P=0;
    var X=x;
    var Y=y;
	var CharForCell="A";
	var NumForCell=0;
	var Cell_Position = "";

	//check for a proper setting inside of the cell by using a s_output_message
	for (i=0; i<12; i++) //cell collumns 
	{
		for (j=0; j<8; j++) // cell rows
		{
			X=x+j*111;	//100+0*111 = 100 //100+1*111 = 211
			Y=y+i*111;	//100+0*111 = 100 //100+1*111 = 211
			
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
				case 8: CharForCell="I"; break;
				case 9: CharForCell="L"; break;
				case 10: CharForCell="M"; break;
				case 11: CharForCell="N"; break;
				
			};
			
			NumForCell=j+1;
			
			Cell_Position = CharForCell+string(NumForCell);  //A1... H8
			
			BoardPiece = instance_create_layer(X,Y,"Pieces",obj_cell);
			
			BoardPiece.ID = P
			
			BoardPiece.BoardPos = Cell_Position;
			s_output_message(string(BoardPiece.BoardPos));
			
			switch (BoardPiece.ID)
		    {
				 case 0:    BoardPiece.Piece_ID=-1;
		                    BoardPiece.Color="Grey";
							BoardPiece.ID = 0
		                    break;                       //Create black Rooks
		         case 1:    BoardPiece.Piece_ID=-1;
		                    BoardPiece.Color="Grey";
							BoardPiece.ID = 1
		                    break;                        //Create black knight
		         case 2:    BoardPiece.Piece_ID=-1;
		                    BoardPiece.Color="Grey";    //Create black bishop
		                    BoardPiece.ID = 2
							break; 
		         case 3:    BoardPiece.Piece_ID=-1;
		                    BoardPiece.Color="Grey";    //Crate black king
		                    break;  
		         case 4:    BoardPiece.Piece_ID=-1;
		                    BoardPiece.Color="Grey";    //Crate black queen
		                    break; 
		         case 5:    BoardPiece.Piece_ID=-1;
		                    BoardPiece.Color="Grey";    //Create black bishop
		                    break;
		         case 6:    BoardPiece.Piece_ID=-1;
		                    BoardPiece.Color="Grey";    //Create black knight
		                    break;   
		         case 7:    BoardPiece.Piece_ID=-1;
		                    BoardPiece.Color="Grey";
		                    break;                        //Create black Rooks
		         case 8:    BoardPiece.Piece_ID=-1;        //Create pawns
							BoardPiece.Color="Grey";
		         case 9:    BoardPiece.Piece_ID=-1;        //from there
						    BoardPiece.Color="Grey";
		         case 10:   BoardPiece.Piece_ID=-1;
				 			BoardPiece.Color="Grey";
		         case 11:   BoardPiece.Piece_ID=-1;
				 			BoardPiece.Color="Grey";
		         case 12:   BoardPiece.Piece_ID=-1;
				 			BoardPiece.Color="Grey";
		         case 13:   BoardPiece.Piece_ID=-1;
				 			BoardPiece.Color="Grey";
		         case 14:   BoardPiece.Piece_ID=-1;       //to there
				 			BoardPiece.Color="Grey";
		         case 15:   BoardPiece.Piece_ID=-1; 
				 			BoardPiece.Color="Grey";
							break;
		         case 48:   BoardPiece.Piece_ID=-1;
		                    BoardPiece.Colour="Grey";        //Create pawns
		         case 49:   BoardPiece.Piece_ID=-1;
		                    BoardPiece.Color="Grey";        //from there
		         case 50:   BoardPiece.Piece_ID=-1;
		                    BoardPiece.Color="Grey";
		         case 51:   BoardPiece.Piece_ID=-1;
		                    BoardPiece.Color="Grey";
		         case 52:   BoardPiece.Piece_ID=-1;
		                    BoardPiece.Color="Grey";
		         case 53:   BoardPiece.Piece_ID=-1;
		                    BoardPiece.Color="Grey";
		         case 54:   BoardPiece.Piece_ID=-1;
		                    BoardPiece.Color="Grey";       //to there
		         case 55:   BoardPiece.Piece_ID=-1;
		                    BoardPiece.Color="Grey"; 
		                    break;
		         case 56:   BoardPiece.Piece_ID=-1;
		                    BoardPiece.Color="Grey";  //Create white rook
		                    break;
		         case 57:   BoardPiece.Piece_ID=-1;
		                    BoardPiece.Color="Grey";
		                    break;                        //Create white knight
		         case 58:   BoardPiece.Piece_ID=-1;
		                    BoardPiece.Color="Grey";    //Create white bishop
		                    break;
		         case 59:   BoardPiece.Piece_ID=-1;
		                    BoardPiece.Color="Grey";    //Crate white king
		                    break;  
		         case 60:   BoardPiece.Piece_ID=-1;
		                    BoardPiece.Color="Grey";    //Crate white queen
		                    break; 
		         case 61:   BoardPiece.Piece_ID=-1;
		                    BoardPiece.Color="Grey";    //Create white bishop
		                    break;
		         case 62:   BoardPiece.Piece_ID=-1;
		                    BoardPiece.Color="Grey";    //Create white knight
		                    break;   
		         case 63:   BoardPiece.Piece_ID=-1;
		                    BoardPiece.Color="Grey";
		                    break;                        //Create white Rooks 
				 
			     case 64:   BoardPiece.Piece_ID=1;
		                    BoardPiece.Color="Black";
							global.p64 = BoardPiece
		                    break;                       //Create black Rooks
		         case 65:    BoardPiece.Piece_ID=2;
		                    BoardPiece.Color="Black";
		                    break;                        //Create black knight
		         case 66:    BoardPiece.Piece_ID=3;
		                    BoardPiece.Color="Black";    //Create black bishop
		                    break; 
		         case 67:    BoardPiece.Piece_ID=4;
		                    BoardPiece.Color="Black";    //Crate black king
		                    break;  
		         case 68:    BoardPiece.Piece_ID=5;
		                    BoardPiece.Color="Black";    //Crate black queen
		                    break; 
		         case 69:    BoardPiece.Piece_ID=3;
		                    BoardPiece.Color="Black";    //Create black bishop
		                    break;
		         case 70:    BoardPiece.Piece_ID=2;
		                    BoardPiece.Color="Black";    //Create black knight
		                    break;   
		         case 71:    BoardPiece.Piece_ID=1;
		                    BoardPiece.Color="Black";
		                    break;                        //Create black Rooks
		         case 72:    BoardPiece.Piece_ID=0;        //Create pawns
							BoardPiece.Color="Black";
		         case 73:    BoardPiece.Piece_ID=0;        //from there
						    BoardPiece.Color="Black";
		         case 74:   BoardPiece.Piece_ID=0;
				 			BoardPiece.Color="Black";
		         case 75:   BoardPiece.Piece_ID=0;
				 			BoardPiece.Color="Black";
		         case 76:   BoardPiece.Piece_ID=0;
				 			BoardPiece.Color="Black";
		         case 77:   BoardPiece.Piece_ID=0;
				 			BoardPiece.Color="Black";
		         case 78:   BoardPiece.Piece_ID=0;       //to there
				 			BoardPiece.Color="Black";
		         case 79:   BoardPiece.Piece_ID=0; 
				 			BoardPiece.Color="Black";
							break;
		         case 80:   BoardPiece.Piece_ID=0;
		                    BoardPiece.Colour="White";        //Create pawns
		         case 81:   BoardPiece.Piece_ID=0;
		                    BoardPiece.Color="White";        //from there
		         case 82:   BoardPiece.Piece_ID=0;
		                    BoardPiece.Color="White";
		         case 83:   BoardPiece.Piece_ID=0;
		                    BoardPiece.Color="White";
		         case 84:   BoardPiece.Piece_ID=0;
		                    BoardPiece.Color="White";
		         case 85:   BoardPiece.Piece_ID=0;
		                    BoardPiece.Color="White";
		         case 86:   BoardPiece.Piece_ID=0;
		                    BoardPiece.Color="White";       //to there
		         case 87:   BoardPiece.Piece_ID=0;
		                    BoardPiece.Color="White"; 
		                    break;
		         case 88:   BoardPiece.Piece_ID=1;
		                    BoardPiece.Color="White";  //Create white rook
		                    break;
		         case 89:   BoardPiece.Piece_ID=2;
		                    BoardPiece.Color="White";
		                    break;                        //Create white knight
		         case 90:   BoardPiece.Piece_ID=3;
		                    BoardPiece.Color="White";    //Create white bishop
		                    break;
		         case 91:   BoardPiece.Piece_ID=4;
		                    BoardPiece.Color="White";    //Crate white king
		                    break;  
		         case 92:   BoardPiece.Piece_ID=5;
		                    BoardPiece.Color="White";    //Crate white queen
		                    break; 
		         case 93:   BoardPiece.Piece_ID=3;
		                    BoardPiece.Color="White";    //Create white bishop
		                    break;
		         case 94:   BoardPiece.Piece_ID=2;
		                    BoardPiece.Color="White";    //Create white knight
		                    break;   
		         case 95:   BoardPiece.Piece_ID=1;
		                    BoardPiece.Color="White";
		                    break;                        //Create white Rooks
				default:	BoardPiece.Piece_ID = -1;
							BoardPiece.Color = "Grey";
							break;
			}						
			P++;
			X=i*111;
			Y=j*111;
		};
	}
	
#endregion
