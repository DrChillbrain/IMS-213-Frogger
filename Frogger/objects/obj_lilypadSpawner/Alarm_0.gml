/// @description Insert description here
// You can write your code in this editor

if (!firstCall)
{
	FillScreen();
}

var lily = instance_create_layer(startPos, y, "objects", obj_lilypad)
lily.lilySpeed = lilySpeed;

groupCount += 1;

if (groupCount == groupSize)
{	
	groupCount = 0;
	alarm_set(0, groupDistance);
}

else
{
	alarm_set(0, groupSpacing);
}

