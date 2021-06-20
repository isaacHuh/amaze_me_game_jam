/// @description Insert description here
// You can write your code in this editor
if(z_pressed &&
x_pressed &&
c_pressed &&
v_pressed &&
space_pressed){
	obj_game_controller.alarm[0] = 60;
	obj_game_controller.alarm[2] = irandom_range(200,600)
	instance_destroy();
}

if(keyboard_check_pressed(ord("Z")) && !z_pressed){
	z_pressed = true;
	global.shake = 15;
}

if(keyboard_check_pressed(ord("X")) && !x_pressed){
	x_pressed = true;
	global.shake = 15;
}

if(keyboard_check_pressed(ord("C")) && !c_pressed){
	c_pressed = true;
	global.shake = 15;
}

if(keyboard_check_pressed(ord("V")) && !v_pressed){
	v_pressed = true;
	global.shake = 15;
}

if(keyboard_check_pressed(vk_space) && !space_pressed){
	space_pressed = true;
	global.shake = 15;
}