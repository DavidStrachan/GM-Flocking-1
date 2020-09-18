/// @description Insert description here
// You can write your code in this editor


draw_self()


if (point_distance(x,y,mouse_x,mouse_y) < 40) {
	draw_set_colour(make_colour_rgb(211,159,138))
	draw_circle(x,y,friends_dist,true)

}

//if (speed_var > 0.8) {
//	draw_sprite_ext(spr_flock_outline,0,x,y,1,1,image_angle,c_white,1)
//}


//draw_set_colour(make_colour_hsv(speed_var*225,255,255))
//draw_circle(x,y,5,false)