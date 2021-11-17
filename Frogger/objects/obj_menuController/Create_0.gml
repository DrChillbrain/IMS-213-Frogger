/// @description Insert description here
// You can write your code in this editor

menuOption = 0;
image_xscale = 2;
image_yscale = 2;
axisActive = false;
axisToCheck = 0;

x = 140;
y = 355; //300 + 55

function Enter()
{	
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