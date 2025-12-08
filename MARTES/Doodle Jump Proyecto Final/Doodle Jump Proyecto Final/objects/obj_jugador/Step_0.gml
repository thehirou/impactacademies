hsp = 0

if (keyboard_check(vk_left))  hsp = -move_speed
if (keyboard_check(vk_right)) hsp =  move_speed

x += hsp

vspeed += gravity

y += vspeed





if vspeed > 0
{
    if place_meeting(x, y, obj_plataforma)
    {
        while place_meeting(x, y, obj_plataforma) y -= 1
        vspeed = jump_power
    }
}

