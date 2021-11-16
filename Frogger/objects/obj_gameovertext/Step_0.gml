/// @description Insert description here

counter += 1;

if (counter <= 10)
{
	alpha += 0.1;
	y += 0.10
}

else if (counter > 70)
{
	alpha -= 0.02;
	y -= 0.5;
}

if (alpha == 0)
{
	instance_destroy();	
}