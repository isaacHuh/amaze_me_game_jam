/// @description Insert description here
// You can write your code in this editor
draw_self();


draw_set_alpha(image_alpha)

X = x
Y = y+random_range(-20,20)
len = 100;
while(X < room_width){
	new_X = x + lengthdir_x(len+random_range(20,60),image_angle)
	
	new_Y = y + lengthdir_y(len+random_range(20,60),image_angle) + random_range(-50,50);
	draw_line_width_color(X,Y,new_X,new_Y,10,obj_hand.blue,obj_hand.blue);
	
	X = new_X;
	Y = new_Y;
	len += 100
}

X = x
Y = y+random_range(-20,20)
len = 100;
while(X > 0){
	new_X = x + lengthdir_x(len-random_range(20,60),image_angle)
	
	new_Y = y + lengthdir_y(len-random_range(20,60),image_angle) + random_range(-50,50);
	draw_line_width_color(X,Y,new_X,new_Y,10,obj_hand.blue,obj_hand.blue);
	
	X = new_X;
	Y = new_Y;
	len -= 100
}
draw_set_alpha(1)
