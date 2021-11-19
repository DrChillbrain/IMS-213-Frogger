/// @description Checking for game over
// You can write your code in this editor
if (inGame)
{
	if (frogLives == -1)
	{
		GameOver();
	}
	
	landingCounter = 0;

	if (instance_exists(obj_landing))
	{
		with(obj_landing)
		{
			if (reached)
			{
				obj_gameController.landingCounter += 1;
			}
		}
	
		if (landingCounter == 6)
		{
			ClearField();
			instance_destroy(obj_truck);
			instance_destroy(obj_car);
			instance_destroy(obj_lilypad);
			instance_destroy(obj_log);
			LevelWin();
		}
	}
}

if (keyboard_check_pressed(vk_escape))
{
	game_end();
}

if (controllerConnected)
{
	if (keyboard_check_pressed(ord("R")))
	{
		if (controllerConnected)
		{
			StartMap();
		}
	}
}

if (mapping)
{	
	for (var i = 0; i < gamepad_button_count(pad_num); i++)
	{	
		if (gamepad_button_check_pressed(pad_num, i))
		{
			pad_toCheck = i;
			NextStep();
		}
		
		if ((gamepad_axis_value(pad_num, pad_toCheck) > -0.5 && gamepad_axis_value(pad_num, pad_toCheck) < 0.5))
		{
			axisActive = false;
		}
		
		if ((gamepad_axis_value(pad_num, i) > 0.5 || gamepad_axis_value(pad_num, i) < -0.5) && axisActive == false)
		{
			pad_toCheck = i;
			axisActive = true;
			NextStep();
		}
	}
}