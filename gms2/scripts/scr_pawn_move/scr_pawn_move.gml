///@descr scr_pawn_move(val)
//Pawns are the only piece that requires code for both sides in this script due to the way this piece moves in a certain direction.


//TODO:

//reset positions in functions to an array

//pos[0,0]=x;
//pos[0,1]=y;
//...


//if (Color = "Black")
//{
//    XX=x+sprite_width/2;
//    YY=y+sprite_height+32;
//}
//else
//{
//    XX=x+sprite_width/2;
//    YY=y-sprite_height/2;
//}

if argument0=0
{

    if Color="Black"
	{
        //common move
		if (Moves>0)
		{
            Returned=collision_point(x+sprite_width/2,y+sprite_height+32,obj_cell,false,true);
            
            if (Returned!=noone and Returned.Piece_ID=-1)
			{
				Returned.CanMove=true;
			}
			else
			{
				Returned.CanMove=false;
			}
		};
        
             
         {
           
		   //moving to next cell
            Returned=collision_point(x+sprite_width/2,y+sprite_height+32,obj_cell,false,true);
			
            if (Returned!=noone and Returned.Piece_ID=-1)
			{
				Returned.CanMove=true;
			};
			
			
			//first allowing to move in two cells next 
            if (Returned!=noone and Returned.Piece_ID=-1)
			{
                Returned=collision_point(x+sprite_width/2,y+sprite_height*2+3,obj_cell,false,true);
                if (Returned!=noone and Returned.Piece_ID=-1 and Moves=0)
				{
					Returned.CanMove=true
				};
            }
		}

        //check for taking bottom right cell for allowing take out the piece
        Returned=collision_point(x+sprite_width+32,y+sprite_height+32,obj_cell,false,true);
        if (Returned!=noone and Returned.Piece_ID!=-1 and Returned.Color!=Color)
		{
			Returned.CanTake=true;
		};

         //check for taking bottom left cell for allowing take out the piece
        Returned=collision_point(x-sprite_width/2,y+sprite_height+32,obj_cell,false,true);
        if (Returned!=noone and Returned.Piece_ID!=-1 and Returned.Color!=Color)
		{
			Returned.CanTake=true;
		};
    }

    //White Moves
    if Color="White"
	{
        if Moves>0
		{//Check to see if the pawn has not moved, and if it has not we will allowed it to move two segments in front of it instead of one.
            Returned=collision_point(x+sprite_width/2,y-sprite_height/2,obj_cell,false,true); //// |
            //Check one segment ahead
            if Returned!=noone and Returned.Piece_ID=-1
			{
				Returned.CanMove=true
			}
		};
        {
            //Check two segment ahead
            Returned=collision_point(x+sprite_width/2,y-sprite_height/2,obj_cell,false,true);
            if Returned!=noone and Returned.Piece_ID=-1
			{
				Returned.CanMove=true
			};
            if Returned!=noone and Returned.Piece_ID=-1
			{
                Returned=collision_point(x+sprite_width/2,y-(sprite_height/2)*2,obj_cell,false,true);
                if Returned!=noone and Returned.Piece_ID=-1 and Moves=0
				{
					Returned.CanMove=true
				}
			}
		}

        //Take Right
        Returned=collision_point(x+sprite_width+32,y-sprite_height/2,obj_cell,false,true);
        if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Color!=Color{Returned.CanTake=true};

        //Take Left
        Returned=collision_point(x-sprite_width/2,y-sprite_height/2,obj_cell,false,true);
        if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Color!=Color{Returned.CanTake=true};
    }
}



if argument0=1{//Check board and mark none safe areas

    //Black Moves
    if Color="Black"{

        //Take Right
        Returned=collision_point(x+sprite_width+32,y+sprite_height+32,obj_cell,false,true);
        if Returned!=noone {Returned.NotSafe=true};

        //Take Left
        Returned=collision_point(x-sprite_width/2,y+sprite_height+32,obj_cell,false,true);
        if Returned!=noone {Returned.NotSafe=true};
    }

    //White Moves
    if Color="White"{

        //Take Right
        Returned=collision_point(x+sprite_width+32,y-sprite_height/2,obj_cell,false,true);
        if Returned!=noone {Returned.NotSafe=true};

        //Take Left
        Returned=collision_point(x-sprite_width/2,y-sprite_height/2,obj_cell,false,true);
        if Returned!=noone {Returned.NotSafe=true};
    }
}