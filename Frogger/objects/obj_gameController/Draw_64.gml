/// @description Drawing text
// You can write your code in this editor
if (inGame)
{
	draw_set_font(fn_game);
	draw_set_halign(fa_left);
	
	draw_text_ext_transformed_color(8, 4, "Lives:", 10, 100, 1, 1, 0, c_white, c_white, c_white, c_white, 1);

	for (var i = 2; i < (frogLives + 2); i++)
	{
		draw_sprite_ext(spr_frog, 1, (i * 32) + 16, 16, 1, 1, 0, c_white, 1);
	}

	if (realScore < 0)
	{
		realScore = 0;
	}

	if (drawScore < realScore)
	{
		drawScore += 10;
	}

	if (drawScore > realScore)
	{
		drawScore -= 10;
	}

	draw_text_ext_transformed_color(230, 4, "Score: " + string(drawScore), 10, 500, 1, 1, 0, c_white, c_white, c_white, c_white, 1);
	draw_text_ext_transformed_color(480, 4, "Level: " + string(levelCount), 10, 500, 1, 1, 0, c_white, c_white, c_white, c_white, 1);
}

if (!inGame)
{
	draw_set_font(fn_title);
	draw_set_halign(fa_left);
	
	if (mainMenu == true && levelSelect == false)
	{
		draw_sprite_ext(spr_logo, 1, 288, 160, 0.175, 0.175, 0, c_white, 1);
		draw_text_ext_transformed_color(180, 320, "Start Game", 10, 300, 1, 1, 0, c_white, c_white, c_white, c_white, 1);
		draw_text_ext_transformed_color(180, 400, "Level Select", 10, 300, 1, 1, 0, c_white, c_white, c_white, c_white, 1);
		draw_text_ext_transformed_color(180, 480, "Quit", 10, 300, 1, 1, 0, c_white, c_white, c_white, c_white, 1);
	}
	
	if (levelSelect == true && mainMenu == false)
	{
		//Title text
		draw_text_ext_transformed_color(100, 50, "Back to Main Menu", 10, 10000, 1, 1, 0, c_white, c_white, c_white, c_white, 1);
		
		var counter = 0;
		//Levels to select
		for (var i = 0; i < 5; i++)
		{
			for (var j = 0; j < 2; j++)
			{
				counter += 1;
				if (counter > maxLevel)
				{
					draw_text_ext_transformed_color((100 + (250 * j)), (160 + (i * 80)), ("Level " + string(counter)), 10, 300, 1, 1, 0, c_white, c_white, c_white, c_white, 0.5);
				}
				
				else
				{
					draw_text_ext_transformed_color((100 + (250 * j)), (160 + (i * 80)), ("Level " + string(counter)), 10, 300, 1, 1, 0, c_white, c_white, c_white, c_white, 1);
				}
			}
		}
	}
	
}

if (mapping)
{
	draw_sprite_ext(spr_mapBG, 0, 288, 258, 7, 5, 0, c_white, 0.9);
	
	draw_sprite_ext(spr_dpad, dpadIndex, 192, 288, 0.2, 0.2, 0, c_white, 1);
	draw_sprite_ext(spr_button, buttonIndex, 420, 288, 0.2, 0.2, 0, c_white, 1);
}