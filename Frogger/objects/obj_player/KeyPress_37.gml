/// @description Move left
if (moving == false)
{
	if (place_meeting(x, y, obj_lilypad))
	{
		var lilyObj = instance_nearest(x, y, obj_lilypad);
		xmoveSpeed = -4 + lilyObj.lilySpeed;
	}
	
	else if (place_meeting(x, y, obj_log))
	{
		var logObj = instance_nearest(x, y, obj_log);
		xmoveSpeed = -4 + logObj.logSpeed;
	}
	
	else
	{
		xmoveSpeed = -4;
	}
	
	image_angle = 180;
	moving = true;
}