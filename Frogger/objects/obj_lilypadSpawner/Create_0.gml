/// @description Insert description here
// You can write your code in this editor

startPos = 0;
lilySpeed = 0;
groupSize = 0;
groupCount = 0;
groupDistance = 0;
groupSpacing = 0;
firstCall = false;

//Fill screen immediately so you don't have to wait
function FillScreen()
{
	firstCall = true;
	
	for (var i = 0; i < groupSize; i++)
	{
		for (var j = 0; j < 3; j ++)
		{
			var lily = instance_create_layer((startPos) + (((groupDistance + (j * ((groupDistance) + (groupSpacing * (groupSize - 1))))) + (groupSpacing * i)) / (1 / lilySpeed)), y, "objects", obj_lilypad)
			lily.lilySpeed = lilySpeed;
		}
	}
}

alarm_set(0, 1);
alarm_set(1, 5);