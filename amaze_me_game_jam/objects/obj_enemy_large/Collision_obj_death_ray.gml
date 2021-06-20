/// @description Insert description here
// You can write your code in this editor
if(color == obj_hand.red){
	hits--;
	explo = instance_create_depth(x,y,depth,obj_explosion);
	explo.color = color;
	color = choose(obj_hand.red,obj_hand.green,obj_hand.blue,obj_hand.pink)
	audio_play_sound(choose(Blue_Enemy_Killed_1,Blue_Enemy_Killed_2,Blue_Enemy_Killed_3,Blue_Enemy_Killed_4,Blue_Enemy_Killed_5,Blue_Enemy_Killed_6),0,0)
}