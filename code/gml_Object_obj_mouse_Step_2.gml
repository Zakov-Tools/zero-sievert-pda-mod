var camx = camera_get_view_x(view_camera[0])
var camy = camera_get_view_y(view_camera[0])
if window_get_fullscreen()
{
    var _off = 15
    var _x = display_mouse_get_x()
    var _y = display_mouse_get_y()
    var _w = window_get_width()
    var _h = window_get_height()
    if (_x <= (0 + _off) || _x >= (_w - _off) || _y <= (0 + _off) || _y >= (_h - _off))
        window_mouse_set(clamp(window_mouse_get_x(), (0 + _off), (window_get_width() - _off)), clamp(window_mouse_get_y(), (0 + _off), (window_get_height() - _off)))
}
