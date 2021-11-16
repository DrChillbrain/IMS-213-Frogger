/// @description Insert description here
// You can write your code in this editor

x += carSpeed;

if (carSpeed < -4 || carSpeed > 4)
{
	image_index = 1;
}

if (x > 650 || x < -150)
{
	instance_destroy();
}

if (!obj_gameController.inGame)
{
	instance_destroy();
}