// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Level4Creator()
{
	//Level 1, 1 road, 1 water
	grasspatch1 = [];
	var grasspatch1Counter = 0;
	water1 = [];
	var water1Counter = 0;
	grasspatch2 = [];
	var grasspatch2Counter = 0;
	water2 = [];
	var water2Counter = 0;
	landing = [];
	var landingCounter = 0;
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
			water1[water1Counter] = instance_create_layer((i * 32) + 16, (512 - (32 * j)) + 16, "floor", obj_water);
			water1Counter += 1;
		}
		
		for (var j = 1; j < 2; j++) //Making the break area
		{
			grasspatch2[grasspatch2Counter] = instance_create_layer((i * 32) + 16, (320 - (32 * j)) + 16, "floor", obj_grass);
			grasspatch2Counter += 1;
		}
		
		for (var j = 1; j < 7; j++) //Making the water
		{
			water2[water2Counter] = instance_create_layer((i * 32) + 16, (288 - (32 * j)) + 16, "floor", obj_water);
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
	
	//Water1 Row 1 (Medium Lilypad Right)
	waterSpawners[0] = instance_create_layer(0, 480 + 16, "objects", obj_lilypadSpawner);
	waterSpawners[0].startPos = -50;
	waterSpawners[0].lilySpeed = 2;
	waterSpawners[0].groupSize = 3;
	waterSpawners[0].groupDistance = 80;
	waterSpawners[0].groupSpacing = (35 / 2);
	
	//Water1 Row 2 (Fast Lilypad Right)
	waterSpawners[1] = instance_create_layer(0, 448 + 16, "objects", obj_lilypadSpawner);
	waterSpawners[1].startPos = -50;
	waterSpawners[1].lilySpeed = 3;
	waterSpawners[1].groupSize = 2;
	waterSpawners[1].groupDistance = 40;
	waterSpawners[1].groupSpacing = (35 / 3);
	
	//Water1 Row 3 (Slow Log Left)
	waterSpawners[2] = instance_create_layer(0, 416 + 16, "objects", obj_logSpawner);
	waterSpawners[2].startPos = 626;
	waterSpawners[2].logSpeed = -1;
	waterSpawners[2].log1Size = 3;
	waterSpawners[2].log2Size = 2;
	waterSpawners[2].log3Size = 3;
	
	//Water1 Row 4 (Medium Log Right)
	waterSpawners[3] = instance_create_layer(0, 384 + 16, "objects", obj_logSpawner);
	waterSpawners[3].startPos = -200;
	waterSpawners[3].logSpeed = 2;
	waterSpawners[3].log1Size = 5;
	waterSpawners[3].log2Size = 3;
	waterSpawners[3].log3Size = 5;
	
	//Water1 Row 5 (Medium Lilypad Left)
	waterSpawners[4] = instance_create_layer(0, 352 + 16, "objects", obj_lilypadSpawner);
	waterSpawners[4].startPos = 626;
	waterSpawners[4].lilySpeed = -3;
	waterSpawners[4].groupSize = 3;
	waterSpawners[4].groupDistance = 50;
	waterSpawners[4].groupSpacing = (35 / 3);
	
	//Water1 Row 6 (Fast Lilypad Left)
	waterSpawners[5] = instance_create_layer(0, 320 + 16, "objects", obj_lilypadSpawner);
	waterSpawners[5].startPos = 626;
	waterSpawners[5].lilySpeed = -4;
	waterSpawners[5].groupSize = 4;
	waterSpawners[5].groupDistance = 40;
	waterSpawners[5].groupSpacing = (35 / 4);
	
	
	//Water2 Row 1 (Medium Log Right)
	waterSpawners[6] = instance_create_layer(0, 256 + 16, "objects", obj_logSpawner);
	waterSpawners[6].startPos = -200;
	waterSpawners[6].logSpeed = 3;
	waterSpawners[6].log1Size = 4;
	waterSpawners[6].log2Size = 3;
	waterSpawners[6].log3Size = 4;

	//Water2 Row 2 (Slow Lilypad Left)
	waterSpawners[7] = instance_create_layer(0, 224 + 16, "objects", obj_lilypadSpawner);
	waterSpawners[7].startPos = 626;
	waterSpawners[7].lilySpeed = -2;
	waterSpawners[7].groupSize = 4;
	waterSpawners[7].groupDistance = 50;
	waterSpawners[7].groupSpacing = (35 / 2);
	
	//Water2 Row 3 (Medium Log Right)
	waterSpawners[8] = instance_create_layer(0, 192 + 16, "objects", obj_logSpawner);
	waterSpawners[8].startPos = -200;
	waterSpawners[8].logSpeed = 2;
	waterSpawners[8].log1Size = 3;
	waterSpawners[8].log2Size = 3;
	waterSpawners[8].log3Size = 3;
	
	//Water2 Row 4 (Fast Log Left)
	waterSpawners[9] = instance_create_layer(0, 160 + 16, "objects", obj_logSpawner);
	waterSpawners[9].startPos = 626;
	waterSpawners[9].logSpeed = -4;
	waterSpawners[9].log1Size = 4;
	waterSpawners[9].log2Size = 4;
	waterSpawners[9].log3Size = 4;
	
	//Water2 Row 5 (Medium Lilypad Right)
	waterSpawners[10] = instance_create_layer(0, 128 + 16, "objects", obj_lilypadSpawner);
	waterSpawners[10].startPos = -50;
	waterSpawners[10].lilySpeed = 2;
	waterSpawners[10].groupSize = 3;
	waterSpawners[10].groupDistance = 40;
	waterSpawners[10].groupSpacing = (35 / 2);
	
	//Water2 Row 6 (Medium Lilypad Left)
	waterSpawners[11] = instance_create_layer(0, 96 + 16, "objects", obj_lilypadSpawner);
	waterSpawners[11].startPos = 626;
	waterSpawners[11].lilySpeed = -2;
	waterSpawners[11].groupSize = 4;
	waterSpawners[11].groupDistance = 50;
	waterSpawners[11].groupSpacing = (35 / 2);

	
	level1Array = [grasspatch1, water1, grasspatch2, water2, landing, waterSpawners]
	return(level1Array);
}