/// @description Insert description here
// You can write your code in this editor

switch (menuOption)
{
	case 2: //Quit
		game_end();
		break;
	
	case 1: //Level Select
		break;
	
	case 0: //Start
		obj_gameController.StartGame();
		break;
		
	default:
		show_debug_message("Something went wrong");
		break;
}