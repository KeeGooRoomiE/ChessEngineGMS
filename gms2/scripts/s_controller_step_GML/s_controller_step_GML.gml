///Win Conditions

WhiteKing=0;
BlackKing=0;
White=0; 
Black=0;
//Setup variables.
    

//Loop for checking all the pieces
with (obj_cell)
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
with (obj_cell)
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