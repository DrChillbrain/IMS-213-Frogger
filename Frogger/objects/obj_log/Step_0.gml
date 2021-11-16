/// @description Insert description here
// You can write your code in this editor

x += logSpeed;

if (x > 1000 || x < -500)
{
	instance_destroy();
}

if (!obj_gameController.inGame)
{
	instance_destroy();
}