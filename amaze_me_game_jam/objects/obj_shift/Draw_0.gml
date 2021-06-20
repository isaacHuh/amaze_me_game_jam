/// @description Insert description here
// You can write your code in this editor
if(!keyboard_check(vk_shift) && obj_hand.color == c_white){
	color = obj_hand.color;
	
	width = 100;
	
	draw_rectangle_color(x-width,y-width,x+width,y+width/3.5,c_black,c_black,c_black,c_black,0);
	draw_line_width_color(x-width,y-width,x-width,y+width/3.5,8,color,color);
	draw_line_width_color(x+width,y-width,x+width,y+width/3.5,8,color,color);
	draw_line_width_color(x-width,y+width/3.5,x+width,y+width/3.5,8,color,color);
	
	draw_set_font(fnt_text);
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	draw_text_color(x,y,"SHIFT",c_white,c_white,c_white,c_white,1);
}else if(keyboard_check(vk_shift)){
	draw_set_font(fnt_text);
	draw_set_valign(fa_center);
	draw_set_halign(fa_left);
	draw_text_color(x + 100,y+30,"LEFT CLICK TO ATTACK",c_white,c_white,c_white,c_white,1);
	
	//draw_text_color(x-50,1080-200,"Game By Isaac Torres",c_white,c_white,c_white,c_white,1);
}
