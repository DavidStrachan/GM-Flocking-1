/// @description Insert description here
// You can write your code in this editor


image_index = 0 // no one near me 

var friends = []
var friend_count = 0
with (obj_flock) {
	if (id != other.id) {
		if (point_distance(x,y,other.x,other.y) < friends_dist) {
			friends[friend_count] = id
			friend_count ++
		}
	}
}

if (friend_count > 0) {
	image_index = 1
}


// HAVE DIRECTION OF FRIENDS 
if (friend_count > 0) {
	var running_angle = 0
	for (var i = 0; i < friend_count; ++i) {
	    running_angle += friends[i].direction 
	}
	running_angle /= friend_count
	
	if (angle_difference(direction,running_angle) > 3) {
		direction -= direction_change*direction_change_group_direction
	} else if (angle_difference(direction,running_angle) < -3) {
		direction += direction_change*direction_change_group_direction
	}
}

// CENTRE AROUND FRIENDS 
if (friend_count > 0) {
	var running_x = 0
	var running_y = 0
	for (var i = 0; i < friend_count; ++i) {
	    running_x += friends[i].x
	    running_y += friends[i].y 
	}
	running_x /= friend_count
	running_y /= friend_count
	
	var goto = point_direction(x,y,running_x,running_y)
	if (angle_difference(direction,goto) > 3) {
		direction -= direction_change*direction_change_group_centre
	} else if (angle_difference(direction,goto) < -3) {
		direction += direction_change*direction_change_group_centre
	}
}

// AWAY FROM FRIENDS
if (friend_count > 0) {
	var running_x = 0
	var running_y = 0
	
	var enemy_count = 0
	
	for (var i = 0; i < friend_count; ++i) {
		if (point_distance(x,y,friends[i].x,friends[i].y) < enemy_dist ) {
		    running_x += friends[i].x
		    running_y += friends[i].y 
			enemy_count ++
		}
	}
	
	if (enemy_count > 0) {
		running_x /= enemy_count
		running_y /= enemy_count
	
		var goto = point_direction(x,y,running_x,running_y)-180
		if (angle_difference(direction,goto) > 3) {
			direction -= direction_change*direction_change_group_avoid
		} else if (angle_difference(direction,goto) < -3) {
			direction += direction_change*direction_change_group_avoid
		}
	}
}

// FIND A FLOCK
/*
if (friend_count == 0) {
	x -= 10000
	var almost_friend = instance_nearest(x,y,obj_flock)
	x += 10000

	var goto = point_direction(x,y,almost_friend.x,almost_friend.y)
	
	if (angle_difference(direction,goto) > 3) {
		direction += direction_change
	} else if (angle_difference(direction,goto) < -3) {
		direction -= direction_change
	}
}
*/

// STAY ON THE SCREEN
if (! point_in_rectangle(x,y,obj_spawner.stay_in_box_left,obj_spawner.stay_in_box_top,obj_spawner.stay_in_box_right,obj_spawner.stay_in_box_bottom)) {
	var goto = point_direction(x,y,room_width/2,room_height/2)
	if (angle_difference(direction,goto) > 3) {
		direction -= direction_change*2
	} else if (angle_difference(direction,goto) < -3) {
		direction += direction_change*2
	}
}



image_angle = direction-90