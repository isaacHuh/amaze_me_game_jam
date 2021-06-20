/// @description Insert description here
// You can write your code in this editor
image_yscale = lerp(image_yscale,30,0.2);

ttl--;

if(ttl < 0){
	image_alpha *= 0.85;
}

if(image_alpha <= 0.01){
	instance_destroy()
}