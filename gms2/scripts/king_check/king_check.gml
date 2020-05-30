//check if king is ok

with (obj_cell)
    {
    if (Color = "White")
        {
        if (W_NotSafe=1) and (Piece_ID=5)
            {
            global.scacco=true;
            }
        else
            {
            global.scacco=false;
            }
        }
    else
        {
        if (Color = "Black")
            {
            if (B_NotSafe) and (Piece_ID=5)
                {
                global.scacco=true;
                }
            else
                {
                global.scacco=false;
                }
            }
        }
    }

