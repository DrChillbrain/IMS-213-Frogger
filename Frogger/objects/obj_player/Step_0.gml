/// @description Insert description here
if (moving == true)
{
	if (moveCounter < 8)
	{
		x += xmoveSpeed;
		y += ymoveSpeed;
		moveCounter += 1;
	}
	
	else
	{
		moving = false;
		xmoveSpeed = 0;
		ymoveSpeed = 0;
		moveCounter = 0;
	}
}

if (place_meeting(x, y, obj_lilypad) && moving == false)
{
	var lilySpot = instance_nearest(x, y, obj_lilypad);
	x = lilySpot.x;
}

if (place_meeting(x, y, obj_log) && moving == false)
{
	var logSpot = instance_nearest(x, y, obj_log);
	x = logSpot.x;
}

if (!place_meeting(x, y, obj_lilypad) && !place_meeting(x, y, obj_log) && place_meeting(x, y, obj_water) && moving = false)
{
	Lose();
}

if (place_meeting(x, y, obj_truck) || place_meeting(x, y, obj_car))
{
	Lose();
}
