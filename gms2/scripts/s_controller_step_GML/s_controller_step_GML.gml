/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4C7DE037
/// @DnDArgument : "code" "///Win Conditions$(13_10)$(13_10)WhiteKing=0;$(13_10)BlackKing=0;$(13_10)White=0; $(13_10)Black=0;$(13_10)//Setup variables.$(13_10)    $(13_10)$(13_10)//Loop for checking all the pieces$(13_10)with (o_segment)$(13_10){$(13_10)    ///Counting for a white pieces at the board$(13_10)    if (Colour="White" and Piece_ID!=-1) $(13_10)    {$(13_10)        other.White+=1;$(13_10)    } $(13_10)    //Counting for a black pieces at the board$(13_10)    if (Colour="Black" and Piece_ID!=-1)$(13_10)    {$(13_10)        other.Black+=1;$(13_10)    }$(13_10)};$(13_10)$(13_10)//Loop for checking all the kings$(13_10)    //Check to see if players have their king.$(13_10)with (o_segment)$(13_10){$(13_10)    if (Colour="White" and Piece_ID=5)$(13_10)    {$(13_10)        other.WhiteKing+=1;$(13_10)    } $(13_10)    if (Colour="Black" and Piece_ID=5) $(13_10)    {$(13_10)        other.BlackKing+=1;$(13_10)    }$(13_10)};$(13_10)$(13_10)$(13_10)    //Set winner if players dont have any pieces    $(13_10)if White=0  //no white pieces at the board$(13_10){$(13_10)    Win_Text="Blacks Win!"$(13_10)}$(13_10)    $(13_10)if Black=0  //no black pieces at the board$(13_10){$(13_10)    Win_Text="Whites Win!"$(13_10)};$(13_10)$(13_10)$(13_10)$(13_10)//Check for an existing King for a both teams$(13_10)$(13_10)if WhiteKing=0      //If white king dont exists$(13_10){$(13_10)    Win_Text="Blacks Win!" //blacks win$(13_10)}$(13_10)$(13_10)if BlackKing=0  //for the black are equals$(13_10){$(13_10)    Win_Text="Whites Win!" //whites win$(13_10)};$(13_10)$(13_10)$(13_10)$(13_10)"
///Win Conditions

WhiteKing=0;
BlackKing=0;
White=0; 
Black=0;
//Setup variables.
    

//Loop for checking all the pieces
with (o_segment)
{
    ///Counting for a white pieces at the board
    if (Color="White" and Piece_ID!=-1) 
    {
        other.White+=1;
    } 
    //Counting for a black pieces at the board
    if (Color="Black" and Piece_ID!=-1)
    {
        other.Black+=1;
    }
};

//Loop for checking all the kings
    //Check to see if players have their king.
with (o_segment)
{
    if (Color="White" and Piece_ID=5)
    {
        other.WhiteKing+=1;
    } 
    if (Color="Black" and Piece_ID=5) 
    {
        other.BlackKing+=1;
    }
};


    //Set winner if players dont have any pieces    
if White=0  //no white pieces at the board
{
    Win_Text="Blacks Win!"
}
    
if Black=0  //no black pieces at the board
{
    Win_Text="Whites Win!"
};



//Check for an existing King for a both teams

if WhiteKing=0      //If white king dont exists
{
    Win_Text="Blacks Win!" //blacks win
}

if BlackKing=0  //for the black are equals
{
    Win_Text="Whites Win!" //whites win
};