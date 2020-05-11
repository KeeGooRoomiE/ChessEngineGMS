/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 258D512E
/// @DnDArgument : "code" "///Init console$(13_10)$(13_10)//read-only console with 10 strings to show variations of debug mode params$(13_10)$(13_10)$(13_10)console_text[0]=0;$(13_10)console_counter=0;$(13_10)init_alpha=1;$(13_10)$(13_10)global.debug_console=true; //sets global variable to trigger debug mode for whole game$(13_10)$(13_10)for (i=0; i<20; i++) //inits more than current and showing array wo errors$(13_10){$(13_10)    console_text[i]="init";$(13_10)    console_counter=i;$(13_10)    show_debug_message(console_text[i]); //adds debug message to show info in both places$(13_10)}$(13_10)"
///Init console

//read-only console with 10 strings to show variations of debug mode params


console_text[0]=0;
console_counter=0;
init_alpha=1;

global.debug_console=true; //sets global variable to trigger debug mode for whole game

for (i=0; i<20; i++) //inits more than current and showing array wo errors
{
    console_text[i]="init";
    console_counter=i;
    show_debug_message(console_text[i]); //adds debug message to show info in both places
}