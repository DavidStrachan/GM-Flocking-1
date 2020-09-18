

if (keyboard_check_pressed(vk_add)) {
	with (obj_flock) {
		direction_change += 0.1
	}
}
if (keyboard_check_pressed(vk_subtract)) {
	with (obj_flock) {
		direction_change -= 0.1
	}
}
if (keyboard_check_pressed(vk_numpad9)) {
	with (obj_flock) {
		direction_change_group_avoid += 0.5
	}
}
if (keyboard_check_pressed(vk_numpad3)) {
	with (obj_flock) {
		direction_change_group_avoid -= 0.5
	}
}
if (keyboard_check_pressed(vk_numpad7)) {
	with (obj_flock) {
		direction_change_group_direction += 0.5
	}
}
if (keyboard_check_pressed(vk_numpad1)) {
	with (obj_flock) {
		direction_change_group_direction -= 0.5
	}
}
if (keyboard_check_pressed(vk_numpad8)) {
	with (obj_flock) {
		direction_change_group_centre += 0.5
	}
}
if (keyboard_check_pressed(vk_numpad2)) {
	with (obj_flock) {
		direction_change_group_centre -= 0.5
	}
}
if (keyboard_check_pressed(vk_pageup)) {
	with (obj_flock) {
		friends_dist += 5
	}
}
if (keyboard_check_pressed(vk_pagedown)) {
	with (obj_flock) {
		friends_dist -= 5
	}
}
if (keyboard_check_pressed(vk_home)) {
	with (obj_flock) {
		enemy_dist += 5
	}
}
if (keyboard_check_pressed(vk_end)) {
	with (obj_flock) {
		enemy_dist -= 5
	}
}
if (keyboard_check_pressed(ord("Q"))) {
	with (obj_flock) {
		speed_min += 0.2
		speed = lerp(speed_min,speed_max,speed_var)
	}
}
if (keyboard_check_pressed(ord("A"))) {
	with (obj_flock) {
		speed_min -= 0.2
		speed = lerp(speed_min,speed_max,speed_var)
	}
}
if (keyboard_check_pressed(ord("W"))) {
	with (obj_flock) {
		speed_max += 0.2
		speed = lerp(speed_min,speed_max,speed_var)
	}
}
if (keyboard_check_pressed(ord("S"))) {
	with (obj_flock) {
		speed_max -= 0.2
		speed = lerp(speed_min,speed_max,speed_var)
	}
}