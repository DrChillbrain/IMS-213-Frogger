// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function GameOver()
{
	Lose();
	obj_gameController.frogLives = 3;
	obj_gameController.realScore = 0;
	obj_landing.reached = false;
	instance_create_layer(96,193,"hud_elements",obj_gameovertext)
}