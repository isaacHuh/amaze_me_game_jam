/// @description Insert description here
// You can write your code in this editor
x1 = x-150;
y1 = y+100 - 40;
x2 = x+150; 
y2 = y+100 + 40;


if(scr_within_area(mouse_x, mouse_y, x1, y1, x2, y2)){
	hightlighted = true;
}else{hightlighted = false;}

if(hightlighted && mouse_check_button_pressed(mb_left)){
	room_goto(rm_main);
}

if(scr_within_area(mouse_x, mouse_y, x1, y1+100, x2, y2+100)){
	hightlighted1 = true;
}else{hightlighted1 = false;}

if(hightlighted1 && mouse_check_button_pressed(mb_left)){
	game_end();
}