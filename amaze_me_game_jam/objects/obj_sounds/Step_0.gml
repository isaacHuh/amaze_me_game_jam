/// @description Insert description here
// You can write your code in this editor
if(audio_is_playing(Main_Beat)){
	color = obj_hand.color;
	fade_time = 300;
	
	if(color == obj_hand.red){
		audio_sound_gain(Red_Instrument,1,fade_time)
	}else{
		audio_sound_gain(Red_Instrument,0,fade_time)
	}

	if(color == obj_hand.blue){
		audio_sound_gain(Blue_Instrument,1,fade_time)
	}else{
		audio_sound_gain(Blue_Instrument,0,fade_time)
	}

	if(color == obj_hand.pink){
		audio_sound_gain(Pink_Instrument,1,fade_time)
	}else{
		audio_sound_gain(Pink_Instrument,0,fade_time)
	}
	
	if(color == obj_hand.green){
		audio_sound_gain(Green_Instrument,1,fade_time)
	}else{
		audio_sound_gain(Green_Instrument,0,fade_time)
	}
}

if(audio_is_playing(Intro_Bit) && !instance_exists(obj_tutorial)){
	audio_stop_sound(Intro_Bit)
	
	audio_play_sound(Main_Beat,0,1)

	audio_play_sound(Blue_Instrument,0,1)
	audio_sound_gain(Blue_Instrument,0,0)

	audio_play_sound(Red_Instrument,0,1)
	audio_sound_gain(Red_Instrument,0,0)

	audio_play_sound(Pink_Instrument,0,1)
	audio_sound_gain(Pink_Instrument,0,0)
	
	audio_play_sound(Green_Instrument,0,1)
	audio_sound_gain(Green_Instrument,0,0)
}