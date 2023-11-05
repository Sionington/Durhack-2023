/// @description Insert description here
// You can write your code in this editor

if(place_meeting(x,y,Player)){

	if(keyboard_check_pressed(vk_space)){
		if(myTextbox == noone){
			myTextbox = instance_create_layer(x,y,"Text",Textbox);
			myTextbox.text = myText;
			myTextbox.creator =	self;
			myTextbox.name = myName;
		}
	}
	else {
		
	}
	if(keyboard_check_pressed(vk_backspace)){
		global.encounter = 1100
		if(myTextbox == noone){
			myTextbox = instance_create_layer(x,y,"Text",Textbox);
			myTextbox.text = myText;
			myTextbox.creator =	self;
			myTextbox.name = myName;
		}
	}
	else {
	}
} else {
	if (myTextbox != noone){
		instance_destroy(myTextbox);
		myTextbox = noone;
		global.encounter = temp
	}
}
