/// @description Insert description here
// You can write your code in this editor
r1 = random(100)
r2 = random(100)
if r1 < 40{
	if r2 < 50 {
		array_push(global.card,"Big Dipper")
	}
	else {
		array_push(global.card,"Ursa Major")
	}
} else if r1 < 70 {
	if r2  < 50{
		array_push(global.card,"Orion")
	}
	else{
		array_push(global.card,"Cygnus")
	}
} else if r1 < 90{
	array_push(global.card,"Lyra")	
} else if r1 < 100 {
	array_push(global.card,"Pegasus")
}
