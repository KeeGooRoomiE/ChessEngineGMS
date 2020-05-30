//check if king is ok
if (Color = "White")
{
	if (W_NotSafe=true and Piece_ID=5)
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
			if (B_NotSafe=true and Piece_ID=5)
            {
				global.scacco=true;
            }
            else
            {
                global.scacco=false;
            }
        }
    }

