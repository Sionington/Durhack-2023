/// @description Insert description here
// You can write your code in this editor

draw_sprite(sprTextbox, 0, xHeight, yHeight);

draw_set_font(fntText);

if (charCount < string_length(text[page])){
	charCount += 1
	creator.alarm[0] = 1;
} else {
	creator.alarm[2] = 1;
}
textPart = string_copy(text[page], 1, charCount);

draw_set_halign(fa_center)
draw_text(xHeight + (boxWidth/2) ,yHeight+yBuffer,name);
draw_set_halign(fa_left)

draw_text_ext(xHeight+xBuffer,yHeight+stringHeight+yBuffer,textPart, stringHeight, boxWidth);