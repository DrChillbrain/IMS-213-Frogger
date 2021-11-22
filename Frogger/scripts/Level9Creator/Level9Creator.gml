// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Level9Creator()
{
	//Level 1, 1 road, 1 water
	grasspatch1 = [];
	var grasspatch1Counter = 0;
	road1 = [];
	var road1Counter = 0;
	grasspatch2 = [];
	var grasspatch2Counter = 0;
	road2 = [];
	var road2Counter = 0;
	grasspatch3 = [];
	var grasspatch3Counter = 0;
	water = [];
	var waterCounter = 0;
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
		
		for (var j = 1; j < 5; j++) //Making the road
		{
			road1[road1Counter] = instance_create_layer((i * 32) + 16, (512 - (32 * j)) + 16, "floor", obj_road);
			road1Counter += 1;
		}
		
		for (var j = 1; j < 2; j++) //Making the break area
		{
			grasspatch2[grasspatch2Counter] = instance_create_layer((i * 32) + 16, (384 - (32 * j)) + 16, "floor", obj_grass);
			grasspatch2Counter += 1;
		}
		
		for (var j = 1; j < 5; j++)
		{
			road2[road2Counter] = instance_create_layer((i * 32) + 16, (352 - (32 * j)) + 16, "floor", obj_road);
			road2Counter += 1;
		}
		
		for (var j = 1; j < 2; j++)
		{
			grasspatch3[grasspatch3Counter] = instance_create_layer((i * 32) + 16, (224 - (32 * j)) + 16, "floor", obj_grass);
			grasspatch3Counter += 1;
		}
		
		for (var j = 1; j < 4; j++) //Making the water
		{
			water[waterCounter] = instance_create_layer((i * 32) + 16, (192 - (32 * j)) + 16, "floor", obj_water);
			waterCounter += 1;
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
	
	//Road1 Row 1 (Slow Truck Right)
	carSpawners[0] = instance_create_layer(0, 480 + 16, "cars", obj_truckSpawner);
	carSpawners[0].startPos = -50;
	carSpawners[0].truckSpeed = 1;
	carSpawners[0].groupSize = 2;
	carSpawners[0].groupDistance = 150;
	carSpawners[0].groupSpacing = (60 / 1);
	carSpawners[0].carType = 1;
	
	//Road1 Row 2 (Medium Car Left)
	carSpawners[1] = instance_create_layer(0, 448 + 16, "cars", obj_truckSpawner);
	carSpawners[1].startPos = 626;
	carSpawners[1].truckSpeed = -3;
	carSpawners[1].groupSize = 3;
	carSpawners[1].groupDistance = 80;
	carSpawners[1].groupSpacing = (36 / 3);
	carSpawners[1].carType = 2;
	
	//Road1 Row 3 (Medium Truck Left)
	carSpawners[2] = instance_create_layer(0, 416 + 16, "cars", obj_truckSpawner);
	carSpawners[2].startPos = 626;
	carSpawners[2].truckSpeed = -2;
	carSpawners[2].groupSize = 1;
	carSpawners[2].groupDistance = 100;
	carSpawners[2].groupSpacing = 0;
	carSpawners[2].carType = 1;
	
	//Road1 Row 4 (Fast Car Right)
	carSpawners[3] = instance_create_layer(0, 384 + 16, "cars", obj_truckSpawner);
	carSpawners[3].startPos = -50;
	carSpawners[3].truckSpeed = 6;
	carSpawners[3].groupSize = 3;
	carSpawners[3].groupDistance = 140;
	carSpawners[3].groupSpacing = 80;
	carSpawners[3].carType = 2;
	
	
	//Road2 Row 1 (Slow Car Right)
	carSpawners[4] = instance_create_layer(0, 320 + 16, "cars", obj_truckSpawner);
	carSpawners[4].startPos = -50;
	carSpawners[4].truckSpeed = 2;
	carSpawners[4].groupSize = 3;
	carSpawners[4].groupDistance = 90;
	carSpawners[4].groupSpacing = (36 / 2);
	carSpawners[4].carType = 2;
	
	//Road2 Row 2 (Medium Truck Left)
	carSpawners[5] = instance_create_layer(0, 288 + 16, "cars", obj_truckSpawner);
	carSpawners[5].startPos = 626;
	carSpawners[5].truckSpeed = -2;
	carSpawners[5].groupSize = 3;
	carSpawners[5].groupDistance = 150;
	carSpawners[5].groupSpacing = (60 / 2);
	carSpawners[5].carType = 1;
	
	//Road2 Row 3 (Fast Car Right)
	carSpawners[6] = instance_create_layer(0, 256 + 16, "cars", obj_truckSpawner);
	carSpawners[6].startPos = -50;
	carSpawners[6].truckSpeed = 5;
	carSpawners[6].groupSize = 1;
	carSpawners[6].groupDistance = 70;
	carSpawners[6].groupSpacing = 0;
	carSpawners[6].carType = 2;
	
	//Road2 Row 4 (Slow Car Left)
	carSpawners[7] = instance_create_layer(0, 224 + 16, "cars", obj_truckSpawner);
	carSpawners[7].startPos = -50;
	carSpawners[7].truckSpeed = 2;
	carSpawners[7].groupSize = 2;
	carSpawners[7].groupDistance = 90;
	carSpawners[7].groupSpacing = (36 / 2);
	carSpawners[7].carType = 2;
	
	
	//Water Row 1 (Fast Lily Left)
	waterSpawners[0] = instance_create_layer(0, 160 + 16, "objects", obj_lilypadSpawner);
	waterSpawners[0].startPos = 626;
	waterSpawners[0].lilySpeed = -3;
	waterSpawners[0].groupSize = 3;
	waterSpawners[0].groupDistance = 50;
	waterSpawners[0].groupSpacing = (35 / 3);
	
	//Water Row 2 (Slow Log Left)
	waterSpawners[1] = instance_create_layer(0, 128 + 16, "objects", obj_logSpawner);
	waterSpawners[1].startPos = 626;
	waterSpawners[1].logSpeed = -1;
	waterSpawners[1].log1Size = 3;
	waterSpawners[1].log2Size = 4;
	waterSpawners[1].log3Size = 3;
	
	//Water Row 3 (Medium Lily Right)
	waterSpawners[2] = instance_create_layer(0, 96 + 16, "objects", obj_lilypadSpawner);
	waterSpawners[2].startPos = -50;
	waterSpawners[2].lilySpeed = 2;
	waterSpawners[2].groupSize = 2;
	waterSpawners[2].groupDistance = 90;
	waterSpawners[2].groupSpacing = (35 / 2);
	
	
	level1Array = [grasspatch1, road1, grasspatch2, road2, grasspatch3, water, landing, carSpawners, waterSpawners]
	return(level1Array);
}