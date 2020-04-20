/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3E16296A
/// @DnDInput : 4
/// @DnDArgument : "var" "Whiteking"
/// @DnDArgument : "var_1" "BlackKing"
/// @DnDArgument : "var_2" "White"
/// @DnDArgument : "var_3" "Black"
Whiteking = 0;
BlackKing = 0;
White = 0;
Black = 0;

/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 3ACEA00B
/// @DnDApplyTo : 1db76b82-9ba6-4e87-87c2-3fa44f9f78c3
with(o_segment) {
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1DE8B928
	/// @DnDParent : 3ACEA00B
	/// @DnDArgument : "var" "Color"
	/// @DnDArgument : "value" "White"
	if(Color == White)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 47129429
		/// @DnDParent : 1DE8B928
		/// @DnDArgument : "var" "Piece_ID"
		/// @DnDArgument : "not" "1"
		/// @DnDArgument : "value" "-1"
		if(!(Piece_ID == -1))
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 3E0AAF6C
			/// @DnDParent : 47129429
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "other.white"
			other.white += 1;
		}
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0EB9BE21
	/// @DnDParent : 3ACEA00B
	/// @DnDArgument : "var" "Colour"
	/// @DnDArgument : "value" "Black"
	if(Color == Black)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5C80EA35
		/// @DnDParent : 0EB9BE21
		/// @DnDArgument : "var" "Piece_ID"
		/// @DnDArgument : "not" "1"
		/// @DnDArgument : "value" "-1"
		if(!(Piece_ID == -1))
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 493410EF
			/// @DnDParent : 5C80EA35
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "other.Black"
			other.Black += 1;
		}
	}
}

/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 72A30CD5
/// @DnDApplyTo : 1db76b82-9ba6-4e87-87c2-3fa44f9f78c3
with(o_segment) {
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 215D4E61
	/// @DnDParent : 72A30CD5
	/// @DnDArgument : "var" "Color"
	/// @DnDArgument : "value" "White"
	if(Color == White)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0406D389
		/// @DnDParent : 215D4E61
		/// @DnDArgument : "var" "Piece_ID"
		/// @DnDArgument : "value" "5"
		if(Piece_ID == 5)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 2FC960E1
			/// @DnDParent : 0406D389
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "other.WhiteKing"
			other.WhiteKing += 1;
		}
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 27D4AD78
	/// @DnDParent : 72A30CD5
	/// @DnDArgument : "var" "Colour"
	/// @DnDArgument : "value" "Black"
	if(Color == Black)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 539A3271
		/// @DnDParent : 27D4AD78
		/// @DnDArgument : "var" "Piece_ID"
		/// @DnDArgument : "value" "5"
		if(Piece_ID == 5)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 61BA9FE8
			/// @DnDParent : 539A3271
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "other.BlackKing"
			other.BlackKing += 1;
		}
	}
}