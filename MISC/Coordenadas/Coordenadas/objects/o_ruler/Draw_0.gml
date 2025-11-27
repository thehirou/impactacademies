var offset=0

draw_set_alpha(alpha)

//X
draw_set_colour(c_darkgray)
for (var i = 0; i < room_width; i+=2)
{
	var small_height=5
	draw_set_alpha(alpha)
	if i mod 100 == 0
	{
		var small_height=room_height	
		draw_set_alpha(alpha*0.2)
	}
	if i>10 draw_line(i+offset,0,i+offset,small_height)
}

draw_set_colour(c_red)
for (var i = 0; i < room_width; i+=10)
{
    var height=10
	if i mod 100 == 0
	{
		var height=20	
	}
	
	draw_line(i+offset,0,i+offset,height)
}

draw_line(pointer_x,0,pointer_x,pointer_y)

//Y
draw_set_colour(c_darkgray)
for (var i = 0; i < room_height; i+=2)
{
	var small_height=5
	draw_set_alpha(alpha)
	if i mod 100 == 0
	{
		var small_height=room_width	
		draw_set_alpha(alpha*0.2)
	}
	if i>10 draw_line(0,i+offset,small_height,i+offset)
}


draw_set_colour(c_green)
for (var i = 0; i < room_height; i+=10)
{
    var height=10
	if i mod 100 == 0
	{
		var height=20	
	}
	
	draw_line(0,i+offset,height,i+offset)
}

draw_line(0,pointer_y,pointer_x,pointer_y)

draw_set_colour(c_white)
draw_point(pointer_x,pointer_y)