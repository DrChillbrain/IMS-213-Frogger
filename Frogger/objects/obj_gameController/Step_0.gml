/// @description Checking for game over
// You can write your code in this editor
if (inGame)
{
	if (frogLives == -1)
	{
		audio_stop_sound(sn_carDie);
		audio_stop_sound(sn_waterDie);
		audio_play_sound(sn_gameOver, 1, false);
		
		backToMenu = true;
		if (musicToPlay == mus_level1)
		{
			musicToPlay = mus_level5;
		}
	
		if (musicToPlay == mus_level3)
		{
			musicToPlay = mus_level4;
		}
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

musicCounter += 1;
if (musicCounter == 576)
{
	musicCounter = 0;
	audio_play_sound(musicToPlay, 1, false);
	
	if (musicToPlay == mus_menu2)
	{
		musicToPlay = mus_level1;
	}
	
	if (musicToPlay == mus_level2)
	{
		musicToPlay = mus_level3;
	}
	
	if (musicToPlay == mus_level5)
	{
		musicToPlay = mus_menu1;
	}
	
	if (musicToPlay == mus_level4)
	{
		if (backToMenu == true)
		{
			backToMenu = false;
			musicToPlay = mus_menu1;
		}
		
		else if (backToMenu == false)
		{
			musicToPlay = mus_level1;
		}
	}
}