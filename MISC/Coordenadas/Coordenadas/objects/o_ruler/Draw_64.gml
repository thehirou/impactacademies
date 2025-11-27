var margin=20
var padding=60
var spacing=20

draw_set_alpha(alpha)

draw_set_font(font)

draw_set_halign(fa_left)
draw_set_valign(fa_bottom)

draw_set_colour(c_red)
draw_text(window_get_width()-margin-padding,window_get_height()-margin-spacing,"X: "+string(pointer_x))

draw_set_colour(c_green)
draw_text(window_get_width()-margin-padding,window_get_height()-margin,"Y: "+string(pointer_y))

draw_set_halign(fa_center)
draw_set_valign(fa_middle)

draw_set_colour(c_white)
draw_text(window_get_width()/2,window_get_height()-margin,string(room_width)+"x"+string(room_height))