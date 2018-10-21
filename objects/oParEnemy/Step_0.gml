/// @description

//var y_speed_this_frame = 0.5*(distance_to_input_buffer/global.beatsPerSecond) * global.seconds_passed;

//y += y_speed_this_frame;


if (scale != 1) {
	scale = Approach(scale, 1, 0.5);
}

if (rotation != 0) {
	rotation = lerp(rotation, 0, 0.1);
}

if (move == true) {
	move = false;
	target_y = y + 64;
}

y = lerp(y, target_y, 0.1);