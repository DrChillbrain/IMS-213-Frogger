// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function GameOver()
{	
	instance_create_layer(96,193,"hud_elements",obj_gameovertext)

	obj_gameController.MenuSetup();
	obj_gameController.ClearField();
	obj_gameController.levelCount = 1;
	obj_gameController.realScore = 0;
	obj_gameController.drawScore = 0;
	instance_destroy(obj_death);
}