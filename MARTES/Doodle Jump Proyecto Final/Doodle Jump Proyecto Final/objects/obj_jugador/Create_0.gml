//Variables de salto (Movimiento vertical)
gravity = 0.3
vspeed = 0
jump_power = -12

//Variables de movimiento horizontal
hsp = 0  
move_speed = 10

//Velocidad de las plataformas
global.plat_speed=0

//Puntos de altura
altura_actual = 0     
altura_max = 0

//Game-Over
gameover=false

//Crear plataformas
var spacing = 150;
for (var i = 0; i < 5000; i++)
{
    var ran = irandom_range(0, 480);
    instance_create_depth(ran, 450 - i * spacing, depth-100, obj_plataforma)
}








//Detalles (Opcionales)
stretch_x = 0.8
stretch_y = 1.5

squash_x  = 1.2
squash_y  = 0.8

normal_x = 1
normal_y = 1

lerp_amt = 0.2


//Ajustes de ventana (Opcionales)
window_set_size(480*3,640*3)
window_center()

