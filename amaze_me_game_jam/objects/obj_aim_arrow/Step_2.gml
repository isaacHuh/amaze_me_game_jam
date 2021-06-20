/// @description Insert description here
// You can write your code in this editor

x = camera_get_view_x(view_camera[0]) + mouse_x;
y = camera_get_view_y(view_camera[0]) + mouse_y;

count += 0.02;

/*
x = obj_player.x + lengthdir_x(300,dir) ;
y = obj_player.y + lengthdir_y(300,dir) ;

key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);

if(key_left){
	dir += 2; 
}

if(key_right){
	dir -= 2;
}
*/