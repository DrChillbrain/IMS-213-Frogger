/// @description Insert description here
// You can write your code in this editor

switch (menuOption)
{		
	case 2: //Quit
		y = 515;
		break;
		
	case 1: //Level Select
		y = 435;
		break;
		
	case 0: //Start Game
		y =  355;
		break;
		
	default:
		show_debug_message("Something went wrong");
		break;
}