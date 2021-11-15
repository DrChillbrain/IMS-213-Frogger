/// @description Drawing text
// You can write your code in this editor

draw_text_ext_transformed_color(8, 8, "Lives:", 10, 100, 1, 1, 0, c_white, c_white, c_white, c_white, 1);

for (var i = 2; i < (frogLives + 2); i++)
{
	draw_sprite(spr_frog, 1, (i * 32) + 16, 16);
}