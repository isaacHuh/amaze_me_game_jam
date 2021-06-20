/// @description Insert description here
// You can write your code in this editor
num = irandom_range(8,20)
repeat(num){
	if(type == 1){
		e = instance_create_depth(x + random_range(-30,30), y + random_range(-30,30),depth, obj_explosion_part);
		e.color = color;
	}else if(type == 2){
		repeat(2){
			e = instance_create_depth(x + random_range(-30,30), y + random_range(-30,30),depth, obj_explosion_part2);
			e.color = color;
		}
	}
}
instance_destroy();