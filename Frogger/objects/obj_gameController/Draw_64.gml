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

	draw_text_ext_transformed_color(180, 4, "Score: " + string(drawScore), 10, 500, 1, 1, 0, c_white, c_white, c_white, c_white, 1);
}

if (!inGame)
{
	draw_set_font(fn_title);
	draw_set_halign(fa_left);
	
	draw_sprite_ext(spr_logo, 1, 288, 160, 0.175, 0.175, 0, c_white, 1);
	draw_text_ext_transformed_color(180, 320, "Start Game", 10, 300, 1, 1, 0, c_white, c_white, c_white, c_white, 1);
	draw_text_ext_transformed_color(180, 400, "Level Select", 10, 300, 1, 1, 0, c_white, c_white, c_white, c_white, 1);
	draw_text_ext_transformed_color(180, 480, "Quit", 10, 300, 1, 1, 0, c_white, c_white, c_white, c_white, 1);
}