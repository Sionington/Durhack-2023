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
    var _xadd = lengthdir_x(_spd, _dir);
    var _yadd = lengthdir_y(_spd, _dir);
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
	_spd = 0
	image_xscale = 1
} else {
	_spd = 4
}

if global.encounter == 1{
	global.leaveKyle = false
} else if global.encounter == 2 && global.itemLogCount != 0 && once == 0 {
	once = 1
	global.leaveKyle = false
}

if(place_meeting(x,y,bed)){
	if keyboard_check(vk_space){
		instance_create_layer(0,0,"Text",black)
		black.alarm[0] = 1*room_speed
	} 
}