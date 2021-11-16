// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function MenuCreator()
{
	grasspatch = [];
	counter = 0;
	
	for (var i = 0; i < 18; i++)
	{
		for (var j = 1; j < 19; j++)
		{
			grasspatch[counter] = instance_create_layer((i * 32) + 16, (576 - (32 * j)) + 16, "floor", obj_grass);
			grasspatch[counter].image_alpha = 0.5;
			counter += 1;
		}
	}
	
	return (grasspatch);
}