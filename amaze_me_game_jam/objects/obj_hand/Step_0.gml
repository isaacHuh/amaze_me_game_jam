/// @description Insert description here
// You can write your code in this editor
{
	count += 0.02;
	rotate = 4*sin(count);
	attack_len *= 0.9;

	image_angle = rotate + point_direction(960,1200,mouse_x, mouse_y)-90;
	direction = image_angle

	x = lerp(x,mouse_x+lengthdir_x(attack_len,direction+90),0.1) + 5*sin((count+1)/1.5)+random_range(-shake,shake);
	y = lerp(y,mouse_y+lengthdir_y(attack_len,direction+90),0.1) + 5*sin((count+2)/1.5)
	y = clamp(y,500-attack_len,1080)+random_range(-shake,shake);
	shake *= 0.9;
}
/////////////////

pinky = keyboard_check(ord("Z"));
ring = keyboard_check(ord("X"));
middle = keyboard_check(ord("C"));
pointer = keyboard_check(ord("V"));
thumb = keyboard_check(vk_space);

finger_keys = [pinky,ring,middle,pointer,thumb]

for(j = 0; j < 5; j++){
	draw_fingers[j] = finger_keys[j];
}

position_case[0] = [0,1,1,0,0, red]
position_case[1] = [1,1,1,0,0, green]
position_case[2] = [1,1,0,0,1, blue]
position_case[3] = [1,1,1,1,1, pink]

new_color = c_white;
for(j = 0; j < array_length_1d(position_case); j++){
	match = true;
	for(b = 0; b < 5; b++){
		if(draw_fingers[b] != position_case[j][b]){
			match = false;
			//show_debug_message(draw_fingers)
		}
	}
	
	if(match){
		new_color = position_case[j][5];
	}
}
if(color != new_color){
	global.shake = 15;
}
color = new_color;

if(color == c_white){
	obj_bloom.value = 1.3;
}else{
	obj_bloom.value = 2;
}

//////////


if(color == green){
	if(mouse_check_button(mb_left)){
		if(shoot_count % 3 == 0){
			 dir = image_angle + 60;
			 
			 bullet = instance_create_depth(x+lengthdir_x(200,dir)+random_range(-20,20),y+lengthdir_y(200,dir)+random_range(-20,20),depth,obj_bullet)
			 bullet.image_blend = color;
			 
			 ang = image_angle + 90+random_range(-10,10);
			 bullet.direction = ang;
			 bullet.image_angle = ang;
			 
			 image_angle += random_range(-5,5)
			 global.shake = 8;
			 
		}
		if(!audio_is_playing(Green_Gun_Sound)){
			audio_play_sound(Green_Gun_Sound,0,1)
			audio_sound_gain(Green_Gun_Sound,0.5,0);
		}else{
			audio_sound_gain(Green_Gun_Sound,0.5,200);
		}
		shoot_count++;
	}else{
		
		if(audio_is_playing(Green_Gun_Sound)){
			audio_sound_gain(Green_Gun_Sound,0,200);
			if(audio_sound_get_gain(Green_Gun_Sound) < 0.02){
				audio_stop_sound(Green_Gun_Sound)
			}
		}
		shoot_count = 0;
	}
}else{
	if(audio_is_playing(Green_Gun_Sound)){
		audio_sound_gain(Green_Gun_Sound,0,200);
		if(audio_sound_get_gain(Green_Gun_Sound) < 0.02){
			audio_stop_sound(Green_Gun_Sound)
		}
	}
}

if(color == blue){
	if(mouse_check_button_pressed(mb_left)){
		instance_create_depth(x,y,depth+1,obj_blue_ray)
		global.shake = 35;
		shake = 25;
		

		audio_play_sound(Lazer_Fade,0,0)
	}
}

if(color == red){
	if(mouse_check_button_pressed(mb_left) && !instance_exists(obj_death_ray)){
		instance_create_depth(x,y,depth+1,obj_death_ray)
		global.shake = 25;
		shake = 30;

		audio_play_sound(Lazer_Fade,0,0)
	}
}

if(color == pink){
	if(mouse_check_button_pressed(mb_left)){
		attack_len = 1000;
		global.shake = 25;
		shake = 60;
	}
}


