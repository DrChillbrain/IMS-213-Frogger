// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Level3Creator()
{
	//Level 1, 1 road, 1 water
	grasspatch1 = [];
	var grasspatch1Counter = 0;
	water1 = [];
	var water1Counter = 0;
	grasspatch2 = [];
	var grasspatch2Counter = 0;
	road = [];
	var roadCounter = 0;
	grasspatch3 = [];
	var grasspatch3Counter = 0;
	water2 = [];
	var water2Counter = 0;
	landing = [];
	var landingCounter = 0;
	carSpawners = [];
	waterSpawners = [];
	landCounter = 1;
	
	for (var i = 0; i < 18; i++)
	{
		for (var j = 1; j < 3; j++) //Making the starting grasspatch
		{
			grasspatch1[grasspatch1Counter] = instance_create_layer((i * 32) + 16, (576 - (32 * j)) + 16, "floor", obj_grass);
			grasspatch1Counter += 1;
		}
		
		for (var j = 1; j < 6; j++) //First water area
		{
			water1[water1Counter] = instance_create_layer((i * 32) + 16, (512 - (32 * j)) + 16, "floor", obj_water);
			water1Counter += 1;
		}
		
		for (var j = 1; j < 2; j++) //Making the first break area
		{
			grasspatch2[grasspatch2Counter] = instance_create_layer((i * 32) + 16, (352 - (32 * j)) + 16, "floor", obj_grass);
			grasspatch2Counter += 1;
		}
		
		for (var j = 1; j < 6; j++) //Making the road
		{
			road[roadCounter] = instance_create_layer((i * 32) + 16, (320 - (32 * j)) + 16, "floor", obj_road);
			roadCounter += 1;
		}
		
		for (var j = 1; j < 2; j++) //Making the second break area
		{
			grasspatch3[grasspatch3Counter] = instance_create_layer((i * 32) + 16, (160 - (32 * j)) + 16, "floor", obj_grass);
			grasspatch3Counter += 1;
		}
		
		for (var j = 1; j < 2; j++)
		{
			water2[water2Counter] = instance_create_layer((i * 32) + 16, (128 - (32 * j)) + 16, "floor", obj_water);
			water2Counter += 1;
		}
		
		for (var j = 1; j < 2; j++) //Landing
		{
			if (landCounter == 2)
			{
				landCounter = 0;
				landing[landingCounter] = instance_create_layer((i * 32) + 16, (96 - (32 * j)) + 16, "floor", obj_landing);
				landing[landingCounter].landingID = i;
			}
			
			else
			{
				landCounter += 1;
				landing[landingCounter] = instance_create_layer((i * 32) + 16, (96 - (32 * j)) + 16, "floor", obj_thorns);
			}
			
			landingCounter += 1;
		}
	}
	
	//Water1 Row 1 (Fast Lily Left)
	waterSpawners[0] = instance_create_layer(0, 480 + 16, "objects", obj_lilypadSpawner);
	waterSpawners[0].startPos = 626;
	waterSpawners[0].lilySpeed = -3;
	waterSpawners[0].groupSize = 3;
	waterSpawners[0].groupDistance = 50;
	waterSpawners[0].groupSpacing = (35 / 3);
	
	//Water1 Row 2 (Medium Log Right)
	waterSpawners[1] = instance_create_layer(0, 448 + 16, "objects", obj_logSpawner);
	waterSpawners[1].startPos = -200;
	waterSpawners[1].logSpeed = 3;
	waterSpawners[1].log1Size = 4;
	waterSpawners[1].log2Size = 3;
	waterSpawners[1].log3Size = 3;
	
	//Water1 Row 3 (Medium Lily Right)
	waterSpawners[2] = instance_create_layer(0, 416 + 16, "objects", obj_lilypadSpawner);
	waterSpawners[2].startPos = -50;
	waterSpawners[2].lilySpeed = 2;
	waterSpawners[2].groupSize = 4;
	waterSpawners[2].groupDistance = 80;
	waterSpawners[2].groupSpacing = (35 / 2);
	
	//Water1 Row 4 (Slow Lily Left)
	waterSpawners[3] = instance_create_layer(0, 384 + 16, "objects", obj_lilypadSpawner);
	waterSpawners[3].startPos = 626;
	waterSpawners[3].lilySpeed = -1;
	waterSpawners[3].groupSize = 2;
	waterSpawners[3].groupDistance = 100;
	waterSpawners[3].groupSpacing = (35 / 1);
	
	//Water1 Row 5 (Fast Log Left)
	waterSpawners[4] = instance_create_layer(0, 352 + 16, "objects", obj_logSpawner);
	waterSpawners[4].startPos = 626;
	waterSpawners[4].logSpeed = -4;
	waterSpawners[4].log1Size = 5;
	waterSpawners[4].log2Size = 1;
	waterSpawners[4].log3Size = 3;
	
	
	//Road Row 1 (Slow Truck Right)
	carSpawners[0] = instance_create_layer(0, 288 + 16, "cars", obj_truckSpawner);
	carSpawners[0].startPos = -50;
	carSpawners[0].truckSpeed = 1;
	carSpawners[0].groupSize = 2;
	carSpawners[0].groupDistance = 150;
	carSpawners[0].groupSpacing = 60;
	carSpawners[0].carType = 1;
	
	//Road Row 2 (Medium Car Right)
	carSpawners[1] = instance_create_layer(0, 256 + 16, "cars", obj_truckSpawner);
	carSpawners[1].startPos = -50;
	carSpawners[1].truckSpeed = 3;
	carSpawners[1].groupSize = 3;
	carSpawners[1].groupDistance = 80;
	carSpawners[1].groupSpacing = (36 / 3);
	carSpawners[1].carType = 2;
	
	//Road Row 3 (Fast Car Left)
	carSpawners[2] = instance_create_layer(0, 224 + 16, "cars", obj_truckSpawner);
	carSpawners[2].startPos = 626;
	carSpawners[2].truckSpeed = -5;
	carSpawners[2].groupSize = 3;
	carSpawners[2].groupDistance = 120;
	carSpawners[2].groupSpacing = 80;
	carSpawners[2].carType = 2;
	
	//Road Row 4 (Medium Truck Right)
	carSpawners[3] = instance_create_layer(0, 192 + 16, "cars", obj_truckSpawner);
	carSpawners[3].startPos = -50;
	carSpawners[3].truckSpeed = 2;
	carSpawners[3].groupSize = 2;
	carSpawners[3].groupDistance = 90;
	carSpawners[3].groupSpacing = 30;
	carSpawners[3].carType = 1;
	
	//Road Row 5 (Slow Car Left)
	carSpawners[4] = instance_create_layer(0, 160 + 16, "cars", obj_truckSpawner);
	carSpawners[4].startPos = 626;
	carSpawners[4].truckSpeed = -2;
	carSpawners[4].groupSize = 1;
	carSpawners[4].groupDistance = 100;
	carSpawners[4].groupSpacing = 0;
	carSpawners[4].carType = 2;
	
	
	//Water2 Row 1 (Slow Lilypad Right)
	waterSpawners[5] = instance_create_layer(0, 96 + 16, "objects", obj_lilypadSpawner);
	waterSpawners[5].startPos = -50;
	waterSpawners[5].lilySpeed = 2;
	waterSpawners[5].groupSize = 3;
	waterSpawners[5].groupDistance = 50;
	waterSpawners[5].groupSpacing = (35 / 2);
	
	
	level1Array = [grasspatch1, water1, grasspatch2, road, grasspatch3, water2, landing, carSpawners, waterSpawners]
	return(level1Array);
}