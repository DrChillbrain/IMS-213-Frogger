/// @description Scanning for controller
// You can write your code in this editor

switch(async_load[? "event_type"])
{
	case "gamepad discovered":
	{
		var pad = async_load[? "pad_index"];
		pad_num = pad;
		if (!controllerConnected)
		{
			StartMap();
		}
		controllerConnected = true;
		gamepad_set_axis_deadzone(pad, 0.5);
		gamepad_set_button_threshold(pad, 0.1);
		break;
	}
	
	case "gamepad lost":
	{
		var pad = async_load[? "pad_index"];
		pad_num = pad;
		controllerConnected = false;
		break;
	}
}