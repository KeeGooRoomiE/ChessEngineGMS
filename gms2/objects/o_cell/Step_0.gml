/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 78A5C7E9
/// @DnDArgument : "code" "   ///Light up segments$(13_10)   $(13_10)   $(13_10)   //[HOMEWORK]$(13_10)   $(13_10)   //By pressing the space - trigger the global.Debug_Mode to true\false $(13_10)   //when it depends at the right moment$(13_10)   $(13_10)   //Add an if statement to check debug mode$(13_10)   //and if debug is true$(13_10)   //change o_cell images to proper of their colors$(13_10)   $(13_10)   //change sprite images inside of the spr_piece_white/black$(13_10)   $(13_10)    if (global.Selected=ID) $(13_10)    {$(13_10)        image_index=3;$(13_10)    }$(13_10)    else$(13_10)    {$(13_10)		//if (Color="White")$(13_10)		//{$(13_10)		//	image_index=1;$(13_10)		//}$(13_10)		//if (Color="Grey")$(13_10)		//{$(13_10)		//	image_index=0;$(13_10)		//}$(13_10)		//if (Color="Black")$(13_10)		//{$(13_10)		//	image_index=2;$(13_10)		//}$(13_10)		image_index=0;$(13_10)    };$(13_10)	$(13_10)	$(13_10)	//image_index=(global.Selected=ID);$(13_10)    //Lights up selected segment.$(13_10)    if  (CanMove=true)$(13_10)    {$(13_10)		image_index=2$(13_10)    };//Lights up a segment when selected piece can move to segment.$(13_10)    if  (CanTake=true)$(13_10)	{$(13_10)		image_index=3$(13_10)	};//Lights up a segment when selected piece can take a piece on the segment.$(13_10)    $(13_10)	$(13_10)	$(13_10)	//Debug$(13_10)    if global.Debug_Mode=true$(13_10)	{$(13_10)        if  (NotSafe=true)$(13_10)		{$(13_10)			image_index=4$(13_10)		};$(13_10)		//Debug option, will show any segments that are not safe to move to for the curent player.$(13_10)$(13_10)        if  (Protected=true)$(13_10)		{$(13_10)			image_index=5$(13_10)		};$(13_10)		//Debug option, will show any segments that are not safe to move to for the curent player.$(13_10)    };"
   ///Light up segments
   
   
   //[HOMEWORK]
   
   //By pressing the space - trigger the global.Debug_Mode to true\false 
   //when it depends at the right moment
   
   //Add an if statement to check debug mode
   //and if debug is true
   //change o_cell images to proper of their colors
   
   //change sprite images inside of the spr_piece_white/black
   
    if (global.Selected=ID) 
    {
        image_index=3;
    }
    else
    {
		//if (Color="White")
		//{
		//	image_index=1;
		//}
		//if (Color="Grey")
		//{
		//	image_index=0;
		//}
		//if (Color="Black")
		//{
		//	image_index=2;
		//}
		image_index=0;
    };
	
	
	//image_index=(global.Selected=ID);
    //Lights up selected segment.
    if  (CanMove=true)
    {
		image_index=2
    };//Lights up a segment when selected piece can move to segment.
    if  (CanTake=true)
	{
		image_index=3
	};//Lights up a segment when selected piece can take a piece on the segment.
    
	
	
	//Debug
    if global.Debug_Mode=true
	{
        if  (NotSafe=true)
		{
			image_index=4
		};
		//Debug option, will show any segments that are not safe to move to for the curent player.

        if  (Protected=true)
		{
			image_index=5
		};
		//Debug option, will show any segments that are not safe to move to for the curent player.
    };