/// @description Insert description here
// You can write your code in this editor
if(color == obj_hand.green){
	explo = instance_create_depth(x,y,depth,obj_explosion);
	explo.color = color;
	score += irandom_range(20,100)
	audio_sound_pitch(Punch, random_range(0.8,1.2))
	audio_play_sound(Punch,0,0)
	instance_destroy();
}