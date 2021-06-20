/// @description Insert description here
// You can write your code in this editor
color = obj_hand.blue;
draw_circular_bar(x ,y ,1, 1, color, 32*image_xscale, image_alpha, 15)

/*
piesurface = surface_create(32*image_xscale*2,32*image_xscale*2)
draw_set_alpha(image_alpha/2)
draw_set_color(color)

surface_set_target(piesurface)
draw_clear_alpha(c_blue,0.7)
draw_clear_alpha(c_black,0)
draw_circle(x,y,32*image_xscale,0)

gpu_set_blendmode(bm_subtract) 
draw_set_alpha(1)
draw_set_color(c_black)
draw_circle(x,y,32*image_xscale - 8,0)
 gpu_set_blendmode(bm_normal)

draw_set_color(color)
draw_set_alpha(image_alpha/2)
draw_line_width(x,y-32*image_xscale,x,y+32*image_xscale,8)

draw_set_color(c_white);
draw_set_alpha(1)

surface_reset_target()
			
     
draw_surface(piesurface,x-32*image_xscale, y-32*image_xscale)
        
surface_free(piesurface)
*/