/// @description Insert description here
// You can write your code in this editor

text = "Debug"
page = 0;
encounter = 0;
xBuffer = 10;
yBuffer = 10;
boxWidth = sprite_get_width(DialogueBox) - (2*xBuffer);
stringHeight = string_height(text);
creator = noone;
charCount = 0;
name = noone;
xHeight = 540;
yHeight = 900;

if room == Room1{
	encounter = 0
} else if room == Room2{
	encounter = 1
}