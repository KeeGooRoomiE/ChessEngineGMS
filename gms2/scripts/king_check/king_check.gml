//check if king is ok
//with (obj_cell)
//{

with (Returned)
{

	if (Color = "Black")
	{
		if (B_NotSafe=1 and Piece_ID=5)
		{
			global.scacco = 1
			global.mode = 2
			global.B_ScaccoKing=Returned;
			
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
			if (W_NotSafe=1 and Piece_ID=5)
	        {
				global.scacco = 1;
				global.mode = 2
				global.W_ScaccoKing=Returned;
	        }
	        else
	        {
	            //global.scacco=0;
	        }
	    }
	}
}
//}
