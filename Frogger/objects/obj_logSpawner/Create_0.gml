/// @description Setting variables
// You can write your code in this editor

startPos = 0;
logSpeed = 0;

log1Size = 0;
log2Size = 0;
log3Size = 0;

firstCall = false;

function FillScreen()
{
	firstCall = true;
	
	if (logSpeed > 0)
	{
		var logDirection = 1;
	}
	
	else if (logSpeed < 0)
	{
		var logDirection = -1;
	}
	
	for (var i = 0; i < 2; i++)
	{
		for (var j = 0; j < log3Size; j++)
		{
			var log = instance_create_layer(startPos + (((log3Size * 32) + (j * 32)) * logDirection), y, "objects", obj_log);
			log.logSpeed = logSpeed;
		}
		
		for (var j = 0; j < log2Size; j++)
		{
			var log = instance_create_layer(startPos + (((log3Size * 32 * 2) + (log2Size * 32) + (j * 32)) * logDirection), y, "objects", obj_log);
			log.logSpeed = logSpeed;
		}
		
		for (var j = 0; j < log1Size; j++)
		{
			var log = instance_create_layer(startPos + (((log3Size * 32 * 2) + (log2Size * 32 * 2) + (log1Size * 32) + (j * 32)) * logDirection), y, "objects", obj_log);
			log.logSpeed = logSpeed;
		}
	}
}

alarm_set(0, 1);