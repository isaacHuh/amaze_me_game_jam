// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_bezier_curve(x1, y1, x2, y2, x3, y3, color){
	/// @desc Draws a bezier curve with 3 control points.
	/// @param x1 {Real} The X coordinate of the first control point.
	/// @param y1 {Real} The Y coordinate of the first control point.
	/// @param x2 {Real} The X coordinate of the second control point.
	/// @param y2 {Real} The Y coordinate of the second control point.
	/// @param x3 {Real} The X coordinate of the third control point.
	/// @param y3 {Real} The Y coordinate of the third control point.
	/// @author Kat @katsaii
	prev_x = x1;
	prev_y = y1;
	draw_set_color(color);
	var step = 0.1;
	//draw_primitive_begin(pr_linestrip);
	//draw_vertex(x1, y1);
	for (var i = 0; i <= 1; i += step) {
	    // get intermediate coordinates
	    var ix = lerp(x1, x2, i);
	    var iy = lerp(y1, y2, i);
	    var jx = lerp(x2, x3, i);
	    var jy = lerp(y2, y3, i);
	    // get final curve point
	    var bx = lerp(ix, jx, i);
	    var by = lerp(iy, jy, i);
	    draw_line_width(prev_x,prev_y,bx, by,5);
		prev_x = bx;
		prev_y = by;
	}
	draw_line_width(prev_x,prev_y, x3, y3,5);
	//draw_primitive_end();
}