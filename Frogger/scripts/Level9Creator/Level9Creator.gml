// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Level9Creator()
{
	//Level 1, 1 road, 1 water
	grasspatch1 = [];
	var grasspatch1Counter = 0;
	road = [];
	var roadCounter = 0;
	grasspatch2 = [];
	var grasspatch2Counter = 0;
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
		
		for (var j = 1; j < 9; j++) //Making the road
		{
			road[roadCounter] = instance_create_layer((i * 32) + 16, (512 - (32 * j)) + 16, "floor", obj_road);
			roadCounter += 1;
		}
		
		for (var j = 1; j < 2; j++) //Making the break area
		{
			grasspatch2[grasspatch2Counter] = instance_create_layer((i * 32) + 16, (256 - (32 * j)) + 16, "floor", obj_grass);
			grasspatch2Counter += 1;
		}
		
		for (var j = 1; j < 5; j++) //Making the water
		{
			water[waterCounter] = instance_create_layer((i * 32) + 16, (224 - (32 * j)) + 16, "floor", obj_water);
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
	
	//Road Row 1 (Medium Truck Right)
	carSpawners[0] = instance_create_layer(0, 480 + 16, "cars", obj_truckSpawner);
	carSpawners[0].startPos = 626;
	carSpawners[0].truckSpeed = -2;
	carSpawners[0].groupSize = 2;
	carSpawners[0].groupDistance = 100;
	carSpawners[0].groupSpacing = (60 / 2);
	carSpawners[0].carType = 1;
	
	//Road Row 2 (Fast Car Left)
	carSpawners[1] = instance_create_layer(0, 448 + 16, "cars", obj_truckSpawner);
	carSpawners[1].startPos = -50;
	carSpawners[1].truckSpeed = 4;
	carSpawners[1].groupSize = 3;
	carSpawners[1].groupDistance = 70;
	carSpawners[1].groupSpacing = (18 / 2);
	carSpawners[1].carType = 2;

	//Road Row 3 (Slow Car Left)
	carSpawners[2] = instance_create_layer(0, 416 + 16, "cars", obj_truckSpawner);
	carSpawners[2].startPos = -50;
	carSpawners[2].truckSpeed = 2;
	carSpawners[2].groupSize = 2;
	carSpawners[2].groupDistance = 100;
	carSpawners[2].groupSpacing = 18;
	carSpawners[2].carType = 2;
	
	//Road Row 4 (Really Fast Car Right)
	carSpawners[3] = instance_create_layer(0, 384 + 16, "cars", obj_truckSpawner);
	carSpawners[3].startPos = 626;
	carSpawners[3].truckSpeed = -6;
	carSpawners[3].groupSize = 2;
	carSpawners[3].groupDistance = 150;
	carSpawners[3].groupSpacing = 80;
	carSpawners[3].carType = 2;
	
	//Road Row 5 (Slow Truck Right)
	carSpawners[4] = instance_create_layer(0, 352 + 16, "cars", obj_truckSpawner);
	carSpawners[4].startPos = -50;
	carSpawners[4].truckSpeed = 1;
	carSpawners[4].groupSize = 3;
	carSpawners[4].groupDistance = 200;
	carSpawners[4].groupSpacing = (60);
	carSpawners[4].carType = 1;
	
	//Road Row 6 (Medium Car Left)
	carSpawners[5] = instance_create_layer(0, 320 + 16, "cars", obj_truckSpawner);
	carSpawners[5].startPos = 626;
	carSpawners[5].truckSpeed = -4;
	carSpawners[5].groupSize = 1;
	carSpawners[5].groupDistance = 70;
	carSpawners[5].groupSpacing = 0;
	carSpawners[5].carType = 2;
	
	//Road Row 7 (Fast Car Right)
	carSpawners[6] = instance_create_layer(0, 288 + 16, "cars", obj_truckSpawner);
	carSpawners[6].startPos = -50;
	carSpawners[6].truckSpeed = 6;
	carSpawners[6].groupSize = 2;
	carSpawners[6].groupDistance = 90;
	carSpawners[6].groupSpacing = (18 / 3);
	carSpawners[6].carType = 2;
	
	//Road Row 8 (Medium Truck Left)
	carSpawners[7] = instance_create_layer(0, 256 + 16, "cars", obj_truckSpawner);
	carSpawners[7].startPos = -50;
	carSpawners[7].truckSpeed = 4;
	carSpawners[7].groupSize = 3;
	carSpawners[7].groupDistance = 70;
	carSpawners[7].groupSpacing = (60 / 4);
	carSpawners[7].carType = 1;
	
	
	/*
	//Water Row 1 (Slow Lilypad Right)
	waterSpawners[0] = instance_create_layer(0, 256 + 16, "objects", obj_lilypadSpawner);
	waterSpawners[0].startPos = -50;
	waterSpawners[0].lilySpeed = 1;
	waterSpawners[0].groupSize = 3;
	waterSpawners[0].groupDistance = 120;
	waterSpawners[0].groupSpacing = 35;
	
	waterSpawners[2] = instance_create_layer(0, 192 + 16, "objects", obj_logSpawner);
	waterSpawners[2].startPos = 626;
	waterSpawners[2].logSpeed = -1;
	waterSpawners[2].log1Size = 4;
	waterSpawners[2].log2Size = 3;
	waterSpawners[2].log3Size = 4;
	*/
	
	//Water Row 1 (Medium Lily Left)
	waterSpawners[0] = instance_create_layer(0, 192 + 16, "objects", obj_lilypadSpawner);
	waterSpawners[0].startPos = 626;
	waterSpawners[0].lilySpeed = -2;
	waterSpawners[0].groupSize = 4;
	waterSpawners[0].groupDistance = 100;
	waterSpawners[0].groupSpacing = (35 / 2);
	
	//Water Row 2 (Fast Log Right)
	waterSpawners[1] = instance_create_layer(0, 160 + 16, "objects", obj_logSpawner);
	waterSpawners[1].startPos = -100;
	waterSpawners[1].logSpeed = 3;
	waterSpawners[1].log1Size = 3;
	waterSpawners[1].log2Size = 3;
	waterSpawners[1].log3Size = 3;
	
	//Water Row 3 (Medium Lily Right)
	waterSpawners[2] = instance_create_layer(0, 128 + 16, "objects", obj_lilypadSpawner);
	waterSpawners[2].startPos = -50;
	waterSpawners[2].lilySpeed = 2;
	waterSpawners[2].groupSize = 3;
	waterSpawners[2].groupDistance = 70;
	waterSpawners[2].groupSpacing = (35 / 2);
	
	//Water Row 4 (Slow Log Left)
	waterSpawners[3] = instance_create_layer(0, 96 + 16, "objects", obj_logSpawner);
	waterSpawners[3].startPos = 626;
	waterSpawners[3].logSpeed = -1;
	waterSpawners[3].log1Size = 4;
	waterSpawners[3].log2Size = 2;
	waterSpawners[3].log3Size = 5;
	
	
	level1Array = [grasspatch1, road, grasspatch2, water, landing, carSpawners, waterSpawners]
	return(level1Array);
}