/// @description Insert description here
x += truckSpeed;

if (x > 650 || x < -150)
{
	instance_destroy();
}

if (!obj_gameController.inGame)
{
	instance_destroy();
}