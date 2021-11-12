/// @description Insert description here
if (moving == true)
{
	if (targetx > x)
	{
		x += moveSpeed;
	}
	
	if (targetx < x)
	{
		x -= moveSpeed;
	}
	
	if (targety > y)
	{
		y += moveSpeed;	
	}
	
	if (targety < y)
	{
		y -= moveSpeed;	
	}
	
	if (abs(targetx - x) < 4 && abs(targety - y) < 4)
	{
		x = targetx;
		y = targety;
		moving = false;	
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
