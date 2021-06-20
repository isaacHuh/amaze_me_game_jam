/// @description Insert description here
// You can write your code in this editor
draw_set_font(fnt_text);
draw_set_halign(fa_left);
draw_set_valign(fa_center);
color = c_white

draw_text_transformed_color(100,900,"GAME BY",1,1,0,color,color,color,color,1);
draw_text_transformed_color(100,1000,"MUSIC BY",1,1,0,color,color,color,color,1);

color = make_color_rgb(224, 67, 67)
draw_text_transformed_color(100 + string_width("GAME BY"),900," ISAAC TORRES",1,1,0,color,color,color,color,1);
draw_text_transformed_color(100 + string_width("MUSIC BY"),1000," E. ZACK KENNEDY",1,1,0,color,color,color,color,1);

color = c_white
draw_set_halign(fa_center);
draw_text_transformed_color(x,y-100,score,1.5,1.5,0,color,color,color,color,1);

if(hightlighted){
	color = make_color_rgb(224, 67, 67)
}
draw_text_transformed_color(x,y+100,"RETRY",1.5,1.5,0,color,color,color,color,1);

color = c_white;

if(hightlighted1){
	color = make_color_rgb(224, 67, 67)
}
draw_text_transformed_color(x,y+200,"QUIT",1.5,1.5,0,color,color,color,color,1);


