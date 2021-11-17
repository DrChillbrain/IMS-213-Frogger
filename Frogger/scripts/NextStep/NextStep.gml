// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function NextStep()
{
	switch(obj_gameController.dpadIndex)
	{
		case 5: //Switch to button
			obj_gameController.pad_button = obj_gameController.pad_toCheck;
			obj_gameController.buttonIndex = 2;
			obj_gameController.StopMapping();
			break;
		
		case 4: //Left Button
			obj_gameController.pad_left = obj_gameController.pad_toCheck;
			obj_gameController.dpadIndex = 5;
			obj_gameController.buttonIndex = 1;
			break;
		
		case 3: //Down Button
			obj_gameController.pad_down = obj_gameController.pad_toCheck;
			obj_gameController.dpadIndex = 4;
			break;
		
		case 2: //Right Button
			obj_gameController.pad_right = obj_gameController.pad_toCheck;
			obj_gameController.dpadIndex = 3;
			break;
		
		case 1: //Up Button
			obj_gameController.pad_up = obj_gameController.pad_toCheck;
			obj_gameController.dpadIndex = 2;
			break;
			
		case 0: //Shouldn't happen
			show_debug_message("Something went wrong");
			break;
			
		default:
			show_debug_message("Something went wrong");
			break;
	}
}