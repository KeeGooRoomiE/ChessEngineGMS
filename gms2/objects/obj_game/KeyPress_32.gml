/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 04847B65
/// @DnDArgument : "code" "///[HOMEWORK]$(13_10)$(13_10)// recreate this tricky statement to an if statement$(13_10)$(13_10)$(13_10)//Notice: dont forget about a if and else statement$(13_10)// if statement is true - behavior1 is starting$(13_10)// but if statement is false - behavior2 is starting$(13_10)$(13_10)$(13_10)// if (statement) {behavior1} else {behavior2}$(13_10)$(13_10)global.Debug_Mode = !global.Debug_Mode$(13_10)s_output_message("global variable is now "+string(global.Debug_Mode));$(13_10)$(13_10)//[HOMEWORK]$(13_10)$(13_10)//Create a 3 events for a pressing a Enter button on the keyboard$(13_10)$(13_10)//First one is for a Key Press$(13_10)//Second for a Key Down$(13_10)//Third is for a Key Released$(13_10)$(13_10)//For each of the events$(13_10)//add a s_output_message() our external function$(13_10)//with a different strings for an each of the events$(13_10)$(13_10)//like for a pressing a button the sring will be "You've pressed the button"$(13_10)//and for a releasing a putton the string will be "You've released the button""
///[HOMEWORK]

// recreate this tricky statement to an if statement


//Notice: dont forget about a if and else statement
// if statement is true - behavior1 is starting
// but if statement is false - behavior2 is starting


// if (statement) {behavior1} else {behavior2}

global.Debug_Mode = !global.Debug_Mode
s_output_message("global variable is now "+string(global.Debug_Mode));

//[HOMEWORK]

//Create a 3 events for a pressing a Enter button on the keyboard

//First one is for a Key Press
//Second for a Key Down
//Third is for a Key Released

//For each of the events
//add a s_output_message() our external function
//with a different strings for an each of the events

//like for a pressing a button the sring will be "You've pressed the button"
//and for a releasing a putton the string will be "You've released the button"