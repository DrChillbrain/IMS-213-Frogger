// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Lose()
{
	//Play animation of dying
	instance_create_layer(obj_player.x, obj_player.y, "hud_elements", obj_death);
	instance_destroy(obj_player);
	obj_gameController.frogLives -= 1;
	obj_gameController.realScore -= 50;
}