//check if king is ok
//with (obj_cell)
//{

with (Returned)
{

	if (Color = "Black")
	{
		if (W_NotSafe=1 and Piece_ID=5)
		{
			global.scacco = 1
			global.mode = 2
	    }
	    else
	    {
			//global.scacco=0;
	    }
	}
	else
	{
		if (Color = "White")
	    {
			if (B_NotSafe=1 and Piece_ID=5)
	        {
				global.scacco = 1;
				global.mode = 2
	        }
	        else
	        {
	            //global.scacco=0;
	        }
	    }
	}
}
//}
