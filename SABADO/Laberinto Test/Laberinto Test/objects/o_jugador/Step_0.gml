var move_x=keyboard_check(vk_left) - keyboard_check(vk_right)
var move_y=keyboard_check(vk_up) - keyboard_check(vk_down)

move_and_collide(move_x*velocidad,move_y*velocidad,o_pared)

if move_x=0 and move_y=0
{
	image_speed=0
	image_index=0
}
else
{
	image_speed=1
}




























/*
var move_x = keyboard_check(vk_right)-keyboard_check(vk_left)
var move_y = keyboard_check(vk_down)-keyboard_check(vk_up)

move_and_collide(move_x,move_y,o_pared)