/// @description Insert description here
// You can write your code in this editor

draw_set_alpha(alpha)
draw_rectangle_color(x-size/2,y-size/2,x+size/2,y+size/2,color,color,color,color,0);
if(trail_chance){
	draw_line_width_color(x,y,x + lengthdir_x(len,direction+180),y + lengthdir_y(len,direction+180),size,color,c_black)
}

draw_set_alpha(1)