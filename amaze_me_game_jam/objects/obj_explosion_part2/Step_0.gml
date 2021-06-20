/// @description Insert description here
// You can write your code in this editor
alpha *= 0.96;
speed *= 0.95;

direction += random_range(-wiggle,wiggle)

if(alpha <= 0.1){
	instance_destroy();
}