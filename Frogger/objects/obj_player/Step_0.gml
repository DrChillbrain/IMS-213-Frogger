/// @description Insert description here
if (moving == true)
{
	if (targetx > x)
	{
		x += 4;
	}
	
	if (targetx < x)
	{
		x -= 4;
	}
	
	if (targety > y)
	{
		y += 4;	
	}
	
	if (targety < y)
	{
		y -= 4;	
	}
	
	if (targetx = x && targety = y)
	{
		moving = false;	
	}
}

if (place_meeting(x,y,obj_lilypad) && moving = false)
{
	var lilySpot = instance_nearest(x, y, obj_lilypad);
	x = lilySpot.x;
}

if !place_meeting(x,y,obj_lilypad) && !place_meeting(x,y,obj_lilypad) && place_meeting(x,y,obj_water) && moving = false
{
	Lose();
}