/// @description Insert description here
x += lilySpeed;

if (lilySpeed > 0)
{
	image_xscale = -1;
}

if (x > 650 || x < -150)
{
	instance_destroy();
}

if (!obj_gameController.inGame)
{
	instance_destroy();
}