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
				x = 140;
				y = 515;
				break;
		
			case 1: //Level Select
				x = 140;
				y = 435;
				break;
		
			case 0: //Start Game
				x = 140;
				y =  355;
				break;
		
			default:
				show_debug_message("Something went wrong");
				break;
		}
	}
	
	else if (obj_gameController.mainMenu == false && obj_gameController.levelSelect == true)
	{
		switch (levelOption)
		{
			case 10: //Level 10
				x = 310;
				y = 480 + 35;
				break;
			
			case 9: //Level 9
				x = 60;
				y = 480 + 35;
				break;
			
			case 8: //Level 8
				x = 310;
				y = 400 + 35;
				break; 
			
			case 7: //Level 7
				x = 60;
				y = 400 + 35;
				break; 
			
			case 6: //Level 6
				x = 310;
				y = 320 + 35;
				break;
			
			case 5: //Level 5
				x = 60;
				y = 320 + 35;
				break;
			
			case 4: //Level 4
				x = 310;
				y = 240 + 35;
				break;
		
			case 3: //Level 3
				x = 60;
				y = 240 + 35;
				break;
			
			case 2: //Level 2
				x = 310;
				y = 160 + 35;
				break;
		
			case 1: //Level 1
				x = 60;
				y = 160 + 35;
				break;
			
			case 0: //Back to Main Menu
				x = 60;
				y = 50 + 35;
				break;
				
			default:
				show_debug_message("Something went wrong");
				break;
		}
	}
}
