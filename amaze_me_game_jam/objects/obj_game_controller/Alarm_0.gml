/// @description Insert description here
// You can write your code in this editor
enemy = instance_create_depth(random(room_width),-20,0,obj_enemy);

switch(spawn_case){
	case 0:
		enemy.color = choose(obj_hand.red,obj_hand.green)
		break;
	case 1:
		enemy.color = choose(obj_hand.blue,obj_hand.pink)
		break;
	case 2:
		enemy.color = choose(obj_hand.green,obj_hand.blue)
		break;
	case 3:
		enemy.color = choose(obj_hand.red,obj_hand.pink)
		break;
	default:
		enemy.color = choose(obj_hand.red,obj_hand.green,obj_hand.blue,obj_hand.pink)
		break;
}
alarm[0] = 30;
