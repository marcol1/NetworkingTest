/// @description Draw the sprite differently depending on if its hovered

draw_set_halign(fa_center);
draw_sprite(sprite, 0, x, y);
draw_text_color(x, y + textYOffset, text, textColor, textColor, textColor, textColor, 1);