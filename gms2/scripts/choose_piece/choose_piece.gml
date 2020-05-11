// Pawn change

if argument0 = 0
{
	global.temp1=0; global.temp2=0; global.temp3=0; global.temp4=0;
	var P=64;
	var X=-440;
	var Y=440;
	for (i=0; i<4; i++)
	{
		BoardPiece = instance_create_layer(X,Y,"Pieces",obj_cell);
		BoardPiece.ID = P
		switch (BoardPiece.ID)
		{
			case 64: BoardPiece.Piece_ID=1;
			         BoardPiece.Color="Black";
					 global.temp1= BoardPiece.id;
			         break; 
			case 65: BoardPiece.Piece_ID=2;
			         BoardPiece.Color="Black";
					 global.temp2= BoardPiece.id;
			         break;
			case 66: BoardPiece.Piece_ID=3;
			         BoardPiece.Color="Black";
					 global.temp3= BoardPiece.id;
			         break;
			case 67: BoardPiece.Piece_ID=4;
			         BoardPiece.Color="Black";
					 global.temp4= BoardPiece.id;
			         break;
					 
		}
	P++;
	X= X+110;
	}
}


if argument0 = 1
{
	global.temp1=0; global.temp2=0; global.temp3=0; global.temp4=0;
	var P=68;
	var X=-440;
	var Y=-550;
	for (i=0; i<4; i++)
	{
		BoardPiece = instance_create_layer(X,Y,"Pieces",obj_cell);
		BoardPiece.ID = P
		switch (BoardPiece.ID)
		{
			case 68: BoardPiece.Piece_ID=1;
			         BoardPiece.Color="White";
					 global.temp1= BoardPiece.id;
			         break; 
			case 69: BoardPiece.Piece_ID=2;
			         BoardPiece.Color="White";
					 global.temp2= BoardPiece.id;
			         break;
			case 70: BoardPiece.Piece_ID=3;
			         BoardPiece.Color="White";
					 global.temp3= BoardPiece.id;
			         break;
			case 71: BoardPiece.Piece_ID=4;
			         BoardPiece.Color="White";
					 BoardPiece.CanTake = true;
					 global.temp4= BoardPiece.id;
			         break;
		}
	P++;
	X= X+110;
	}
}
