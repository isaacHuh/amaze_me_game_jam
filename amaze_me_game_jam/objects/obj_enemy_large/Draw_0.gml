/// @description Insert description here
// You can write your code in this editor

X = x - (30*hits)/2
	X+=15
repeat(hits){

	draw_circle_color(X,y-32*image_xscale - 20,8,c_white,c_white,0)	
	X+=30
}

draw_circle_color(x,y,32*image_xscale,color,color,0);



len = 32*image_xscale-16*image_xscale - 8
dir = point_direction(x,y,mouse_x,mouse_y) + 10*sin(count)
draw_circle_color(x+lengthdir_x(len,dir),y+lengthdir_y(len,dir),16*image_xscale,c_black,c_black,0);
