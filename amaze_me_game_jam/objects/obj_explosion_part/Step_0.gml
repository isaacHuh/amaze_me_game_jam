/// @description Insert description here
// You can write your code in this editor
alpha *= 0.96;
speed *= 0.95;

if(alpha <= 0.1){
	instance_destroy();
}