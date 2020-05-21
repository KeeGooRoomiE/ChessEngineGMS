///Setting behavior

randomize();

//Check for a player team

if (myColor = global.player)
{
	//Start a first step
	if (!timeIsSet)
	{
		alarm[0]=time;		//setting a delay for a behavior
		set_console("Player 2 is thinking...");
		time=irandom_range(1,2)*room_speed; //reset a random time
		timeIsSet=true;		//not allow to set alarm every step
	}
	
	//Take a random piece
	if (canStart && Phase = 1)
	{
		set_console("Player 2 takes his piece in hand...");
		//select a piece from any cells, check what it has a "Black" color and awailable moves this turn
		//it can be set with a while loop
		//save all move to an array
		//check for allowing make any sp moves
		//set a cell from an array to target cell by movingCell
		//set_console("Player 2 ");
		timeIsSet=false;
		Phase++;
	}
	
	//Make a move
	if (canStart && Phase = 3)
	{
		set_console("Player 2 makes a move...");
		//make a move 
		isEnded=true;
		canStart=false;
		Phase++;
	}
	
	if (isEnded)
	{
		//take the move to the real player
		//hope it will win you
		set_console("Player 2 takes a turn to you... Get him!");
		Phase = 0;
		timeIsSet=false;
		canStart=false;
		global.player=global.player*(-1);
		isEnded=false;
	}
}
else
{
	Phase = 0;
	timeIsSet=false;
	canStart=false;
	isEnded=false;
}