// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Level6Creator()
{
	//Level 1, 1 road, 1 water
	grasspatch1 = [];
	var grasspatch1Counter = 0;
	road = [];
	var roadCounter = 0;
	grasspatch2 = [];
	var grasspatch2Counter = 0;
	water1 = [];
	var water1Counter = 0;
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
		
		for (var j = 1; j < 4; j++) //Making the road
		{
			road[roadCounter] = instance_create_layer((i * 32) + 16, (512 - (32 * j)) + 16, "floor", obj_road);
			roadCounter += 1;
		}
		
		for (var j = 1; j < 2; j++) //Making the break area
		{
			grasspatch2[grasspatch2Counter] = instance_create_layer((i * 32) + 16, (416 - (32 * j)) + 16, "floor", obj_grass);
			grasspatch2Counter += 1;
		}
		
		for (var j = 1; j < 5; j++) //Making the water
		{
			water1[water1Counter] = instance_create_layer((i * 32) + 16, (384 - (32 * j)) + 16, "floor", obj_water);
			water1Counter += 1;
		}
		
		for (var j = 1; j < 2; j++)
		{
			grasspatch3[grasspatch3Counter] = instance_create_layer((i * 32) + 16, (256 - (32 * j)) + 16, "floor", obj_grass);
			grasspatch3Counter += 1;
		}
		
		for (var j = 1; j < 5; j++)
		{
			water2[water2Counter] = instance_create_layer((i * 32) + 16, (224 - (32 * j)) + 16, "floor", obj_water);
			water2Counter += 1;
		}
		
		for (var j = 1; j < 2; j++)
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
	
	//Road Row 1 (Medium Car Left)
	carSpawners[0] = instance_create_layer(0, 480 + 16, "cars", obj_truckSpawner);
	carSpawners[0].startPos = 626;
	carSpawners[0].truckSpeed = -2;
	carSpawners[0].groupSize = 3;
	carSpawners[0].groupDistance = 100;
	carSpawners[0].groupSpacing = (36 / 2);
	carSpawners[0].carType = 2;
	
	//Road Row 2 (Slow Truck Right)
	carSpawners[1] = instance_create_layer(0, 448 + 16, "cars", obj_truckSpawner);
	carSpawners[1].startPos = -50;
	carSpawners[1].truckSpeed = 1;
	carSpawners[1].groupSize = 1;
	carSpawners[1].groupDistance = 180;
	carSpawners[1].groupSpacing = 0;
	carSpawners[1].carType = 1;
	
	//Road Row 3 (Fast Car Left)
	carSpawners[2] = instance_create_layer(0, 416 + 16, "cars", obj_truckSpawner);
	carSpawners[2].startPos = 626;
	carSpawners[2].truckSpeed = -5;
	carSpawners[2].groupSize = 2;
	carSpawners[2].groupDistance = 90;
	carSpawners[2].groupSpacing = 60;
	carSpawners[2].carType = 2;
	
	
	//Water1 Row 1 (Slow Log Left)
	waterSpawners[0] = instance_create_layer(0, 352 + 16, "objects", obj_logSpawner);
	waterSpawners[0].startPos = 626;
	waterSpawners[0].logSpeed = -1;
	waterSpawners[0].log1Size = 3;
	waterSpawners[0].log2Size = 4;
	waterSpawners[0].log3Size = 3;
	
	//Water1 Row 2 (Fast Lily Right)
	waterSpawners[1] = instance_create_layer(0, 320 + 16, "objects", obj_lilypadSpawner);
	waterSpawners[1].startPos = -50;
	waterSpawners[1].lilySpeed = 3;
	waterSpawners[1].groupSize = 3;
	waterSpawners[1].groupDistance = 60;
	waterSpawners[1].groupSpacing = (35 / 3);
	
	//Water1 Row 3 (Slow Lily Right)
	waterSpawners[2] = instance_create_layer(0, 288 + 16, "objects", obj_lilypadSpawner);
	waterSpawners[2].startPos = -50;
	waterSpawners[2].lilySpeed = 1;
	waterSpawners[2].groupSize = 2;
	waterSpawners[2].groupDistance = 80;
	waterSpawners[2].groupSpacing = (35 / 1);
	
	//Water1 Row 4 (Medium Log Left)
	waterSpawners[3] = instance_create_layer(0, 256 + 16, "objects", obj_logSpawner);
	waterSpawners[3].startPos = 626;
	waterSpawners[3].logSpeed = -2;
	waterSpawners[3].log1Size = 3;
	waterSpawners[3].log2Size = 5;
	waterSpawners[3].log3Size = 3;
	
	
	//Water2 Row 1 (Medium Lily Right)
	waterSpawners[4] = instance_create_layer(0, 192 + 16, "objects", obj_lilypadSpawner);
	waterSpawners[4].startPos = -50;
	waterSpawners[4].lilySpeed = 2;
	waterSpawners[4].groupSize = 3;
	waterSpawners[4].groupDistance = 70;
	waterSpawners[4].groupSpacing = (35 / 2);
	
	//Water2 Row 2 (Fast Log Left)
	waterSpawners[5] = instance_create_layer(0, 160 + 16, "objects", obj_logSpawner);
	waterSpawners[5].startPos = 626;
	waterSpawners[5].logSpeed = -3;
	waterSpawners[5].log1Size = 2;
	waterSpawners[5].log2Size = 4;
	waterSpawners[5].log3Size = 3;
	
	//Water2 Row 3 (Slow Lily Right)
	waterSpawners[6] = instance_create_layer(0, 128 + 16, "objects", obj_lilypadSpawner);
	waterSpawners[6].startPos = -50;
	waterSpawners[6].lilySpeed = 1;
	waterSpawners[6].groupSize = 2;
	waterSpawners[6].groupDistance = 80;
	waterSpawners[6].groupSpacing = (35 / 1);
	
	//Water2 Row 4 (Medium Lily Left)
	waterSpawners[7] = instance_create_layer(0, 96 + 16, "objects", obj_lilypadSpawner);
	waterSpawners[7].startPos = 626;
	waterSpawners[7].lilySpeed = -2;
	waterSpawners[7].groupSize = 3;
	waterSpawners[7].groupDistance = 50;
	waterSpawners[7].groupSpacing = (35 / 2);
	
	
	level1Array = [grasspatch1, road, grasspatch2, water1, grasspatch3, water2, landing, carSpawners, waterSpawners]
	return(level1Array);
}