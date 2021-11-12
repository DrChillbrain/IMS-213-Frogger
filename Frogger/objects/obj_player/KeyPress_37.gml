/// @description Move left
if (moving == false)
{
	if (place_meeting(x, y, obj_lilypad))
	{
		var lilyObj = instance_nearest(x, y, obj_lilypad);
		moveSpeed = 4 * abs(lilyObj.lilySpeed);
		targetx = x - (32 - (4 * abs(lilyObj.lilySpeed)));
	}
	
	else if (place_meeting(x, y, obj_log))
	{
		var logObj = instance_nearest(x, y, obj_log);
		moveSpeed = 4 * abs(logObj.logSpeed);
		targetx = x - (32 - (4 * abs(logObj.logSpeed)));
	}
	
	else
	{
		moveSpeed = 4;
		targetx = x - 32;
	}
	
	image_angle = 180;
	targety = y;
	moving = true;
}