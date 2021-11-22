// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Level1Creator()
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
		
		for (var j = 1; j < 7; j++) //Making the road
		{
			road[roadCounter] = instance_create_layer((i * 32) + 16, (512 - (32 * j)) + 16, "floor", obj_road);
			roadCounter += 1;
		}
		
		for (var j = 1; j < 2; j++) //Making the break area
		{
			grasspatch2[grasspatch2Counter] = instance_create_layer((i * 32) + 16, (320 - (32 * j)) + 16, "floor", obj_grass);
			grasspatch2Counter += 1;
		}
		
		for (var j = 1; j < 7; j++) //Making the water
		{
			water[waterCounter] = instance_create_layer((i * 32) + 16, (288 - (32 * j)) + 16, "floor", obj_water);
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
	
	//Road Row 1 (Slow Car Left)
	carSpawners[0] = instance_create_layer(0, 480 + 16, "cars", obj_truckSpawner);
	carSpawners[0].startPos = -50;
	carSpawners[0].truckSpeed = 2;
	carSpawners[0].groupSize = 3;
	carSpawners[0].groupDistance = 100;
	carSpawners[0].groupSpacing = 18;
	carSpawners[0].carType = 2;
	
	//Road Row 2 (Medium Car Right)
	carSpawners[1] = instance_create_layer(0, 448 + 16, "cars", obj_truckSpawner);
	carSpawners[1].startPos = -50;
	carSpawners[1].truckSpeed = 3;
	carSpawners[1].groupSize = 1;
	carSpawners[1].groupDistance = 100;
	carSpawners[1].groupSpacing = 0;
	carSpawners[1].carType = 2;
	
	//Road Row 3 (Slow Truck Left)
	carSpawners[2] = instance_create_layer(0, 416 + 16, "cars", obj_truckSpawner);
	carSpawners[2].startPos = 626;
	carSpawners[2].truckSpeed = -1;
	carSpawners[2].groupSize = 2;
	carSpawners[2].groupDistance = 280;
	carSpawners[2].groupSpacing = 60;
	carSpawners[2].carType = 1;
	
	//Road Row 4 (Medium Car Left)
	carSpawners[3] = instance_create_layer(0, 384 + 16, "cars", obj_truckSpawner);
	carSpawners[3].startPos = 626;
	carSpawners[3].truckSpeed = -2;
	carSpawners[3].groupSize = 3;
	carSpawners[3].groupDistance = 100;
	carSpawners[3].groupSpacing = 18;
	carSpawners[3].carType = 2;
	
	//Road Row 5 (Fast Car Left)
	carSpawners[4] = instance_create_layer(0, 352 + 16, "cars", obj_truckSpawner);
	carSpawners[4].startPos = 626;
	carSpawners[4].truckSpeed = -5;
	carSpawners[4].groupSize = 2;
	carSpawners[4].groupDistance = 150;
	carSpawners[4].groupSpacing = 80;
	carSpawners[4].carType = 2;

	//Road Row 6 (Medium Truck Right)
	carSpawners[5] = instance_create_layer(0, 320 + 16, "cars", obj_truckSpawner);
	carSpawners[5].startPos = -50;
	carSpawners[5].truckSpeed = 2;
	carSpawners[5].groupSize = 2;
	carSpawners[5].groupDistance = 140;
	carSpawners[5].groupSpacing = 30;
	carSpawners[5].carType = 1;


	//Water Row 1 (Slow Lilypad Right)
	waterSpawners[0] = instance_create_layer(0, 256 + 16, "objects", obj_lilypadSpawner);
	waterSpawners[0].startPos = -50;
	waterSpawners[0].lilySpeed = 1;
	waterSpawners[0].groupSize = 3;
	waterSpawners[0].groupDistance = 120;
	waterSpawners[0].groupSpacing = 35;
	
	//Water Row 2 (Medium Lilypad Left)
	waterSpawners[1] = instance_create_layer(0, 224 + 16, "objects", obj_lilypadSpawner);
	waterSpawners[1].startPos = 626;
	waterSpawners[1].lilySpeed = -2;
	waterSpawners[1].groupSize = 2;
	waterSpawners[1].groupDistance = 100;
	waterSpawners[1].groupSpacing = (35 / 2);
	
	//Water Row 3 (Slow Log Left)
	waterSpawners[2] = instance_create_layer(0, 192 + 16, "objects", obj_logSpawner);
	waterSpawners[2].startPos = 626;
	waterSpawners[2].logSpeed = -1;
	waterSpawners[2].log1Size = 4;
	waterSpawners[2].log2Size = 3;
	waterSpawners[2].log3Size = 4;
	
	//Water Row 4 (Fast Lilypad Right)
	waterSpawners[3] = instance_create_layer(0, 160 + 16, "objects", obj_lilypadSpawner);
	waterSpawners[3].startPos = -50;
	waterSpawners[3].lilySpeed = 3;
	waterSpawners[3].groupSize = 4;
	waterSpawners[3].groupDistance = 50;
	waterSpawners[3].groupSpacing = (35 / 3);
	
	//Water Row 5 (Medium Log Left)
	waterSpawners[4] = instance_create_layer(0, 128 + 16, "objects", obj_logSpawner);
	waterSpawners[4].startPos = 626;
	waterSpawners[4].logSpeed = -2;
	waterSpawners[4].log1Size = 6;
	waterSpawners[4].log2Size = 2;
	waterSpawners[4].log3Size = 4;
	
	//Water Row 6 (Medium LilyPad Right)
	waterSpawners[5] = instance_create_layer(0, 96 + 16, "objects", obj_lilypadSpawner);
	waterSpawners[5].startPos = -50;
	waterSpawners[5].lilySpeed = 2;
	waterSpawners[5].groupSize = 3;
	waterSpawners[5].groupDistance = 70;
	waterSpawners[5].groupSpacing = (35 / 2);
	
	level1Array = [grasspatch1, road, grasspatch2, water, landing, carSpawners, waterSpawners]
	return(level1Array);
}