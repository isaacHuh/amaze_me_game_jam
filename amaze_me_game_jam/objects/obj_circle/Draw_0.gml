/// @description Insert description here
// You can write your code in this 
if(obj_hand.color == obj_hand.blue){
	color = obj_hand.color;
	circ = instance_furthest(x,y,obj_circle);

	//if(color == obj_hand.green){
		num = instance_number(obj_circle);

		for(i = 0; i < num; i++){
			circ_curr = instance_find(obj_circle,i);
			if(circ == circ_curr || circ_curr == id){
				continue;
			}
			if(point_distance(x,y,circ.x,circ.y) > point_distance(x,y,circ_curr.x,circ_curr.y)){
				circ = circ_curr;
			}
		}
	//}

	draw_set_alpha(1);
	draw_line_width_color(x,y,circ.x,circ.y,5,color,color)
	draw_set_alpha(1);
}