/// @description Insert description here
// You can write your code in this editor
c = 255


switch(circ){
	case 0:
		draw_set_color(color)
		draw_circle(x,y,40,0);
		draw_set_color(c_black)
		draw_circle(x,y,36,0);
		break;
}

draw_set_color(color)
switch(smile){
	case 0:
		draw_circle(x-10,y-10,5,0);
		draw_circle(x+10,y-10,5,0);
		scr_bezier_curve(x-20,y+20,
						x,y,
						x+20,y+20,
						color);
		break;
	case 1:
		draw_circle(x-10,y-10,5,0);
		draw_circle(x+10,y-10,5,0);
		scr_bezier_curve(x-20,y,
						x,y+20,
						x+20,y,
						color);
		break;
	case 2:
		draw_line_width(x-10-7,y-10-7,
					x-10+7,y-10+7,5)
		draw_line_width(x-10+7,y-10-7,
					x-10-7,y-10+7,5)
					
		draw_line_width(x+10-7,y-10-7,
					x+10+7,y-10+7,5)
		draw_line_width(x+10+7,y-10-7,
					x+10-7,y-10+7,5)
		scr_bezier_curve(x-20,y+20,
						x,y,
						x+20,y+20,
						color);
		break;
	case 3:
		draw_line_width(x-10-7,y-10-7,
					x-10+7,y-10+7,5)
		draw_line_width(x-10+7,y-10-7,
					x-10-7,y-10+7,5)
					
		draw_line_width(x+10-7,y-10-7,
					x+10+7,y-10+7,5)
		draw_line_width(x+10+7,y-10-7,
					x+10-7,y-10+7,5)
		scr_bezier_curve(x-20,y,
						x,y+20,
						x+20,y,
						color);
		break;
}

