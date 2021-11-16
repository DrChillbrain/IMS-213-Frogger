/// @description Insert description here
// You can write your code in this editor

startPos = 0;
lilySpeed = 0;
groupSize = 0;
groupCount = 0;
groupDistance = 0;
groupSpacing = 0;
firstCall = false;

//Repeat 3
function FillScreen()
{
	firstCall = true;
	
	if (lilySpeed > 0)
	{
		var lilyDirection = 1;
	}
	
	else if (lilySpeed < 0)
	{
		var lilyDirection = -1;
	}
}

alarm_set(0, 1);