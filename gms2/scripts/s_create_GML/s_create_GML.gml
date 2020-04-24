/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 10758547
/// @DnDArgument : "code" "///Init board pieces and vars$(13_10)$(13_10)  ///  global.Check=""; //Colour that is in check.$(13_10)  ///  global.Selected=-1; //This variable represents what piece on the board is currently selected by the player.$(13_10)  ///  global.Turn="White";//Sets the colour that starts first.$(13_10)    $(13_10)    $(13_10)     WhiteKing=0;$(13_10)     BlackKing=0;$(13_10)     White=0;$(13_10)     Black=0;$(13_10)     //Setup variables for step event.$(13_10)     $(13_10)    Win_Text="";$(13_10)    $(13_10)    //If the winning text is anything other than "", it will be shown to the player.$(13_10)    var P=0;$(13_10)    var X=x;$(13_10)    var Y=y;$(13_10)	var CharForCell="A";$(13_10)	var NumForCell=0;$(13_10)	var Cell_Position = "";$(13_10)    $(13_10)    //1. - create switch V$(13_10)    //2. - set to switch piceses V$(13_10)    //3. - change the while loop to a for loop V$(13_10)    //4. - optimize the script V$(13_10)	$(13_10)	//[HOMEWORK] Optional$(13_10)	$(13_10)	//chamge from two fors instead of one for$(13_10)	//dont forget about P variable, that counts from 0..63$(13_10)	//P var is need to be set after it sets inside of the obj_cell$(13_10)	$(13_10)	//change CharForCell character inside of the switch$(13_10)	$(13_10)	//check for a proper setting inside of the cell by using a s_output_mesage$(13_10)	$(13_10)	P=0$(13_10)	for (i=0; i<8; i++) //cell collumns $(13_10)	{$(13_10)		for (j=0; j<8; j++) // cell rows$(13_10)		{$(13_10)			switch (i) $(13_10)			{$(13_10)				case 0: CharForCell="A";$(13_10)				case 1: CharForCell="B";$(13_10)				case 2: CharForCell="C";$(13_10)				case 3: CharForCell="D";$(13_10)				case 4: CharForCell="E";$(13_10)				case 5: CharForCell="F";$(13_10)				case 6: CharForCell="G";$(13_10)				case 7: CharForCell="H";$(13_10)			};$(13_10)			NumForCell=j+1;$(13_10)			$(13_10)			Cell_Position = CharForCell+string(NumForCell);  //A1... H8$(13_10)			BoardPiece = instance_create_layer(X,Y,"Pieces",obj_cell);$(13_10)			BoardPiece.ID = P$(13_10)			BoardPiece.BoardPos = Cell_Position;$(13_10)			switch (BoardPiece.ID)$(13_10)		         {$(13_10)		         case 0:    BoardPiece.Piece_ID=1;$(13_10)		                    BoardPiece.Color="Black";$(13_10)		                    break;                       //Create black Rooks$(13_10)		         case 1:    BoardPiece.Piece_ID=2;$(13_10)		                    BoardPiece.Color="Black";$(13_10)		                    break;                        //Create black knight$(13_10)		         case 2:    BoardPiece.Piece_ID=3;$(13_10)		                    BoardPiece.Color="Black";    //Create black bishop$(13_10)		                    break; $(13_10)		         case 3:    BoardPiece.Piece_ID=4;$(13_10)		                    BoardPiece.Color="Black";    //Crate black queen$(13_10)		                    break;  $(13_10)		         case 4:    BoardPiece.Piece_ID=5;$(13_10)		                    BoardPiece.Color="Black";    //Crate black king$(13_10)		                    break; $(13_10)		         case 5:    BoardPiece.Piece_ID=3;$(13_10)		                    BoardPiece.Color="Black";    //Create black bishop$(13_10)		                    break;$(13_10)		         case 6:    BoardPiece.Piece_ID=2;$(13_10)		                    BoardPiece.Color="Black";    //Create black knight$(13_10)		                    break;   $(13_10)		         case 7:    BoardPiece.Piece_ID=1;$(13_10)		                    BoardPiece.Color="Black";$(13_10)		                    break;                        //Create black Rooks$(13_10)		         case 8:    BoardPiece.Piece_ID=0;        //Create pawns$(13_10)							BoardPiece.Color="Black";$(13_10)		         case 9:    BoardPiece.Piece_ID=0;        //from there$(13_10)						    BoardPiece.Color="Black";$(13_10)		         case 10:   BoardPiece.Piece_ID=0;$(13_10)				 			BoardPiece.Color="Black";$(13_10)		         case 11:   BoardPiece.Piece_ID=0;$(13_10)				 			BoardPiece.Color="Black";$(13_10)		         case 12:   BoardPiece.Piece_ID=0;$(13_10)				 			BoardPiece.Color="Black";$(13_10)		         case 13:   BoardPiece.Piece_ID=0;$(13_10)				 			BoardPiece.Color="Black";$(13_10)		         case 14:   BoardPiece.Piece_ID=0;       //to there$(13_10)				 			BoardPiece.Color="Black";$(13_10)		         case 15:   BoardPiece.Piece_ID=0; $(13_10)				 			BoardPiece.Color="Black";$(13_10)							break;$(13_10)		         case 48:   BoardPiece.Piece_ID=0;$(13_10)		                    BoardPiece.Colour="White";        //Create pawns$(13_10)		         case 49:   BoardPiece.Piece_ID=0;$(13_10)		                    BoardPiece.Color="White";        //from there$(13_10)		         case 50:   BoardPiece.Piece_ID=0;$(13_10)		                    BoardPiece.Color="White";$(13_10)		         case 51:   BoardPiece.Piece_ID=0;$(13_10)		                    BoardPiece.Color="White";$(13_10)		         case 52:   BoardPiece.Piece_ID=0;$(13_10)		                    BoardPiece.Color="White";$(13_10)		         case 53:   BoardPiece.Piece_ID=0;$(13_10)		                    BoardPiece.Color="White";$(13_10)		         case 54:   BoardPiece.Piece_ID=0;$(13_10)		                    BoardPiece.Color="White";       //to there$(13_10)		         case 55:   BoardPiece.Piece_ID=0;$(13_10)		                    BoardPiece.Color="White"; $(13_10)		                    break;$(13_10)		         case 56:   BoardPiece.Piece_ID=1;$(13_10)		                    BoardPiece.Color="White";  //Create white rook$(13_10)		                    break;$(13_10)		         case 57:   BoardPiece.Piece_ID=2;$(13_10)		                    BoardPiece.Color="White";$(13_10)		                    break;                        //Create white knight$(13_10)		         case 58:   BoardPiece.Piece_ID=3;$(13_10)		                    BoardPiece.Color="White";    //Create white bishop$(13_10)		                    break;$(13_10)		         case 59:   BoardPiece.Piece_ID=4;$(13_10)		                    BoardPiece.Color="White";    //Crate white queen$(13_10)		                    break;  $(13_10)		         case 60:   BoardPiece.Piece_ID=5;$(13_10)		                    BoardPiece.Color="White";    //Crate white king$(13_10)		                    break; $(13_10)		         case 61:   BoardPiece.Piece_ID=3;$(13_10)		                    BoardPiece.Color="White";    //Create white bishop$(13_10)		                    break;$(13_10)		         case 62:   BoardPiece.Piece_ID=2;$(13_10)		                    BoardPiece.Color="White";    //Create white knight$(13_10)		                    break;   $(13_10)		         case 63:   BoardPiece.Piece_ID=1;$(13_10)		                    BoardPiece.Color="White";$(13_10)		                    break;                        //Create white Rooks $(13_10)				default:    BoardPiece.Piece_ID = -1;$(13_10)							BoardPiece.Color = "Grey";$(13_10)							break;$(13_10)							$(13_10)			P++;		$(13_10)				}$(13_10)	}$(13_10)    $(13_10)	$(13_10)	// [END HOMEWORK]$(13_10)	$(13_10)	$(13_10)	$(13_10)	$(13_10)	$(13_10)	$(13_10)	$(13_10)	$(13_10)    for (P=0; P<=63; P++)$(13_10)    {$(13_10)        BoardPiece = instance_create_layer(X,Y,"Pieces",obj_cell);  //Create a board cell$(13_10)		//BoardPiece.image_blend = make_color_rgb(P,P,P);$(13_10)        BoardPiece.ID = P;$(13_10)		$(13_10)		$(13_10)		$(13_10)		$(13_10)        switch (BoardPiece.ID)$(13_10)        {$(13_10)            case 0:  BoardPiece.Piece_ID=1;$(13_10)                  BoardPiece.Color="Black";$(13_10)                  break;                       //Create black Rooks$(13_10)            case 1:  BoardPiece.Piece_ID=2;$(13_10)                  BoardPiece.Color="Black";$(13_10)                  break;                        //Create black knight$(13_10)            case 2:  BoardPiece.Piece_ID=3;$(13_10)                  BoardPiece.Color="Black";    //Create black bishop$(13_10)                  break; $(13_10)            case 3:  BoardPiece.Piece_ID=4;$(13_10)                  BoardPiece.Color="Black";    //Crate black queen$(13_10)                  break;  $(13_10)            case 4:  BoardPiece.Piece_ID=5;$(13_10)                  BoardPiece.Color="Black";    //Crate black king$(13_10)                  break; $(13_10)         case 5:  BoardPiece.Piece_ID=3;$(13_10)                  BoardPiece.Color="Black";    //Create black bishop$(13_10)                  break;$(13_10)         case 6:  BoardPiece.Piece_ID=2;$(13_10)                  BoardPiece.Color="Black";    //Create black knight$(13_10)                  break;   $(13_10)         case 7:  BoardPiece.Piece_ID=1;$(13_10)                  BoardPiece.Color="Black";$(13_10)                  break;                        //Create black Rooks$(13_10)         case 8:  BoardPiece.Piece_ID=0;        //Create pawns$(13_10)					BoardPiece.Color="Black";$(13_10)         case 9:  BoardPiece.Piece_ID=0;        //from there$(13_10)				BoardPiece.Color="Black";$(13_10)         case 10: BoardPiece.Piece_ID=0;$(13_10)		 				BoardPiece.Color="Black";$(13_10)         case 11: BoardPiece.Piece_ID=0;$(13_10)		 				BoardPiece.Color="Black";$(13_10)         case 12: BoardPiece.Piece_ID=0;$(13_10)		 				BoardPiece.Color="Black";$(13_10)         case 13: BoardPiece.Piece_ID=0;$(13_10)		 				BoardPiece.Color="Black";$(13_10)         case 14: BoardPiece.Piece_ID=0;       //to there$(13_10)		 				BoardPiece.Color="Black";$(13_10)         case 15: BoardPiece.Piece_ID=0; $(13_10)		 				BoardPiece.Color="Black";$(13_10)						break;$(13_10)         case 48: BoardPiece.Piece_ID=0;$(13_10)                    BoardPiece.Colour="White";        //Create pawns$(13_10)         case 49:   BoardPiece.Piece_ID=0;$(13_10)                    BoardPiece.Color="White";        //from there$(13_10)         case 50:   BoardPiece.Piece_ID=0;$(13_10)                    BoardPiece.Color="White";$(13_10)         case 51:   BoardPiece.Piece_ID=0;$(13_10)                    BoardPiece.Color="White";$(13_10)         case 52:   BoardPiece.Piece_ID=0;$(13_10)                    BoardPiece.Color="White";$(13_10)         case 53:   BoardPiece.Piece_ID=0;$(13_10)                    BoardPiece.Color="White";$(13_10)         case 54:   BoardPiece.Piece_ID=0;$(13_10)                    BoardPiece.Color="White";       //to there$(13_10)         case 55:   BoardPiece.Piece_ID=0;$(13_10)                    BoardPiece.Color="White"; $(13_10)                    break;$(13_10)         case 56:   BoardPiece.Piece_ID=1;$(13_10)                    BoardPiece.Color="White";  //Create white rook$(13_10)                    break;$(13_10)         case 57:   BoardPiece.Piece_ID=2;$(13_10)                    BoardPiece.Color="White";$(13_10)                    break;                        //Create white knight$(13_10)         case 58:   BoardPiece.Piece_ID=3;$(13_10)                    BoardPiece.Color="White";    //Create white bishop$(13_10)                    break;$(13_10)         case 59:   BoardPiece.Piece_ID=4;$(13_10)                    BoardPiece.Color="White";    //Crate white queen$(13_10)                    break;  $(13_10)         case 60:   BoardPiece.Piece_ID=5;$(13_10)                    BoardPiece.Color="White";    //Crate white king$(13_10)                    break; $(13_10)         case 61:   BoardPiece.Piece_ID=3;$(13_10)                    BoardPiece.Color="White";    //Create white bishop$(13_10)                    break;$(13_10)         case 62:   BoardPiece.Piece_ID=2;$(13_10)                    BoardPiece.Color="White";    //Create white knight$(13_10)                    break;   $(13_10)         case 63:   BoardPiece.Piece_ID=1;$(13_10)                    BoardPiece.Color="White";$(13_10)                    break;                        //Create white Rooks $(13_10)		default: BoardPiece.Piece_ID = -1;$(13_10)						BoardPiece.Color = "Grey";$(13_10)						break;$(13_10)        }$(13_10)        //Adding a horizontal cell position$(13_10)        X+=111;$(13_10)        //reset row X position      $(13_10)        if X >=888$(13_10)       {$(13_10)            X=x; //Right here$(13_10)            Y+=111;  //Adding a vertical cell position$(13_10)        };$(13_10)    };$(13_10)	$(13_10)	$(13_10)	$(13_10)	$(13_10)"
///Init board pieces and vars

  ///  global.Check=""; //Colour that is in check.
  ///  global.Selected=-1; //This variable represents what piece on the board is currently selected by the player.
  ///  global.Turn="White";//Sets the colour that starts first.
    
    
     WhiteKing=0;
     BlackKing=0;
     White=0;
     Black=0;
     //Setup variables for step event.
     
    Win_Text="";
    
    //If the winning text is anything other than "", it will be shown to the player.
    var P=0;
    var X=x;
    var Y=y;
	var CharForCell="A";
	var NumForCell=0;
	var Cell_Position = "";
    
    //1. - create switch V
    //2. - set to switch piceses V
    //3. - change the while loop to a for loop V
    //4. - optimize the script V
	
	//[HOMEWORK] Optional
	
	//chamge from two fors instead of one for
	//dont forget about P variable, that counts from 0..63
	//P var is need to be set after it sets inside of the obj_cell
	
	//change CharForCell character inside of the switch
	
	//check for a proper setting inside of the cell by using a s_output_mesage
	
	P=0
	for (i=0; i<8; i++) //cell collumns 
	{
		for (j=0; j<8; j++) // cell rows
		{
			switch (i) 
			{
				case 0: CharForCell="A";
				case 1: CharForCell="B";
				case 2: CharForCell="C";
				case 3: CharForCell="D";
				case 4: CharForCell="E";
				case 5: CharForCell="F";
				case 6: CharForCell="G";
				case 7: CharForCell="H";
			};
			NumForCell=j+1;
			
			Cell_Position = CharForCell+string(NumForCell);  //A1... H8
			BoardPiece = instance_create_layer(X,Y,"Pieces",obj_cell);
			BoardPiece.ID = P
			BoardPiece.BoardPos = Cell_Position;
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
		                    BoardPiece.Color="Black";    //Crate black queen
		                    break;  
		         case 4:    BoardPiece.Piece_ID=5;
		                    BoardPiece.Color="Black";    //Crate black king
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
		                    BoardPiece.Color="White";    //Crate white queen
		                    break;  
		         case 60:   BoardPiece.Piece_ID=5;
		                    BoardPiece.Color="White";    //Crate white king
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
							
			P++;		
				}
	}
    
	
	// [END HOMEWORK]
	
	
	
	
	
	
	
	
    for (P=0; P<=63; P++)
    {
        BoardPiece = instance_create_layer(X,Y,"Pieces",obj_cell);  //Create a board cell
		//BoardPiece.image_blend = make_color_rgb(P,P,P);
        BoardPiece.ID = P;
		
		
		
		
        switch (BoardPiece.ID)
        {
            case 0:  BoardPiece.Piece_ID=1;
                  BoardPiece.Color="Black";
                  break;                       //Create black Rooks
            case 1:  BoardPiece.Piece_ID=2;
                  BoardPiece.Color="Black";
                  break;                        //Create black knight
            case 2:  BoardPiece.Piece_ID=3;
                  BoardPiece.Color="Black";    //Create black bishop
                  break; 
            case 3:  BoardPiece.Piece_ID=4;
                  BoardPiece.Color="Black";    //Crate black queen
                  break;  
            case 4:  BoardPiece.Piece_ID=5;
                  BoardPiece.Color="Black";    //Crate black king
                  break; 
         case 5:  BoardPiece.Piece_ID=3;
                  BoardPiece.Color="Black";    //Create black bishop
                  break;
         case 6:  BoardPiece.Piece_ID=2;
                  BoardPiece.Color="Black";    //Create black knight
                  break;   
         case 7:  BoardPiece.Piece_ID=1;
                  BoardPiece.Color="Black";
                  break;                        //Create black Rooks
         case 8:  BoardPiece.Piece_ID=0;        //Create pawns
					BoardPiece.Color="Black";
         case 9:  BoardPiece.Piece_ID=0;        //from there
				BoardPiece.Color="Black";
         case 10: BoardPiece.Piece_ID=0;
		 				BoardPiece.Color="Black";
         case 11: BoardPiece.Piece_ID=0;
		 				BoardPiece.Color="Black";
         case 12: BoardPiece.Piece_ID=0;
		 				BoardPiece.Color="Black";
         case 13: BoardPiece.Piece_ID=0;
		 				BoardPiece.Color="Black";
         case 14: BoardPiece.Piece_ID=0;       //to there
		 				BoardPiece.Color="Black";
         case 15: BoardPiece.Piece_ID=0; 
		 				BoardPiece.Color="Black";
						break;
         case 48: BoardPiece.Piece_ID=0;
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
                    BoardPiece.Color="White";    //Crate white queen
                    break;  
         case 60:   BoardPiece.Piece_ID=5;
                    BoardPiece.Color="White";    //Crate white king
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
		default: BoardPiece.Piece_ID = -1;
						BoardPiece.Color = "Grey";
						break;
        }
        //Adding a horizontal cell position
        X+=111;
        //reset row X position      
        if X >=888
       {
            X=x; //Right here
            Y+=111;  //Adding a vertical cell position
        };
    };