/// @description Spawning 2nd log
// You can write your code in this editor

for (var i = 0; i < log2Size; i++)
{
	var log = instance_create_layer((startPos + (i * 32)), y, "objects", obj_log);
	log.logSpeed = logSpeed;
}

alarm_set(2, (32 * (2 / abs(logSpeed)) * log2Size));