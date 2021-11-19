/// @description Setting up the game
// You can write your code in this editor

controllerConnected = false;
mapping = false;
dpadIndex = 0;
buttonIndex = 0;
axisActive = false;
pad_num = 0;
pad_left = 0;
pad_up = 0;
pad_right = 0;
pad_down = 0;
pad_button = 0;

pad_toCheck = 0;
levelCount = 1;
realScore = 0;
drawScore = 0;

mainMenu = true;
levelSelect = false;
maxLevel = 1;

function MenuSetup()
{
	inGame = false;
	instance_create_layer(x, y, "hud_elements", obj_menuController);
	menuObjects = MenuCreator();
	landingCounter = 0;
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
	levelObjects = asset_get_index("Level" + string(levelCount) + "Creator")();
	if (maxLevel < levelCount)
	{
		maxLevel = levelCount;
	}
	frogLives = 3;
	mainMenu = true;
	levelSelect = false;

	instance_create_layer(x, y, "player", obj_player);
}

function LevelWin()
{
	realScore += 400;
	//obj_landing.reached = false;
	
	levelCount += 1;
	var setLives = frogLives;
	
	StartGame();
	frogLives = setLives;
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

function StopMapping()
{
	alarm_set(0, 30);
}