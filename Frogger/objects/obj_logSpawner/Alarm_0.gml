/// @description Spawning 1st log
// You can write your code in this editor

if (!firstCall)
{
	FillScreen();
}

for (var i = 0; i < log1Size; i++)
{
	var log = instance_create_layer((startPos + (i * 32)), y, "objects", obj_log);
	log.logSpeed = logSpeed;
}

alarm_set(1, (32 * (2 / abs(logSpeed)) * log1Size));