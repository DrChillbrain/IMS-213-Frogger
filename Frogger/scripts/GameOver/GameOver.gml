// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function GameOver()
{
	Lose();
	obj_gameController.frogLives = 3;
	obj_landing.reached = false;
}