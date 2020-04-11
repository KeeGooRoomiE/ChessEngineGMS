/// End_Turn()


// Check to see if the moved piece is not safe
with o_Segment{

NotSafe=false; // reset if a segment is safe or not

    // Mark segments as not safe to move.
    if Piece_ID!=-1 and string(Colour)!=string(global.Turn){// Makes sure we dont select any empty segments or segments that can be moved to by the current player.
        if global.Piece_Data[Piece_ID,0]=5{S_King_Data(1)};// King
        if global.Piece_Data[Piece_ID,0]=0{S_Pawn_Data(1)};// Pawn
        if global.Piece_Data[Piece_ID,0]=2{S_Knight_Data(1)};// Knight
        if global.Piece_Data[Piece_ID,0]=1{S_Rook_Data(1)};// Rook
        if global.Piece_Data[Piece_ID,0]=3{S_Bishop_Data(1)};// Bishop
        if global.Piece_Data[Piece_ID,0]=4{S_Queen_Data(1)};// Queen
        
        
    };
    
};

// This script is run at the end of a player's turn, after a piece has made a move.
// Checkmate the player
with o_Segment{    // See if a player is in check.
// Make sure we dont select any empty segments or segments that cant be moved to by the current player.
    if Piece_ID!=-1 and string(Colour)=string(global.Turn) and
     // If piece is a king.
      global.Piece_Data[Piece_ID,0]=5{
        
            // Check segment to see if the king is currently safe
            if NotSafe=true{
            // If the king is not safe at the end of a turn then the other player is declared the winner.
                if global.Turn="White"{o_Controller.Win_Text="Check! Blacks Win!"};
                if global.Turn="Black"{o_Controller.Win_Text="Check! Whites Win!"};
            }}};
            
            

if global.Turn="White"{global.Turn="Black"}else{global.Turn="White"};//Change turn Colour.

with o_Segment{NotSafe=false NotSafeAggressor=noone if Colour=global.Turn{Protected=false};ProtectKing=false}//Reset all segments as safe to move.

// Reset all empty segments
with o_Segment{ if Piece_ID=-1{Colour=""}};

with o_Segment{
    // Mark segments as not safe to move.
    if Piece_ID!=-1 and string(Colour)!=string(global.Turn){// Makes sure we dont select any empty segments or segments that can be moved to by the current player.
        if global.Piece_Data[Piece_ID,0]=5{S_King_Data(1)};// King
        if global.Piece_Data[Piece_ID,0]=0{S_Pawn_Data(1)};// Pawn
        if global.Piece_Data[Piece_ID,0]=2{S_Knight_Data(1)};// Knight
        if global.Piece_Data[Piece_ID,0]=1{S_Rook_Data(1)};// Rook
        if global.Piece_Data[Piece_ID,0]=3{S_Bishop_Data(1)};// Bishop
        if global.Piece_Data[Piece_ID,0]=4{S_Queen_Data(1)};// Queen
        
        
    };
    
};

S_Check_Mate();
