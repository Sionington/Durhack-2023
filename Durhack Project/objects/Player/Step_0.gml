/// @description Insert description here
// You can write your code in this editor
var _left = keyboard_check(vk_left);
var _right = keyboard_check(vk_right);
var _up = keyboard_check(vk_up);
var _down = keyboard_check(vk_down);
var _hspd = _right - _left;
var _vspd = _down - _up;

if (StartMenu.visible==0)
{
if (_hspd != 0 || _vspd != 0)
{   
    var _dir = point_direction(0, 0, _hspd, _vspd);
    var _xadd = lengthdir_x(global._spd, _dir);
    var _yadd = lengthdir_y(global._spd, _dir);
    x = x + _xadd;
    y = y + _yadd;
}

if keyboard_check(vk_left){
	if image_xscale == 1 {
		image_xscale = -1
		x = x + 64
	}
}
if keyboard_check(vk_right){
	if image_xscale == -1 {
		image_xscale = 1	
		x = x - 64
	}
}
if keyboard_check(vk_enter){
	image_index = 2;
	attackState = true;
	alarm[0] = 1*room_speed;
}
if instance_exists(enemyBo){
	if enemyBo.image_angle != 270{
		if(place_meeting(x,y,enemyBo)){
			if (attackState == true) {
				enemyBo.alarm[0] = 1
				global.enemies = global.enemies - 1
			} else {
				if global.money > 0 {
					global.money = global.money - 1
				} else if global.healthcount = 1 {
					room_goto(Death)
				} else {
					global.healthcount = global.healthcount - 1
				}
				var kb_dir=sign(x-enemyBo.x)
				XSpeed=kb_dir*knockBack
				x = x + XSpeed
			}
		}
	}
}

	if(place_meeting(x,y,itemLog)){
		global.itemLogCount = global.itemLogCount + 1
		itemLog.alarm[0] = 1
	}
}

if(place_meeting(x,y,NPCDino)){
	global._spd = 0
	image_xscale = 1
} else {
	global._spd = 4
}

if global.encounter == 1{
	global.leaveKyle = false
} else if global.encounter == 2 && global.itemLogCount != 0 && once == 0 {
	once = 1
	global.leaveKyle = false
}
 
if(place_meeting(x,y,bed)&& global.encounter >= 6) {
	if keyboard_check_released(vk_space){
		instance_create_layer(0,0,"Text",black)
		global.day = global.day + 1
		global.bank = global.bank * 1.05
		black.alarm[0] = 1*room_speed
		global.encounter = global.encounter + 1
		if global.spaceship == 1{
			room_goto(Spaceship)
		}
	} 
}
if(place_meeting(x,y,NPCBen)){
	if keyboard_check_released(ord("X")){
		if global.sweets >0{
			global.sweets = global.sweets - 1
			global.money = global.money	+ 2
		}
	}
	if keyboard_check_released(ord("Z")){
		if array_length(global.card) > 0 {
			tempcard = array_pop(global.card)
			if tempcard == "Big Dipper" || tempcard == "Ursa Major"{
				global.money = global.money + 2
			} else if tempcard == "Orion" || tempcard == "Cygnus"{
				global.money = global.money + 5		
			} else if tempcard == "Lyra"{
				global.money = global.money + 25
			} else {
				global.money = global.money + 75
			}
		}
	}
}

if(place_meeting(x,y,NPCNotLara)){
	if keyboard_check_released(ord("X")){
			global.money = 0
	}
}

if global.spaceship == 1 {
	if instance_exists(NPCDino){
		if NPCDino.image_angle != 270{
			if(place_meeting(x,y,NPCDino)){
				if (attackState == true) {
					NPCDino.alarm[5] = 1
					room_goto(Spaceship2)
				global.enemies = global.enemies - 1
				} else {
					if global.money > 0 {
						global.money = global.money - 1
					} else if global.healthcount = 1 {
						room_goto(Death)
					} else {
						global.healthcount = global.healthcount - 1
					}
					var kb_dir=sign(x-NPCDino.x)
					XSpeed=kb_dir*knockBack
					x = x + XSpeed
				}
			}
		}
	}
}

if room == Spaceship2{
	if keyboard_check_released(vk_tab){
		instance_create_layer(0,0,"Text",credits)
	}
}

