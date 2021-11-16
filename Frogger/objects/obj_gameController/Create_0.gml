/// @description Setting up the game
// You can write your code in this editor

function MenuSetup()
{
	inGame = false;
	instance_create_layer(x, y, "hud_elements", obj_menuController);
	menuObjects = MenuCreator();
}

MenuSetup();

function StartGame()
{
	//Deleting menu items
	for (var i = 0; i < array_length(menuObjects); i++)
	{
		instance_destroy(menuObjects[i]);
	}

	instance_destroy(obj_menuController);
	inGame = true;
	
	//Making in game items
	levelObjects = Level1Creator();
	frogLives = 3;

	realScore = 0;
	drawScore = 0;

	instance_create_layer(x, y, "player", obj_player);
}

function ClearField()
{
	for (var i = 0; i < array_length(levelObjects); i++)
	{
		var objectArray = levelObjects[i];
		for (var j = 0; j < array_length(objectArray); j++)
		{
			instance_destroy(objectArray[j]);
		}
	}
	
	instance_destroy(obj_player);
}