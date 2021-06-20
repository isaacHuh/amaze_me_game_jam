/// @description Insert description here
// You can write your code in this editor
num = irandom_range(4,10)
repeat(num){
	part_particles_create(sys_shrap, x + random_range(-30,30), y + random_range(-30,30),part_shrap, 1);
}

alarm[0] = 150;