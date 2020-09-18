/// @description Insert description here
// You can write your code in this editor

draw_set_colour(c_gray)

draw_rectangle(stay_in_box_left,stay_in_box_top,stay_in_box_right,stay_in_box_bottom,true)

draw_text(20,20,"(pg_down) view_distance: "+string(obj_flock.friends_dist))
draw_text(20,35,"(homne/end) avoid_distance: "+string(obj_flock.enemy_dist))
draw_text(20,50,"(+/-) direction_change: "+string(obj_flock.direction_change))
draw_text(20,65,"(7/1) group_direction: " + string(obj_flock.direction_change_group_direction))
draw_text(20,80,"(8/2) group_centre: " + string(obj_flock.direction_change_group_centre))
draw_text(20,95,"(9/3) group_avoid: " + string(obj_flock.direction_change_group_avoid))
draw_text(20,110,"(q/a) speed_min: " + string(obj_flock.speed_min))
draw_text(20,125,"(w/s) speed_max: " + string(obj_flock.speed_max))


