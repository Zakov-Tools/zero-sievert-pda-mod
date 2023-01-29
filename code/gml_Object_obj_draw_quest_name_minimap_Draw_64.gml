display_set_gui_size(480, 270)
var off = 3
var width = (string_width(t) + (off * 2))
var camx = camera_get_view_x(view_camera[0])
var camy = camera_get_view_y(view_camera[0])
draw_set_font(font_quest)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
var b_w = ((step * width) / step_max)
var b_h = 12
var start_x = 57
var start_y = 37
var surf_x = (start_x + global.minimap_off_x)
var surf_y = (start_y + global.minimap_off_y)
var surf_start_x = 0
var surf_start_y = 0
if (surf_x < start_x)
{
    surf_start_x = abs(global.minimap_off_x)
    surf_x = start_x
}
if (surf_y < start_y)
{
    surf_start_y = abs(global.minimap_off_y)
    surf_y = start_y
}
var mx = ((((mouse_x - camx) - global.minimap_off_x) + surf_start_x) - 57)
var my = ((((mouse_y - camy) - global.minimap_off_y) + surf_start_y) - 37)
scr_draw_box(s_box_testo_pop_up, ((x - (b_w / 2)) - camx), (y - camy), b_w, b_h, 1)
if (step >= (step_max - 3))
    draw_text((x - camx), ((y - camy) + (b_h / 2)), t)
