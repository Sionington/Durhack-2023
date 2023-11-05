/// @description Insert description here
// You can write your code in this editor

if (keyboard_check_pressed(vk_space)){
	if(page+1 < array_length_1d(text[global.encounter])){
		page += 1;		
		charCount = 0;
	} else {
		instance_destroy()
		creator.alarm[1] = 1;
	}
}
if global.encounter == 2 && page == 2 && global.once = 0 && room == Room2 && global.itemLogCount != 0{
	global.once = 1;
	global.leaveKyle = true;
	global.money = global.money + 25;
}
if global.encounter == 1000 && page == 2 {
	if(keyboard_check_pressed(ord("1"))){
		if global.money >= 25 {
			global.bank = global.bank + 25
			global.money = global.money - 25
		}
	}
	if(keyboard_check_pressed(ord("2"))){
		if global.money >= 25 {
			global.bank = global.bank + 50
			global.money = global.money - 50
		}
	}
	if(keyboard_check_pressed(ord("3"))){
		if global.money >= 25 {
			global.bank = global.bank + 100
			global.money = global.money - 100
		}
	}
	if(keyboard_check_pressed(ord("4"))){
		if global.money >= 25 {
			global.bank = global.bank + 200
			global.money = global.money - 200
		}
	}
}

if global.encounter == 3 && page == 3 {
	if(keyboard_check_pressed(ord("X"))){
		global.money = global.money + (25 * global.itemLogCount);
		global.itemLogCount = 0;
	}
}

if global.encounter == 1100 && page == 1 {
	if(keyboard_check_pressed(ord("Z"))){
		if global.money >= 10 {
			global.money = global.money - 10
			Player.alarm[3] = 1
		}
	}
	if(keyboard_check_pressed(ord("X"))){
		if global.money >= 5 {
			global.money = global.money - 5
			global.sweets = global.sweets + 1
		}
	}
}
if global.encounter ==4 && page == 1{
	global.money = 0
}
if global.encounter == 4 && page == 2 {
	NPCDino.aggressive = false
}