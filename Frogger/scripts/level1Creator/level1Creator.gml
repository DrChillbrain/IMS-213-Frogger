// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function level1Creator()
{
	//TAKE TWO WOOOOOOOOOOOOOOOOOOOOOOOOOOO
	grasspatch1 = [];
	road = [];
	grasspatch2 = [];
	water = [];
	landing = [];
	counter = 0;
	
	for (var i = 0; i < 18; i++)
	{
		for (var j = 1; j < 3; j++) //Making the starting grasspatch
		{
			grasspatch1[counter] = instance_create_layer((i * 32) + 16, (576 - (32 * j)) + 16, "floor", obj_grass);
			counter += 1;
		}
		
		counter = 0;
		
		for (var j = 1; j < 7; j++) //Making the road
		{
			road[counter] = instance_create_layer((i * 32) + 16, (512 - (32 * j)) + 16, "floor", obj_road);
			counter += 1;
		}
		
		counter = 0;
		
		for (var j = 1; j < 2; j++) //Making the break area
		{
			grasspatch2[counter] = instance_create_layer((i * 32) + 16, (320 - (32 * j)) + 16, "floor", obj_grass);
			counter += 1;
		}
		
		counter = 0;
		
		for (var j = 1; j < 7; j++) //Making the water
		{
			water[counter] = instance_create_layer((i * 32) + 16, (288 - (32 * j)) + 16, "floor", obj_water);
			counter += 1;
		}
		
		counter = 0;
		
		for (var j = 1; j < 2; j++)
		{
			landing[counter] = instance_create_layer((i * 32) + 16, (96 - (32 * j)) + 16, "floor", obj_grass);
			counter += 1;
		}
	}

	var spawner = instance_create_layer(0, 256 + 16, "objects", obj_lilypadSpawner);
	spawner.startPos = -32;
	spawner.lilySpeed = 1;
	spawner.groupSize = 3;
	spawner.groupDistance = 120;
	
	var spawner = instance_create_layer(0, 224 + 16, "objects", obj_lilypadSpawner);
	spawner.startPos = 608;
	spawner.lilySpeed = -1;
	spawner.groupSize = 2;
	spawner.groupDistance = 120;
	
	var spawner = instance_create_layer(0, 400 + 16, "objects", obj_truckSpawner);
	spawner.startPos = 608;
	spawner.truckSpeed = -1;
	
	level1Array = [grasspatch1, road, grasspatch2, water, landing]
	return(level1Array);
}