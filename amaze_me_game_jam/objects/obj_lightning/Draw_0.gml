/// @description Insert description here
// You can write your code in this editor
X = x
Y = y

draw_set_alpha(alpha)
while(Y > 0){
	new_X = X + random_range(-100,100);
	new_Y = Y + random_range(-200,20);
	draw_line_width_color(X,Y,new_X,new_Y,10,obj_hand.blue,obj_hand.blue);
	
	X = new_X;
	Y = new_Y;
}
draw_set_alpha(1)
