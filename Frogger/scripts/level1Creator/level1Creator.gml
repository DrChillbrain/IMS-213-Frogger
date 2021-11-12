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
	
	//Road Row 1 (Slow Car Left)
	var spawner = instance_create_layer(0, 480 + 16, "objects", obj_truckSpawner);
	spawner.startPos = -50;
	spawner.truckSpeed = 2;
	spawner.groupSize = 3;
	spawner.groupDistance = 100;
	spawner.groupSpacing = 15;
	spawner.carType = 2;
	
	//Road Row 2 (Medium Car Right)
	var spawner = instance_create_layer(0, 448 + 16, "objects", obj_truckSpawner);
	spawner.startPos = -50;
	spawner.truckSpeed = 3;
	spawner.groupSize = 1;
	spawner.groupDistance = 100;
	spawner.groupSpacing = 0;
	spawner.carType = 2;
	
	//Road Row 3 (Slow Truck Left)
	var spawner = instance_create_layer(0, 416 + 16, "objects", obj_truckSpawner);
	spawner.startPos = 626;
	spawner.truckSpeed = -1;
	spawner.groupSize = 2;
	spawner.groupDistance = 280;
	spawner.groupSpacing = 60;
	spawner.carType = 1;
	
	//Road Row 4 (Medium Car Left)
	var spawner = instance_create_layer(0, 384 + 16, "objects", obj_truckSpawner);
	spawner.startPos = 626;
	spawner.truckSpeed = -2;
	spawner.groupSize = 3;
	spawner.groupDistance = 100;
	spawner.groupSpacing = 15;
	spawner.carType = 2;
	
	//Road Row 5 (Fast Car Left)
	var spawner = instance_create_layer(0, 352 + 16, "objects", obj_truckSpawner);
	spawner.startPos = 626;
	spawner.truckSpeed = -5;
	spawner.groupSize = 2;
	spawner.groupDistance = 150;
	spawner.groupSpacing = 80;
	spawner.carType = 2;

	//Road Row 6 (Medium Truck Right)
	var spawner = instance_create_layer(0, 320 + 16, "objects", obj_truckSpawner);
	spawner.startPos = -50;
	spawner.truckSpeed = 2;
	spawner.groupSize = 2;
	spawner.groupDistance = 140;
	spawner.groupSpacing = 30;
	spawner.carType = 1;


	//Water Row 1 (Slow Lilypad Right)
	var spawner = instance_create_layer(0, 256 + 16, "objects", obj_lilypadSpawner);
	spawner.startPos = -50;
	spawner.lilySpeed = 1;
	spawner.groupSize = 3;
	spawner.groupDistance = 120;
	spawner.groupSpacing = 35;
	
	//Water Row 2 (Medium Lilypad Left)
	var spawner = instance_create_layer(0, 224 + 16, "objects", obj_lilypadSpawner);
	spawner.startPos = 626;
	spawner.lilySpeed = -2;
	spawner.groupSize = 2;
	spawner.groupDistance = 100;
	spawner.groupSpacing = (35 / 2);
	
	//Water Row 3 (Slow Log Left)
	var spawner = instance_create_layer(0, 192 + 16, "objects", obj_logSpawner);
	spawner.startPos = 626;
	spawner.logSpeed = -1;
	spawner.log1Size = 4;
	spawner.log2Size = 3;
	spawner.log3Size = 4;
	
	//Water Row 4 (Fast Lilypad Right)
	var spawner = instance_create_layer(0, 160 + 16, "objects", obj_lilypadSpawner);
	spawner.startPos = -50;
	spawner.lilySpeed = 3;
	spawner.groupSize = 4;
	spawner.groupDistance = 50;
	spawner.groupSpacing = (35 / 3);
	
	//Water Row 5 (Medium Log Left)
	var spawner = instance_create_layer(0, 128 + 16, "objects", obj_logSpawner);
	spawner.startPos = 626;
	spawner.logSpeed = -2;
	spawner.log1Size = 6;
	spawner.log2Size = 2;
	spawner.log3Size = 4;
	
	//Water Row 6 (Medium LilyPad Right)
	var spawner = instance_create_layer(0, 96 + 16, "objects", obj_lilypadSpawner);
	spawner.startPos = -50;
	spawner.lilySpeed = 2;
	spawner.groupSize = 3;
	spawner.groupDistance = 70;
	spawner.groupSpacing = (35 / 2);
	
	
	level1Array = [grasspatch1, road, grasspatch2, water, landing]
	return(level1Array);
}