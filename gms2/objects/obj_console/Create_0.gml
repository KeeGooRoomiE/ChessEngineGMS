///Init console

//read-only console with 10 strings to show variations of debug mode params


console_text[0]=0;
console_counter=0;
init_alpha=1;

global.debug_console=true; //sets global variable to trigger debug mode for whole game

for (i=0; i<20; i++) //inits more than current and showing array wo errors
{
    console_text[i]="";
    console_counter=i;
    show_debug_message(console_text[i]); //adds debug message to show info in both places
}

set_console("Init game: OK");
