/// @description Insert description here
// You can write your code in this editor
image_xscale += 0.15;
image_yscale = image_xscale;
image_alpha *= 0.99;

if(image_alpha <= 0.6){
	instance_destroy();
}