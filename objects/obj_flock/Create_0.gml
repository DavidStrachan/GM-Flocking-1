
image_speed = 0

direction = irandom(359)

speed_var = random(1) // where I should sit between min speed and max speed 
speed_min = 1
speed_max = 1

speed = lerp(speed_min,speed_max,speed_var)

direction_change = 0.5
direction_change_group_direction = 1 // Multiplier
direction_change_group_centre = 1 // Multiplier
direction_change_group_avoid = 1 // Multiplier

friends_dist = 50
enemy_dist = friends_dist/2
