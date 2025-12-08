hsp = 0

//TECLAS
if keyboard_check(vk_escape) and gameover=true  game_restart()
if keyboard_check(vk_left)  hsp = -move_speed
if keyboard_check(vk_right) hsp =  move_speed

//MOVIMIENTO
x += hsp
vspeed += gravity
y += vspeed

//LOOP
if x<0 x=room_width
if x>room_width x=0

//CAMARA
var mitad = (room_height/2) - 100

if vspeed < 0
{
    if y < mitad
    {
        y = mitad
        global.plat_speed = -vspeed
    }
    else global.plat_speed = 0
}
else
{
    global.plat_speed = 0
}

//SALTO AUTOMATICO
if vspeed > 0
{
    if place_meeting(x, y, obj_plataforma)
    {	
        while place_meeting(x, y, obj_plataforma) y -= 1
        vspeed = jump_power
		audio_play_sound(snd_salto,1,false)
    }
}

//PUNTOS
altura_actual += round(global.plat_speed)*0.01

if altura_actual > altura_max
{
    altura_max = round(altura_actual)
}

//MISIL
if mouse_check_button_pressed(mb_left)
{
	instance_create_depth(x,y,depth-10,obj_misil)	
}

//SKINS
if keyboard_check_pressed(vk_space)
{
	image_index++
	if image_index=image_number
	{
		image_index=0		
	}
}

//DETALLES SQUASH AND STRETCH
//(MUEVE ESTO A UN PASTEBIN, ES UN COÑAZO DE COPIAR Y PEGAR PARA LO POCO QUE HACE)
if vspeed < -1			
{
    image_xscale = lerp(image_xscale, stretch_x, lerp_amt)
    image_yscale = lerp(image_yscale, stretch_y, lerp_amt)
}
else if vspeed > 1		
{
    image_xscale = lerp(image_xscale, squash_x, lerp_amt)
    image_yscale = lerp(image_yscale, squash_y, lerp_amt)
}
else					
{
    image_xscale = lerp(image_xscale, normal_x, lerp_amt)
    image_yscale = lerp(image_yscale, normal_y, lerp_amt)
}
