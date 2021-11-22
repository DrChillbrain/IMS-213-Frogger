// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Level7Creator()
{
	//Level 1, 1 road, 1 water
	grasspatch1 = [];
	var grasspatch1Counter = 0;
	water = [];
	var waterCounter = 0;
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
		
		for (var j = 1; j < 14; j++) //Making the water
		{
			water[waterCounter] = instance_create_layer((i * 32) + 16, (512 - (32 * j)) + 16, "floor", obj_water);
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
	
	//Water Row 1 ()
	
	//Water Row 2 ()
	
	//Water Row 3 ()

	//Water Row 4 ()
	
	//Water Row 5 ()
	
	//Water Row 6 ()
	
	//Water Row 7 ()
	
	//Water Row 8 ()
	
	//Water Row 9 ()
	
	//Water Row 10 ()
	
	//Water Row 11 ()
	
	//Water Row 12 ()
	
	//Water Row 13 ()
	
	
	level1Array = [grasspatch1, water, landing, waterSpawners]
	return(level1Array);
}