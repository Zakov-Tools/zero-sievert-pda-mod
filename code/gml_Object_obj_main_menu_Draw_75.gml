display_set_gui_size(480, 270)
var camx = camera_get_view_x(view_camera[0])
var camy = camera_get_view_y(view_camera[0])
draw_sprite(s_mouse, 4, (mouse_x - camx), (mouse_y - camy))
