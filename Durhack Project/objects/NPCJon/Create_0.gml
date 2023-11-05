/// @description Insert description here
// You can write your code in this editor

myTextbox = noone;
myName = "Jon";

myText[1][0] = "Hello there Clive.";
myText[1][1] = "I have a job for you if you want some money.";
myText[1][2] = "All you have to do are knock out the beavers to the south.";
myText[1][3] = "Or you could put your money away in the back to the north.";

if global.itemLogCount != 0 {
	myText[2][0] = "Hello there Clive.";
	myText[2][1] = "I see you killed the beaver.";
	myText[2][2] = "Here's your reward.";
	myText[2][3] = "Also, you may be able to sell that wood to Kyle for some extra money.";
} else if global.bank != 0{
	myText[2][0] = "Hello there Clive.";
	myText[2][1] = "I see you went to the bank.";
	myText[2][2] = "All you have to do are knock out the beavers to the south.";
	myText[2][3] = "Or you could put your money away in the back to the north.";
} else {
	myText[2][0] = "Hello there Clive.";
	myText[2][1] = "I have a job for you if you want some money.";
	myText[2][2] = "All you have to do are knock out the beavers to the south.";
	myText[2][3] = "Or you could put your money away in the back to the north.";

}