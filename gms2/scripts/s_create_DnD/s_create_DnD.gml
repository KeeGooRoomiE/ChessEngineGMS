/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6D718A54
/// @DnDInput : 5
/// @DnDArgument : "expr_4" """"
/// @DnDArgument : "var" "Whiteking"
/// @DnDArgument : "var_1" "BlackKing"
/// @DnDArgument : "var_2" "White"
/// @DnDArgument : "var_3" "Black"
/// @DnDArgument : "var_4" "WinText"
Whiteking = 0;
BlackKing = 0;
White = 0;
Black = 0;
WinText = "";

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 13EE95F7
/// @DnDInput : 3
/// @DnDArgument : "expr_1" "x"
/// @DnDArgument : "expr_2" "y"
/// @DnDArgument : "var" "P"
/// @DnDArgument : "var_1" "X"
/// @DnDArgument : "var_2" "Y"
P = 0;
X = x;
Y = y;

/// @DnDAction : YoYo Games.Loops.For_Loop
/// @DnDVersion : 1
/// @DnDHash : 32192C4B
/// @DnDArgument : "init" "P= 0"
/// @DnDArgument : "cond" "P <= 63"
/// @DnDArgument : "expr" "P++"
for(P= 0; P <= 63; P++) {
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 56B2A621
	/// @DnDParent : 32192C4B
	/// @DnDArgument : "xpos" "X"
	/// @DnDArgument : "ypos" "Y"
	/// @DnDArgument : "var" "BoardPiece"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "objectid" "obj_cell"
	/// @DnDArgument : "layer" ""Pieces""
	/// @DnDSaveInfo : "objectid" "1db76b82-9ba6-4e87-87c2-3fa44f9f78c3"
	var BoardPiece = instance_create_layer(X, Y, "Pieces", obj_cell);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 589A31AE
	/// @DnDParent : 32192C4B
	/// @DnDArgument : "expr" "P"
	/// @DnDArgument : "var" "ID"
	ID = P;

	/// @DnDAction : YoYo Games.Switch.Switch
	/// @DnDVersion : 1
	/// @DnDHash : 67CAD9AD
	/// @DnDParent : 32192C4B
	/// @DnDArgument : "expr" "BoardPiece.ID"
	var l67CAD9AD_0 = BoardPiece.ID;
	switch(l67CAD9AD_0)
	{
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 279BA9AA
		/// @DnDParent : 67CAD9AD
		case 0:
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 04B99F4E
			/// @DnDInput : 2
			/// @DnDParent : 279BA9AA
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "expr_1" ""Black""
			/// @DnDArgument : "var" "BoardPiece.Piece_ID"
			/// @DnDArgument : "var_1" "BoardPiece.Color"
			BoardPiece.Piece_ID = 1;
			BoardPiece.Color = "Black";
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 6E587350
		/// @DnDParent : 67CAD9AD
		/// @DnDArgument : "const" "1"
		case 1:
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 1B5F0E5F
			/// @DnDInput : 2
			/// @DnDParent : 6E587350
			/// @DnDArgument : "expr" "2"
			/// @DnDArgument : "expr_1" ""Black""
			/// @DnDArgument : "var" "BoardPiece.Piece_ID"
			/// @DnDArgument : "var_1" "BoardPiece.Color"
			BoardPiece.Piece_ID = 2;
			BoardPiece.Color = "Black";
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 0FFE87D6
		/// @DnDParent : 67CAD9AD
		/// @DnDArgument : "const" "2"
		case 2:
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 738ED846
			/// @DnDInput : 2
			/// @DnDParent : 0FFE87D6
			/// @DnDArgument : "expr" "3"
			/// @DnDArgument : "expr_1" ""Black""
			/// @DnDArgument : "var" "BoardPiece.Piece_ID"
			/// @DnDArgument : "var_1" "BoardPiece.Color"
			BoardPiece.Piece_ID = 3;
			BoardPiece.Color = "Black";
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 569891AB
		/// @DnDParent : 67CAD9AD
		/// @DnDArgument : "const" "3"
		case 3:
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 55D2F973
			/// @DnDInput : 2
			/// @DnDParent : 569891AB
			/// @DnDArgument : "expr" "4"
			/// @DnDArgument : "expr_1" ""Black""
			/// @DnDArgument : "var" "BoardPiece.Piece_ID"
			/// @DnDArgument : "var_1" "BoardPiece.Color"
			BoardPiece.Piece_ID = 4;
			BoardPiece.Color = "Black";
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 13A1EC1B
		/// @DnDParent : 67CAD9AD
		/// @DnDArgument : "const" "4"
		case 4:
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 733D1B37
			/// @DnDInput : 2
			/// @DnDParent : 13A1EC1B
			/// @DnDArgument : "expr" "5"
			/// @DnDArgument : "expr_1" ""Black""
			/// @DnDArgument : "var" "BoardPiece.Piece_ID"
			/// @DnDArgument : "var_1" "BoardPiece.Color"
			BoardPiece.Piece_ID = 5;
			BoardPiece.Color = "Black";
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 7FEEC974
		/// @DnDParent : 67CAD9AD
		/// @DnDArgument : "const" "5"
		case 5:
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 4312B951
			/// @DnDInput : 2
			/// @DnDParent : 7FEEC974
			/// @DnDArgument : "expr" "3"
			/// @DnDArgument : "expr_1" ""Black""
			/// @DnDArgument : "var" "BoardPiece.Piece_ID"
			/// @DnDArgument : "var_1" "BoardPiece.Color"
			BoardPiece.Piece_ID = 3;
			BoardPiece.Color = "Black";
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 70DE6F2C
		/// @DnDParent : 67CAD9AD
		/// @DnDArgument : "const" "6"
		case 6:
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 6F801442
			/// @DnDInput : 2
			/// @DnDParent : 70DE6F2C
			/// @DnDArgument : "expr" "2"
			/// @DnDArgument : "expr_1" ""Black""
			/// @DnDArgument : "var" "BoardPiece.Piece_ID"
			/// @DnDArgument : "var_1" "BoardPiece.Color"
			BoardPiece.Piece_ID = 2;
			BoardPiece.Color = "Black";
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 317DE24A
		/// @DnDParent : 67CAD9AD
		/// @DnDArgument : "const" "7"
		case 7:
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 08940797
			/// @DnDInput : 2
			/// @DnDParent : 317DE24A
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "expr_1" ""Black""
			/// @DnDArgument : "var" "BoardPiece.Piece_ID"
			/// @DnDArgument : "var_1" "BoardPiece.Color"
			BoardPiece.Piece_ID = 1;
			BoardPiece.Color = "Black";
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 28994476
		/// @DnDParent : 67CAD9AD
		/// @DnDArgument : "const" "8"
		case 8:
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 3D17B88A
			/// @DnDInput : 2
			/// @DnDParent : 28994476
			/// @DnDArgument : "expr_1" ""Black""
			/// @DnDArgument : "var" "BoardPiece.Piece_ID"
			/// @DnDArgument : "var_1" "BoardPiece.Color"
			BoardPiece.Piece_ID = 0;
			BoardPiece.Color = "Black";
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 2BEDC513
		/// @DnDParent : 67CAD9AD
		/// @DnDArgument : "const" "9"
		case 9:
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 0CCC2CF0
			/// @DnDInput : 2
			/// @DnDParent : 2BEDC513
			/// @DnDArgument : "expr_1" ""Black""
			/// @DnDArgument : "var" "BoardPiece.Piece_ID"
			/// @DnDArgument : "var_1" "BoardPiece.Color"
			BoardPiece.Piece_ID = 0;
			BoardPiece.Color = "Black";
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 02355A32
		/// @DnDParent : 67CAD9AD
		/// @DnDArgument : "const" "10"
		case 10:
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 3131BB1E
			/// @DnDInput : 2
			/// @DnDParent : 02355A32
			/// @DnDArgument : "expr_1" ""White""
			/// @DnDArgument : "var" "BoardPiece.Piece_ID"
			/// @DnDArgument : "var_1" "BoardPiece.Color"
			BoardPiece.Piece_ID = 0;
			BoardPiece.Color = "White";
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 3C90AF3E
		/// @DnDParent : 67CAD9AD
		/// @DnDArgument : "const" "11"
		case 11:
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 74CEE2B1
			/// @DnDInput : 2
			/// @DnDParent : 3C90AF3E
			/// @DnDArgument : "expr_1" ""Black""
			/// @DnDArgument : "var" "BoardPiece.Piece_ID"
			/// @DnDArgument : "var_1" "BoardPiece.Color"
			BoardPiece.Piece_ID = 0;
			BoardPiece.Color = "Black";
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 5240DDF0
		/// @DnDParent : 67CAD9AD
		/// @DnDArgument : "const" "12"
		case 12:
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 48FE4D07
			/// @DnDInput : 2
			/// @DnDParent : 5240DDF0
			/// @DnDArgument : "expr_1" ""Black""
			/// @DnDArgument : "var" "BoardPiece.Piece_ID"
			/// @DnDArgument : "var_1" "BoardPiece.Color"
			BoardPiece.Piece_ID = 0;
			BoardPiece.Color = "Black";
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 3DB638A1
		/// @DnDParent : 67CAD9AD
		/// @DnDArgument : "const" "13"
		case 13:
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 2E520D9A
			/// @DnDInput : 2
			/// @DnDParent : 3DB638A1
			/// @DnDArgument : "expr_1" ""Black""
			/// @DnDArgument : "var" "BoardPiece.Piece_ID"
			/// @DnDArgument : "var_1" "BoardPiece.Color"
			BoardPiece.Piece_ID = 0;
			BoardPiece.Color = "Black";
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 4B7B2B26
		/// @DnDParent : 67CAD9AD
		/// @DnDArgument : "const" "14"
		case 14:
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 2C0F2BE4
			/// @DnDInput : 2
			/// @DnDParent : 4B7B2B26
			/// @DnDArgument : "expr_1" ""Black""
			/// @DnDArgument : "var" "BoardPiece.Piece_ID"
			/// @DnDArgument : "var_1" "BoardPiece.Color"
			BoardPiece.Piece_ID = 0;
			BoardPiece.Color = "Black";
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 08C0D229
		/// @DnDParent : 67CAD9AD
		/// @DnDArgument : "const" "15"
		case 15:
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 10A07C54
			/// @DnDInput : 2
			/// @DnDParent : 08C0D229
			/// @DnDArgument : "expr_1" ""Black""
			/// @DnDArgument : "var" "BoardPiece.Piece_ID"
			/// @DnDArgument : "var_1" "BoardPiece.Color"
			BoardPiece.Piece_ID = 0;
			BoardPiece.Color = "Black";
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 2DD25C3C
		/// @DnDParent : 67CAD9AD
		/// @DnDArgument : "const" "48"
		case 48:
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 4F006090
			/// @DnDInput : 2
			/// @DnDParent : 2DD25C3C
			/// @DnDArgument : "expr_1" ""White""
			/// @DnDArgument : "var" "BoardPiece.Piece_ID"
			/// @DnDArgument : "var_1" "BoardPiece.Color"
			BoardPiece.Piece_ID = 0;
			BoardPiece.Color = "White";
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 7C778343
		/// @DnDParent : 67CAD9AD
		/// @DnDArgument : "const" "49"
		case 49:
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 30DD96DD
			/// @DnDInput : 2
			/// @DnDParent : 7C778343
			/// @DnDArgument : "expr_1" ""White""
			/// @DnDArgument : "var" "BoardPiece.Piece_ID"
			/// @DnDArgument : "var_1" "BoardPiece.Color"
			BoardPiece.Piece_ID = 0;
			BoardPiece.Color = "White";
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 36A18EE0
		/// @DnDParent : 67CAD9AD
		/// @DnDArgument : "const" "50"
		case 50:
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 380EE93C
			/// @DnDInput : 2
			/// @DnDParent : 36A18EE0
			/// @DnDArgument : "expr_1" ""White""
			/// @DnDArgument : "var" "BoardPiece.Piece_ID"
			/// @DnDArgument : "var_1" "BoardPiece.Color"
			BoardPiece.Piece_ID = 0;
			BoardPiece.Color = "White";
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 64F79226
		/// @DnDParent : 67CAD9AD
		/// @DnDArgument : "const" "51"
		case 51:
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 1D09E85E
			/// @DnDInput : 2
			/// @DnDParent : 64F79226
			/// @DnDArgument : "expr_1" ""White""
			/// @DnDArgument : "var" "BoardPiece.Piece_ID"
			/// @DnDArgument : "var_1" "BoardPiece.Color"
			BoardPiece.Piece_ID = 0;
			BoardPiece.Color = "White";
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 441C1E80
		/// @DnDParent : 67CAD9AD
		/// @DnDArgument : "const" "52"
		case 52:
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 5FCB9198
			/// @DnDInput : 2
			/// @DnDParent : 441C1E80
			/// @DnDArgument : "expr_1" ""White""
			/// @DnDArgument : "var" "BoardPiece.Piece_ID"
			/// @DnDArgument : "var_1" "BoardPiece.Color"
			BoardPiece.Piece_ID = 0;
			BoardPiece.Color = "White";
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 345D430F
		/// @DnDParent : 67CAD9AD
		/// @DnDArgument : "const" "53"
		case 53:
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 64509C47
			/// @DnDInput : 2
			/// @DnDParent : 345D430F
			/// @DnDArgument : "expr_1" ""White""
			/// @DnDArgument : "var" "BoardPiece.Piece_ID"
			/// @DnDArgument : "var_1" "BoardPiece.Color"
			BoardPiece.Piece_ID = 0;
			BoardPiece.Color = "White";
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 29268CD8
		/// @DnDParent : 67CAD9AD
		/// @DnDArgument : "const" "54"
		case 54:
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 0E9C2CCD
			/// @DnDInput : 2
			/// @DnDParent : 29268CD8
			/// @DnDArgument : "expr_1" ""White""
			/// @DnDArgument : "var" "BoardPiece.Piece_ID"
			/// @DnDArgument : "var_1" "BoardPiece.Color"
			BoardPiece.Piece_ID = 0;
			BoardPiece.Color = "White";
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 1EBFCF48
		/// @DnDParent : 67CAD9AD
		/// @DnDArgument : "const" "55"
		case 55:
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 6051EFD7
			/// @DnDInput : 2
			/// @DnDParent : 1EBFCF48
			/// @DnDArgument : "expr_1" ""White""
			/// @DnDArgument : "var" "BoardPiece.Piece_ID"
			/// @DnDArgument : "var_1" "BoardPiece.Color"
			BoardPiece.Piece_ID = 0;
			BoardPiece.Color = "White";
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 2E07E22D
		/// @DnDParent : 67CAD9AD
		/// @DnDArgument : "const" "56"
		case 56:
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 62FBB25C
			/// @DnDInput : 2
			/// @DnDParent : 2E07E22D
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "expr_1" ""White""
			/// @DnDArgument : "var" "BoardPiece.Piece_ID"
			/// @DnDArgument : "var_1" "BoardPiece.Color"
			BoardPiece.Piece_ID = 1;
			BoardPiece.Color = "White";
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 677B824D
		/// @DnDParent : 67CAD9AD
		/// @DnDArgument : "const" "57"
		case 57:
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 5269BEE3
			/// @DnDInput : 2
			/// @DnDParent : 677B824D
			/// @DnDArgument : "expr" "2"
			/// @DnDArgument : "expr_1" ""White""
			/// @DnDArgument : "var" "BoardPiece.Piece_ID"
			/// @DnDArgument : "var_1" "BoardPiece.Color"
			BoardPiece.Piece_ID = 2;
			BoardPiece.Color = "White";
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 2044CECA
		/// @DnDParent : 67CAD9AD
		/// @DnDArgument : "const" "58"
		case 58:
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 63AA6C13
			/// @DnDInput : 2
			/// @DnDParent : 2044CECA
			/// @DnDArgument : "expr" "3"
			/// @DnDArgument : "expr_1" ""White""
			/// @DnDArgument : "var" "BoardPiece.Piece_ID"
			/// @DnDArgument : "var_1" "BoardPiece.Color"
			BoardPiece.Piece_ID = 3;
			BoardPiece.Color = "White";
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 6EF7622D
		/// @DnDParent : 67CAD9AD
		/// @DnDArgument : "const" "59"
		case 59:
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 7B3F05EB
			/// @DnDInput : 2
			/// @DnDParent : 6EF7622D
			/// @DnDArgument : "expr" "4"
			/// @DnDArgument : "expr_1" ""White""
			/// @DnDArgument : "var" "BoardPiece.Piece_ID"
			/// @DnDArgument : "var_1" "BoardPiece.Color"
			BoardPiece.Piece_ID = 4;
			BoardPiece.Color = "White";
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 560BC54A
		/// @DnDParent : 67CAD9AD
		/// @DnDArgument : "const" "60"
		case 60:
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 3A512BEE
			/// @DnDInput : 2
			/// @DnDParent : 560BC54A
			/// @DnDArgument : "expr" "5"
			/// @DnDArgument : "expr_1" ""White""
			/// @DnDArgument : "var" "BoardPiece.Piece_ID"
			/// @DnDArgument : "var_1" "BoardPiece.Color"
			BoardPiece.Piece_ID = 5;
			BoardPiece.Color = "White";
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 61AAD5E7
		/// @DnDParent : 67CAD9AD
		/// @DnDArgument : "const" "61"
		case 61:
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 2611AF4A
			/// @DnDInput : 2
			/// @DnDParent : 61AAD5E7
			/// @DnDArgument : "expr" "3"
			/// @DnDArgument : "expr_1" ""White""
			/// @DnDArgument : "var" "BoardPiece.Piece_ID"
			/// @DnDArgument : "var_1" "BoardPiece.Color"
			BoardPiece.Piece_ID = 3;
			BoardPiece.Color = "White";
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 3035FA1A
		/// @DnDParent : 67CAD9AD
		/// @DnDArgument : "const" "62"
		case 62:
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 6A0B030C
			/// @DnDInput : 2
			/// @DnDParent : 3035FA1A
			/// @DnDArgument : "expr" "2"
			/// @DnDArgument : "expr_1" ""White""
			/// @DnDArgument : "var" "BoardPiece.Piece_ID"
			/// @DnDArgument : "var_1" "BoardPiece.Color"
			BoardPiece.Piece_ID = 2;
			BoardPiece.Color = "White";
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 05D696B2
		/// @DnDParent : 67CAD9AD
		/// @DnDArgument : "const" "63"
		case 63:
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 5701910B
			/// @DnDInput : 2
			/// @DnDParent : 05D696B2
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "expr_1" ""White""
			/// @DnDArgument : "var" "BoardPiece.Piece_ID"
			/// @DnDArgument : "var_1" "BoardPiece.Color"
			BoardPiece.Piece_ID = 1;
			BoardPiece.Color = "White";
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 6B69A86D
		/// @DnDParent : 67CAD9AD
		/// @DnDArgument : "const" ""default""
		case "default":
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 18C24371
			/// @DnDParent : 6B69A86D
			/// @DnDArgument : "var" "BoardPiece.Piece_ID"
			BoardPiece.Piece_ID = 0;
			break;
	}
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 0FB758F7
/// @DnDArgument : "expr" "X>=1152"
if(X>=1152)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 76553D6E
	/// @DnDInput : 2
	/// @DnDParent : 0FB758F7
	/// @DnDArgument : "expr" "x"
	/// @DnDArgument : "expr_1" "144"
	/// @DnDArgument : "expr_relative_1" "1"
	/// @DnDArgument : "var" "X"
	/// @DnDArgument : "var_1" "Y"
	X = x;
	Y += 144;
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7524AA60
/// @DnDArgument : "expr" "144"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "X"
X += 144;