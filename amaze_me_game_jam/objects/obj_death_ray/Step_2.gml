/// @description Insert description here
// You can write your code in this editor
x = obj_hand.x;
y = obj_hand.y;
image_angle = obj_hand.image_angle;
direction = obj_hand.image_angle;

spd *= 0.999;
image_xscale *= spd;

if(image_xscale <= 1){
	instance_destroy();
}
