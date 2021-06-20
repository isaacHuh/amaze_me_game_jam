/// @description Insert description here
// You can write your code in this editor
x += x_spd;
y += y_spd;

alpha -= 0.01;
if(alpha <= 0){
	instance_destroy();
}