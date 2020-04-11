//This script allows us to check to see if the players king is unsafe, this is run at the start of a new players turn.
with o_Segment{    //See if a player is in check.
    if Piece_ID!=-1 and string(Colour)=string(global.Turn){//Makes sure we dont select any empty segments or segments that cant be moved to by the current player.
        
        if global.Piece_Data[Piece_ID,0]=5{
        
            //Check segment to see if the king is currently safe
            if NotSafe=true{global.Check=global.Turn  S_King_Data(2); 
            
        }else{if global.Check=global.Turn{global.Check="";
    }};
    }};
            
            
            }
