/*
This object is just put in the first room so you dont forget to do that. 
You can put code here and it will be run (or delete this, I'm not your dad)
*/

repeat(40) {
	instance_create_depth(irandom(room_width),irandom(room_height),0,obj_flock)	
}

stay_in_box_top = 200;
stay_in_box_right = room_width-300
stay_in_box_bottom = room_height-200
stay_in_box_left = 300