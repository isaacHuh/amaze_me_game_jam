/// @description Insert description here
// You can write your code in this editor
if(obj_hand.color == obj_hand.green){
	color = obj_hand.color;

	dist = (room_height/6);
	for(i = dist/2; i < 1920; i+=dist){
		X = i;
		draw_line_width_color(X,0,X,room_height,8,color,color);
	}


	for(i = dist/2; i < 1080; i+=dist){
		Y = (i + y_offset)%1080;
		draw_line_width_color(0,Y,room_width,Y,8,color,color);
	}
}