/// @description Insert description here
// You can write your code in this editor
spacing = 100;
y = 700;
x = 960-spacing*2 - 200;

size = 40
draw_set_font(fnt_text)
draw_set_halign(fa_center)
draw_set_valign(fa_center)

if(!z_pressed){
	draw_rectangle_color(x-size,y-size,x+size,y+size,c_white,c_white,c_white,c_white,0)
	draw_rectangle_color(x-size+8,y-size+8,x+size-8,y+size-8,c_black,c_black,c_black,c_black,0)
	draw_set_color(c_white)
	draw_text(x,y,"Z")
}

x += spacing;

if(!x_pressed){
	draw_rectangle_color(x-size,y-size,x+size,y+size,c_white,c_white,c_white,c_white,0)
	draw_rectangle_color(x-size+8,y-size+8,x+size-8,y+size-8,c_black,c_black,c_black,c_black,0)
	draw_set_color(c_white)
	draw_text(x,y,"X")
}

x += spacing;

if(!c_pressed){
	draw_rectangle_color(x-size,y-size,x+size,y+size,c_white,c_white,c_white,c_white,0)
	draw_rectangle_color(x-size+8,y-size+8,x+size-8,y+size-8,c_black,c_black,c_black,c_black,0)
	draw_set_color(c_white)
	draw_text(x,y,"C")
}

x += spacing;

if(!v_pressed){
	draw_rectangle_color(x-size,y-size,x+size,y+size,c_white,c_white,c_white,c_white,0)
	draw_rectangle_color(x-size+8,y-size+8,x+size-8,y+size-8,c_black,c_black,c_black,c_black,0)
	draw_set_color(c_white)
	draw_text(x,y,"V")
}

x += spacing*3;

if(!space_pressed){
	draw_rectangle_color(x-size*3,y-size,x+size*3,y+size,c_white,c_white,c_white,c_white,0)
	draw_rectangle_color(x-size*3+8,y-size+8,x+size*3-8,y+size-8,c_black,c_black,c_black,c_black,0)
	draw_set_color(c_white)
	draw_text(x,y,"SPACE")
}
