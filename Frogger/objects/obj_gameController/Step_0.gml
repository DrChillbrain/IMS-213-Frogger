/// @description Checking for game over
// You can write your code in this editor
if (inGame)
{
	if (frogLives == -1)
	{
		GameOver();
	}
	
	landingCounter = 0;

	with(obj_landing)
	{
		if (reached)
		{
			obj_gameController.landingCounter += 1;
		}
	}
	
	if (landingCounter == 6)
	{
		LevelWin();
	}
}
