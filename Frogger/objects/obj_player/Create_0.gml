/// @description Insert description here
// You can write your code in this editor
x = 304;
y = 560;
image_angle = 90;

moving = false;
moveCounter = 0;
xmoveSpeed = 0;
ymoveSpeed = 0;
image_index = 0;
axisActive = false;
axisToCheck = 0;

function Left()
{
	AxisCheck(obj_gameController.pad_left);
	
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
}

function Up()
{
	AxisCheck(obj_gameController.pad_up);
	
	if (moving == false)
	{
		image_angle = 90;
		moving = true;
		ymoveSpeed = -4;
	}
}

function Right()
{
	AxisCheck(obj_gameController.pad_right);
	
	if (moving == false)
	{
		if (place_meeting(x, y, obj_lilypad))
		{
			var lilyObj = instance_nearest(x, y, obj_lilypad);
			xmoveSpeed = 4 + lilyObj.lilySpeed;
		}
	
		else if (place_meeting(x, y, obj_log))
		{
			var logObj = instance_nearest(x, y, obj_log);
			xmoveSpeed = 4 + logObj.logSpeed;
		}
	
		else
		{
			xmoveSpeed = 4;
		}
	
		image_angle = 360;
		moving = true;
	}
}

function Down()
{
	AxisCheck(obj_gameController.pad_down);
	
	if (moving == false)
	{
		image_angle = 270;
		moving = true;
		ymoveSpeed = 4;
	}
}

function AxisCheck(axis)
{
	if (gamepad_axis_value(obj_gameController.pad_num, axis) > 0.5 || gamepad_axis_value(obj_gameController.pad_num, axis) < -0.5)
	{
		axisActive = true;
		axisToCheck = axis;
	}
}