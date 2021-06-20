/// @description Insert description here
// You can write your code in this editor
if(color == obj_hand.blue){
	explo = instance_create_depth(x,y,depth,obj_explosion);
	explo.color = color;
	score += irandom_range(20,100)
	audio_sound_pitch(Punch, random_range(0.8,1.2))
	audio_play_sound(Punch,0,0)
	//audio_play_sound(choose(Blue_Enemy_Killed_1,Blue_Enemy_Killed_2,Blue_Enemy_Killed_3,Blue_Enemy_Killed_4,Blue_Enemy_Killed_5,Blue_Enemy_Killed_6),0,0)
	instance_destroy();
}