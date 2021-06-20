function scr_within_area(argument0, argument1, argument2, argument3, argument4, argument5) {
	//scr_within_area(x, y, x1, y1, x2, y2);

	within = false;

	X = argument0;
	Y = argument1;

	//top left
	bound1[0] = argument2;
	bound1[1] = argument3;

	//bottom right
	bound2[0] = argument4;
	bound2[1] = argument5;

	if(X >= bound1[0] && X <= bound2[0]){
		if(Y >= bound1[1] && Y <= bound2[1]){
			within = true;
		}
	}

	return within;



}
