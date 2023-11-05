/// @description Insert description here
// You can write your code in this editor
if global.enemies = 0{
	if(place_meeting(x,y,Player)){
		if global.encounter == 1000 || global.encounter == 1100{
			global.encounter = temp
		}
		if global.encounter != 3 {
			room_goto(Room2);
		}
		
	}
}