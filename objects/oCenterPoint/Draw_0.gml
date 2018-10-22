/// @description

var centre_x = room_width/2;
var centre_y = room_height/2;


draw_line_width(centre_x, 0, centre_x, room_height,line_width);
	
if( global.custom_debug_mode){
	draw_circle(x, y, distance_rating[r.bad], true);
	draw_circle(x, y, distance_rating[r.good], true);
	draw_circle(x, y, distance_rating[r.great], true);
	draw_circle(x, y, distance_rating[r.perfect], true); // too small to see
}

DrawPolygon(x, y, points, radius*scale, rotation, thickness*scale, global.colorYellow); 

//draw_circle_color(x, y, radius, global.colorYellow, global.colorYellow, false);