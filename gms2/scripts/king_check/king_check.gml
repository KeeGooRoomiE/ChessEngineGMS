//check if king is ok

global.CheckingCellDebug=Returned;

if argument0 = 0

with (Returned)
{
	
	if (Color == "Black")
	{
		if (B_NotSafe==1)
		{
			if (Piece_ID==5)
			{
				global.scacco = 1
				global.mode = 2
				global.check = "Black"
				where_king(0)
				
			}
		}
	    else
	    {}
	}
}

with (Returned)
{
if argument0 = 1
	{
		if (Color = "White")
		{
			if (W_NotSafe=1 and Piece_ID=5)
		    {
				global.scacco = 1;
				global.mode = 2
				global.check = "White"
				where_king(1)
				
		    }
		    else
		    {}
		}
	}
}
