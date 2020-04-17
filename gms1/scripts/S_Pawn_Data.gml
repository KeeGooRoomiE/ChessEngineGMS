/// S_Pawn_Data()
//Pawns are the only piece that requires code for both sides in this script due to the way this piece moves in a certain direction.

if argument[0]=0{//Selected To Move
    //Black Moves
    if Colour="Black"{
        if Moves>0{//Check to see if the pawn has not moved, and if it has not we will allowed it to move two segments in front of it instead of one.
            Returned=collision_point(x+sprite_width/2,y+sprite_height+32,o_Segment,false,true);
            //Check one segment ahead
            if Returned!=noone and Returned.Piece_ID=-1{Returned.CanMove=true}};
        
             
         {
            //Check two segment ahead
            Returned=collision_point(x+sprite_width/2,y+sprite_height+32,o_Segment,false,true);
            if Returned!=noone and Returned.Piece_ID=-1{Returned.CanMove=true};
            if Returned!=noone and Returned.Piece_ID=-1{
                Returned=collision_point(x+sprite_width/2,y+sprite_height*2+3,o_Segment,false,true);
                if Returned!=noone and Returned.Piece_ID=-1 and Moves=0{Returned.CanMove=true};
            }}

        //Take Right
        Returned=collision_point(x+sprite_width+32,y+sprite_height+32,o_Segment,false,true);
        if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Colour!=Colour{Returned.CanTake=true};

        //Take Left
        Returned=collision_point(x-sprite_width/2,y+sprite_height+32,o_Segment,false,true);
        if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Colour!=Colour{Returned.CanTake=true};
    }

    //White Moves
    if Colour="White"{
        if Moves>0{//Check to see if the pawn has not moved, and if it has not we will allowed it to move two segments in front of it instead of one.
            Returned=collision_point(x+sprite_width/2,y-sprite_height/2,o_Segment,false,true);
            //Check one segment ahead
            if Returned!=noone and Returned.Piece_ID=-1{Returned.CanMove=true}};
        {
            //Check two segment ahead
            Returned=collision_point(x+sprite_width/2,y-sprite_height/2,o_Segment,false,true);
            if Returned!=noone and Returned.Piece_ID=-1{Returned.CanMove=true};
            if Returned!=noone and Returned.Piece_ID=-1{
                Returned=collision_point(x+sprite_width/2,y-(sprite_height/2)*2,o_Segment,false,true);
                if Returned!=noone and Returned.Piece_ID=-1 and Moves=0{Returned.CanMove=true}}}

        //Take Right
        Returned=collision_point(x+sprite_width+32,y-sprite_height/2,o_Segment,false,true);
        if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Colour!=Colour{Returned.CanTake=true};

        //Take Left
        Returned=collision_point(x-sprite_width/2,y-sprite_height/2,o_Segment,false,true);
        if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Colour!=Colour{Returned.CanTake=true};
    }
}



if argument[0]=1{//Check board and mark none safe areas

    //Black Moves
    if Colour="Black"{

        //Take Right
        Returned=collision_point(x+sprite_width+32,y+sprite_height+32,o_Segment,false,true);
        if Returned!=noone {Returned.NotSafe=true};

        //Take Left
        Returned=collision_point(x-sprite_width/2,y+sprite_height+32,o_Segment,false,true);
        if Returned!=noone {Returned.NotSafe=true};
    }

    //White Moves
    if Colour="White"{

        //Take Right
        Returned=collision_point(x+sprite_width+32,y-sprite_height/2,o_Segment,false,true);
        if Returned!=noone {Returned.NotSafe=true};

        //Take Left
        Returned=collision_point(x-sprite_width/2,y-sprite_height/2,o_Segment,false,true);
        if Returned!=noone {Returned.NotSafe=true};
    }
}
