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
	
	//Road Row 1 ()
	
	//Road Row 2 ()
	
	//Road Row 3 ()
	
	
	//Water1 Row 1 ()
	
	//Water1 Row 2 ()
	
	//Water1 Row 3 ()
	
	//Water1 Row 4 ()
	
	
	//Water2 Row 1 ()
	
	//Water2 Row 2 ()
	
	//Water2 Row 3 ()
	
	//Water2 Row 4 ()
	
	
	level1Array = [grasspatch1, road, grasspatch2, water1, grasspatch3, water2, landing, carSpawners, waterSpawners]
	return(level1Array);
}