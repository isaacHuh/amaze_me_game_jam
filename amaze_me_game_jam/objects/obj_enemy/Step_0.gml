/// @description Insert description here
// You can write your code in this editor

count += 0.015;

y += yspd;
x += xspd;

if(x < 0){
	xspd = abs(xspd);
}

if(x > room_height){
	xspd = -abs(xspd);
}

if(y > room_height + 50){
	explo = instance_create_depth(x,y,depth,obj_explosion);
	explo.color = color;
	explo.type = 2;
	global.hp -= 2;
	instance_destroy();
}