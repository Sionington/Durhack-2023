global.leaveKyle = true
if global.encounter = 2 && global.itemLogCount = 0{
	global.encounter = 1
} else{
}
global.once = 0
if global.encounter == 2 && global.itemLogCount != 0{
	global.leave = false
}
if global.encounter != 2{
	global.encounter = global.encounter + 1
}