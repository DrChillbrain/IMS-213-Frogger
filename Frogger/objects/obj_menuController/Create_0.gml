/// @description Insert description here
// You can write your code in this editor

menuOption = 0;
levelOption = 0;
image_xscale = 2;
image_yscale = 2;
axisActive = false;
axisToCheck = 0;

x = 140;
y = 355; //300 + 55

function Enter()
{	
	if (obj_gameController.mainMenu == true && obj_gameController.levelSelect == false)
	{
		switch (menuOption)
		{
			case 2: //Quit
				game_end();
				break;
	
			case 1: //Level Select
				obj_gameController.mainMenu = false;
				obj_gameController.levelSelect = true;
				break;
	
			case 0: //Start
				obj_gameController.StartGame();
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
			
			case 0: //Back to main menu
				if (obj_gameController.levelSelect)
				{
					obj_gameController.levelSelect = false;
					obj_gameController.mainMenu = true;
				}
				break;
			
			default:
				show_debug_message("Something went wrong");
				break;
		}
	}
}

function Up()
{
	AxisCheck(obj_gameController.pad_up);
	
	menuOption -= 1;

	if (menuOption < 0)
	{
		menuOption = 2;
	}
}

function Down()
{
	AxisCheck(obj_gameController.pad_down);
	
	menuOption += 1;

	if (menuOption > 2)
	{
		menuOption = 0;
	}
}

function AxisCheck(axis)
{
	if (gamepad_axis_value(obj_gameController.pad_num, axis) > 0.5 || gamepad_axis_value(obj_gameController.pad_num, axis) < -0.5)
	{
		axisActive = true;
		axisToCheck = axis;
	}
}