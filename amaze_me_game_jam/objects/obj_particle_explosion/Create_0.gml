/// @description Insert description here
// You can write your code in this editor
part_shrap = part_type_create();
sys_shrap = part_system_create();

alpha = 0.5

part_type_alpha2(part_shrap,alpha,0);
part_type_shape(part_shrap,pt_shape_pixel);
part_type_size(part_shrap,3,10,0,0.1);
//part_type_scale(part_shrap,3,3);
part_type_life(part_shrap,30,150);
part_type_direction(part_shrap, 0, 360, 0, 5);
part_type_speed(part_shrap,0.5,10,-0.1,0.1);

alarm[1] = 2