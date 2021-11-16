/// @description Insert description here
if (moving == true)
{
image_index = 1;
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
		image_index = 0;
	}
}


if (place_meeting(x, y, obj_lilypad) && moving == false)
{
	
	var lilySpot = instance_nearest(x, y, obj_lilypad);
	if (abs(x - lilySpot.x) < 20)
	{
		x = lilySpot.x;
	}
	
	else
	{
		Lose();
	}
}

if (place_meeting(x, y, obj_log) && moving == false)
{
	var logSpot = instance_nearest(x, y, obj_log);
	if (abs(x - logSpot.x) < 17)
	{
		x = logSpot.x;
	}
	
	else
	{
		Lose();
	}
	
}

if (place_meeting(x, y, obj_thorns) && moving == false)
{
	var thornSpot = instance_nearest(x, y, obj_thorns);
	if (abs(x - thornSpot.x) < 17)
	{
		Lose();
	}
}

if (place_meeting(x, y, obj_landing) && moving == false)
{
	var landingSpot = instance_nearest(x, y, obj_landing);
	if (abs(x - landingSpot.x) < 17)
	{
		landingSpot.reached = true;
		Reach();
	}
}

if (!place_meeting(x, y, obj_lilypad) && !place_meeting(x, y, obj_log) && place_meeting(x, y, obj_water) && moving = false)
{
	Lose();
}

if (place_meeting(x, y, obj_truck))
{
	var truckSpot = instance_nearest(x, y, obj_truck);
	if (abs(x - truckSpot.x) < 28 && abs(y - truckSpot.y) < 20)
	{
		Lose();
	}
}

if (place_meeting(x, y, obj_car))
{
	var carSpot = instance_nearest(x, y, obj_car);
	if (abs(x - carSpot.x) < 20 && abs(y - carSpot.y) < 20)
	{
		Lose();
	}
}
