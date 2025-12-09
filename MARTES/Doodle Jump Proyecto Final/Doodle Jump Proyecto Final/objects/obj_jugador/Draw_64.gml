var altura=string(altura_max)+" METROS"
var mensaje_muerto="HAS MUERTO!"

draw_set_font(fnt_juego)
draw_set_valign(fa_center)
draw_set_halign(fa_middle)

draw_set_color(c_black)
draw_text(room_width/2,60,altura)

if gameover=true
{
	draw_text(room_width/2,room_height/2,mensaje_muerto)
	draw_rectangle_colour(room_width,(room_height/2)+100,0,(room_height/2)+200,c_yellow,c_white,c_aqua,c_white,false)
	draw_text(room_width/2,(room_height/2)+150,"RESTART")
	if mouse_check_button_pressed(mb_left) game_restart()
}