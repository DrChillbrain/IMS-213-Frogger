/// @description Setting variables
// You can write your code in this editor

carType = 0;
startPos = 0;
truckSpeed = 0;
groupSize = 0;
groupCount = 0;
groupDistance = 0;
groupSpacing = 0;
firstCall = false;

function FillScreen()
{
	firstCall = true;
	
	if (carType == 1)
	{
		for (var i = 0; i < groupSize; i++)
		{
			for (var j = 0; j < 3; j++)
			{
				var truck = instance_create_layer((startPos) + (((groupDistance + (j * ((groupDistance) + (groupSpacing * (groupSize - 1))))) + (groupSpacing * i)) / (1 / truckSpeed)), y, "cars", obj_truck);
				truck.truckSpeed = truckSpeed;
				
				if (truckSpeed > 0)
				{
					truck.image_xscale = -1;
				}
			}
		}
	}

	else if (carType == 2)
	{
		for (var i = 0; i < groupSize; i++)
		{
			for (var j = 0; j < 3; j++)
			{
				var car = instance_create_layer((startPos) + (((groupDistance + (j * ((groupDistance) + (groupSpacing * (groupSize - 1))))) + (groupSpacing * i)) / (1 / truckSpeed)), y, "cars", obj_car);
				car.carSpeed = truckSpeed;
				
				if (truckSpeed > 0)
				{
					car.image_xscale = -1;
				}
			}
		}
	}
}

alarm_set(0, 1);