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
}