/// S_Bishop_Data()
if argument[0]=0{//Selected To Move
    //Down Right
    var Returned=0;
    Y=y+sprite_height+1;
    X=x+sprite_width+1;
    while Returned!=noone
    {
        Returned=collision_point(X,Y,o_Segment,false,true);
        if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Colour=Colour{break};
        if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Colour!=Colour{Returned.CanTake=true break};
        if Returned!=noone{Returned.CanMove=true};
        Y+=sprite_height X+=sprite_height;
    }

    //Down Left
    var Returned=0;
    Y=y+sprite_height+1;
    X=x-1;
    while Returned!=noone
    {
        Returned=collision_point(X,Y,o_Segment,false,true);
        if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Colour=Colour{break};
        if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Colour!=Colour{Returned.CanTake=true break};
        if Returned!=noone{Returned.CanMove=true};
        Y+=sprite_height X-=sprite_height;
    }

    //Up Left
    var Returned=0;
    Y=y-1;
    X=x-1;
    while Returned!=noone
    {
        Returned=collision_point(X,Y,o_Segment,false,true);
        if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Colour=Colour{break};
        if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Colour!=Colour{Returned.CanTake=true break};
        if Returned!=noone{Returned.CanMove=true};
        Y-=sprite_height X-=sprite_height;
    };

    //Up Right
    var Returned=0;
    Y=y-1;
    X=x+sprite_width+1;
    while Returned!=noone
    {
        Returned=collision_point(X,Y,o_Segment,false,true);
        if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Colour=Colour{break};
        if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Colour!=Colour{Returned.CanTake=true break};
        if Returned!=noone{Returned.CanMove=true};
        Y-=sprite_height X+=sprite_height;
    };
};

if argument[0]=1{//Check board and mark none safe areas



    //Down Right
    var Returned=0;
    Y=y+sprite_height+1;
    X=x+sprite_width+1;
    while Returned!=noone
    {
        Returned=collision_point(X,Y,o_Segment,false,true);
   if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Colour=Colour{Returned.NotSafe=true break};
        if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Colour!=Colour{Returned.NotSafe=true break};
        if Returned!=noone{Returned.NotSafe=true};
        Y+=sprite_height X+=sprite_height;
    }

    //Down Left
    var Returned=0;
    Y=y+sprite_height+1;
    X=x-1;
    while Returned!=noone
    {
        Returned=collision_point(X,Y,o_Segment,false,true);
        if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Colour=Colour{Returned.NotSafe=true break};
        if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Colour!=Colour{Returned.NotSafe=true break};
        if Returned!=noone{Returned.NotSafe=true};
        Y+=sprite_height X-=sprite_height;
    }

    //Up Left
    var Returned=0;
    Y=y-1;
    X=x-1;
    while Returned!=noone
    {
        Returned=collision_point(X,Y,o_Segment,false,true);
        if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Colour=Colour{Returned.NotSafe=true break};
        if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Colour!=Colour{Returned.NotSafe=true break};
        if Returned!=noone{Returned.NotSafe=true};
        Y-=sprite_height X-=sprite_height;
    }

    //Up Right
    var Returned=0;
    Y=y-1;
    X=x+sprite_width+1;
    while Returned!=noone
    {
        Returned=collision_point(X,Y,o_Segment,false,true);
        if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Colour=Colour{Returned.NotSafe=true break};
        if Returned!=noone and Returned.Piece_ID!=-1 and Returned.Colour!=Colour{Returned.NotSafe=true break};
        if Returned!=noone{Returned.NotSafe=true};
        Y-=sprite_height X+=sprite_height;
    }};
