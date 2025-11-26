temporizador += 1

if temporizador > 60
{
	var posicion_nueva_comida = irandom_range(0, 480)
	instance_create_depth(posicion_nueva_comida, 0, depth, obj_comida_parent)

	temporizador = 0
}
























/* VERSION COMPLETA
temporizador = temporizador+1

if temporizador > 60
{
	posicion_crear_objeto=irandom_range(0,480)
	
	var nuevo_objeto = choose(obj_comida_parent,obj_obstaculo_parent)
	var objeto_creado = instance_create_depth(posicion_crear_objeto,0,depth,nuevo_objeto)
	
	if nuevo_objeto=obj_comida_parent
	{
		objeto_creado.sprite_index=choose(spr_comida_1,spr_comida_2,spr_comida_3)
	}
	
	if nuevo_objeto=obj_obstaculo_parent
	{
		objeto_creado.sprite_index=choose(spr_obstaculo_1,spr_obstaculo_2,spr_obstaculo_3)
	}
	
	temporizador = 0	
}

