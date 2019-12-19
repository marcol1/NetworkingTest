/// @description Draw the sprite as well as all text (with offsets taken in account)

draw_set_halign(fa_center);
draw_sprite(sprite, subimage, x, y);

draw_set_font(textFont);
draw_text_color(x, y + textYOffset, text, textColor, textColor, textColor, textColor, 1);

draw_set_font(typableFont);
draw_text_color(x, y + typableYOffset, typableText, typableColor, typableColor, typableColor, typableColor, 1);