/// @description Insert description here
// You can write your code in this editor

if (!obj_gameController.mapping)
{
	if (gamepad_axis_value(obj_gameController.pad_num, axisToCheck) < 0.5 && gamepad_axis_value(obj_gameController.pad_num, axisToCheck) > -0.5)
	{
		axisActive = false;
	}
	
	if (keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_space) || gamepad_button_check_pressed(obj_gameController.pad_num, obj_gameController.pad_button))
	{
		Enter();
	}

	if (keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_up) || gamepad_button_check_pressed(obj_gameController.pad_num, obj_gameController.pad_up) || gamepad_axis_value(obj_gameController.pad_num, obj_gameController.pad_up) < -0.5)
	{
		if (!axisActive)
		{
			Up();
		}
	}

	if (keyboard_check_pressed(ord("S")) || keyboard_check_pressed(vk_down) || gamepad_button_check_pressed(obj_gameController.pad_num, obj_gameController.pad_down) || gamepad_axis_value(obj_gameController.pad_num, obj_gameController.pad_down) > 0.5)
	{
		if (!axisActive)
		{
			Down();
		}
	}

	if (obj_gameController.mainMenu == true && obj_gameController.levelSelect == false)
	{
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
	}
	
	if (obj_gameController.mainMenu == false && obj_gameController.levelSelect == true)
	{
		switch (levelOption)
		{
			case 10: //Level 10
				break;
			
			case 9: //Level 9
				break;
			
			case 8: //Level 8
				break; 
			
			case 7: //Level 7
				break; 
			
			case 6: //Level 6
				break;
			
			case 5: //Level 5
				break;
			
			case 4: //Level 4
				break;
		
			case 3: //Level 3
				break;
			
			case 2: //Level 2
				break;
		
			case 1: //Level 1
				break;
			
			case 0: //Back to Main Menu
				
				break;
			
			default:
				show_debug_message("Something went wrong");
				break;
		}
	}
}
