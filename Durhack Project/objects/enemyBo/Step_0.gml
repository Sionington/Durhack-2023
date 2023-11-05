/// @description Insert description here
// You can write your code in this editor
if image_angle != 270 {
	if distance_to_object(Player)<=1920{    //prevents Bowser from running across the map to get you
	      if (collision_line(x,y,Player.x,Player.y,id,true,true) = noone) {
	           direction=point_direction(x,y,Player.x,Player.y);
	           speed= 3;
	    }
if (StartMenu.visible==0)
{
	if image_angle != 270 {
		if distance_to_object(Player)<=1366{    //prevents Bowser from running across the map to get you
		      if (collision_line(x,y,Player.x,Player.y,id,true,true) = noone) {
		           direction=point_direction(x,y,Player.x,Player.y);
		           speed= 3;
		    }
		}
	} else {
		speed = 0;
	}
} 
else
{
	speed = 0;
}



	