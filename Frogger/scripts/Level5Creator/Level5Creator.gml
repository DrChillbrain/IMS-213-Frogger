// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Level5Creator()
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
		
		for (var j = 1; j < 12; j++) //Making the road
		{
			road[roadCounter] = instance_create_layer((i * 32) + 16, (512 - (32 * j)) + 16, "floor", obj_road);
			roadCounter += 1;
		}
		
		for (var j = 1; j < 2; j++) //Making the break area
		{
			grasspatch2[grasspatch2Counter] = instance_create_layer((i * 32) + 16, (160 - (32 * j)) + 16, "floor", obj_grass);
			grasspatch2Counter += 1;
		}
		
		for (var j = 1; j < 2; j++) //Making the water
		{
			water[waterCounter] = instance_create_layer((i * 32) + 16, (128 - (32 * j)) + 16, "floor", obj_water);
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
	
	//Road Row 1 (Medium Car Right)
	carSpawners[0] = instance_create_layer(0, 480 + 16, "cars", obj_truckSpawner);
	carSpawners[0].startPos = -50;
	carSpawners[0].truckSpeed = 2;
	carSpawners[0].groupSize = 3;
	carSpawners[0].groupDistance = 60;
	carSpawners[0].groupSpacing = (36 / 2);
	carSpawners[0].carType = 2;
	
	//Road Row 2 (Slow Truck Right)
	carSpawners[1] = instance_create_layer(0, 448 + 16, "cars", obj_truckSpawner);
	carSpawners[1].startPos = -50;
	carSpawners[1].truckSpeed = 1;
	carSpawners[1].groupSize = 1;
	carSpawners[1].groupDistance = 150;
	carSpawners[1].groupSpacing = 0;
	carSpawners[1].carType = 1;
	
	//Road Row 3 (Medium Car Left)
	carSpawners[2] = instance_create_layer(0, 416 + 16, "cars", obj_truckSpawner);
	carSpawners[2].startPos = 626;
	carSpawners[2].truckSpeed = -2;
	carSpawners[2].groupSize = 2;
	carSpawners[2].groupDistance = 100;
	carSpawners[2].groupSpacing = (36 / 2);
	carSpawners[2].carType = 2;
	
	//Road Row 4 (Fast Car Right)
	carSpawners[3] = instance_create_layer(0, 384 + 16, "cars", obj_truckSpawner);
	carSpawners[3].startPos = -50;
	carSpawners[3].truckSpeed = 6;
	carSpawners[3].groupSize = 2;
	carSpawners[3].groupDistance = 80;
	carSpawners[3].groupSpacing = (36 / 6);
	carSpawners[3].carType = 2;
	
	//Road Row 5 (Slow Car Left)
	carSpawners[4] = instance_create_layer(0, 352 + 16, "cars", obj_truckSpawner);
	carSpawners[4].startPos = 626;
	carSpawners[4].truckSpeed = -1;
	carSpawners[4].groupSize = 4;
	carSpawners[4].groupDistance = 180;
	carSpawners[4].groupSpacing = (36 / 1);
	carSpawners[4].carType = 2;
	
	//Road Row 6 (Medium Truck Left)
	carSpawners[5] = instance_create_layer(0, 320 + 16, "cars", obj_truckSpawner);
	carSpawners[5].startPos = 626;
	carSpawners[5].truckSpeed = -2;
	carSpawners[5].groupSize = 2;
	carSpawners[5].groupDistance = 150;
	carSpawners[5].groupSpacing = (60 / 2);
	carSpawners[5].carType = 1;
	
	//Road Row 7 (Fast Car Right)
	carSpawners[6] = instance_create_layer(0, 288 + 16, "cars", obj_truckSpawner);
	carSpawners[6].startPos = -50;
	carSpawners[6].truckSpeed = 5;
	carSpawners[6].groupSize = 3;
	carSpawners[6].groupDistance = 100;
	carSpawners[6].groupSpacing = 40;
	carSpawners[6].carType = 2;
	
	//Road Row 8 (Slow Truck Left)
	carSpawners[7] = instance_create_layer(0, 256 + 16, "cars", obj_truckSpawner);
	carSpawners[7].startPos = 626;
	carSpawners[7].truckSpeed = -1;
	carSpawners[7].groupSize = 2;
	carSpawners[7].groupDistance = 150;
	carSpawners[7].groupSpacing = (60 / 1);
	carSpawners[7].carType = 1;
	
	//Road Row 9 (Medium Car Right)
	carSpawners[8] = instance_create_layer(0, 224 + 16, "cars", obj_truckSpawner);
	carSpawners[8].startPos = -50;
	carSpawners[8].truckSpeed = 2;
	carSpawners[8].groupSize = 3;
	carSpawners[8].groupDistance = 120;
	carSpawners[8].groupSpacing = (36 / 2);
	carSpawners[8].carType = 2;
	
	//Road Row 10 (Slow Car Left)
	carSpawners[9] = instance_create_layer(0, 192 + 16, "cars", obj_truckSpawner);
	carSpawners[9].startPos = 626;
	carSpawners[9].truckSpeed = -1;
	carSpawners[9].groupSize = 2;
	carSpawners[9].groupDistance = 150;
	carSpawners[9].groupSpacing = (36 / 1);
	carSpawners[9].carType = 2;
	
	//Road Row 11 (Medium Truck Left)
	carSpawners[10] = instance_create_layer(0, 160 + 16, "cars", obj_truckSpawner);
	carSpawners[10].startPos = 626;
	carSpawners[10].truckSpeed = -2;
	carSpawners[10].groupSize = 3;
	carSpawners[10].groupDistance = 150;
	carSpawners[10].groupSpacing = (60 / 2);
	carSpawners[10].carType = 1;
	
	
	//Water Row 1 (Slow Lilypad Right)
	waterSpawners[0] = instance_create_layer(0, 96 + 16, "objects", obj_lilypadSpawner);
	waterSpawners[0].startPos = -50;
	waterSpawners[0].lilySpeed = 1;
	waterSpawners[0].groupSize = 3;
	waterSpawners[0].groupDistance = 80;
	waterSpawners[0].groupSpacing = (35 / 1);
	
	
	level1Array = [grasspatch1, road, grasspatch2, water, landing, carSpawners, waterSpawners]
	return(level1Array);
}