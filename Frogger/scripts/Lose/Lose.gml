// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Lose()
{
	//Play animation of dying
	instance_destroy(obj_player);
	obj_gameController.frogLives -= 1;
	obj_gameController.realScore -= 50;
	
	//Spawning new player
	instance_create_layer(304, 560, "player", obj_player);
}