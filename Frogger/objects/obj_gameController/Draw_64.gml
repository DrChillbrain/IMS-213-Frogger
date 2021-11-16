/// @description Drawing text
// You can write your code in this editor
if (inGame)
{
	draw_text_ext_transformed_color(8, 4, "Lives:", 10, 100, 1, 1, 0, c_white, c_white, c_white, c_white, 1);

	for (var i = 2; i < (frogLives + 2); i++)
	{
		draw_sprite(spr_frog, 1, (i * 32) + 16, 16);
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

	draw_text_ext_transformed_color(180, 4, "Score:" + string(drawScore), 10, 100, 1, 1, 0, c_white, c_white, c_white, c_white, 1);
}

if (!inGame)
{
	
}