/// @description Insert description here
// You can write your code in this editor

if(place_meeting(x,y,Player)){
	if(myTextbox == noone){
		myTextbox = instance_create_layer(x,y,"Text",Textbox);
		myTextbox.text = myText;
		myTextbox.creator =	self;
		myTextbox.name = myName;
	}
	else {
		
	}
} else {
	if (myTextbox != noone){
		instance_destroy(myTextbox);
		myTextbox = noone;
	}
}
if aggressive = true{
	if distance_to_object(Player)<=1920 && distance_to_object(Player)>0{    //prevents Bowser from running across the map to get you
		if (collision_line(x,y,Player.x,Player.y,id,true,true) = noone) {
			direction=point_direction(x,y,Player.x,Player.y);
		    speed= 3;
		}
	} else {
		speed = 0
	}
}
if aggressive = false {
	image_xscale = -1
	x = x + 10
}