/// @description Insert description here
// You can write your code in this editor

count += 0.02;
rotate = 4*sin(count);

if(keyboard_check(vk_shift)){
	y = lerp(y, target_y,0.2);
}else{
	y = lerp(y, -target_y,0.2);
}