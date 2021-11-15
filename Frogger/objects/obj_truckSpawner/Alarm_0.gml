/// @description Spawning vehicles
// You can write your code in this editor

if (carType == 1) //Truck Object
{
	var truck = instance_create_layer(startPos, y, "cars", obj_truck)
	truck.truckSpeed = truckSpeed;
	
	if (truckSpeed > 0)
	{
		truck.image_xscale = -1;
	}
}

else if (carType == 2) //Car Object
{
	var car = instance_create_layer(startPos, y, "cars", obj_car);
	car.carSpeed = truckSpeed;
	
	if (truckSpeed > 0)
	{
		car.image_xscale = -1;
	}
}

groupCount += 1;

if (groupCount == groupSize)
{
	groupCount = 0;
	alarm_set(0, groupDistance);
}

else
{
	alarm_set(0, groupSpacing);
}