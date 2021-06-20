/// @description Insert description here
// You can write your code in this editor
if(obj_hand.color == obj_hand.red){
	color = obj_hand.color;
	draw_line_width_color(x,y,x,-50,20*size,color,color)
	circ_size = 40*size;
	draw_ellipse_color(x-circ_size,y+circ_size/2,x+circ_size,y-circ_size/2,color,color,0);
}