dkey = keyboard_check(global.kb_now[(2 << 0)])
wkey = keyboard_check(global.kb_now[(0 << 0)])
skey = keyboard_check(global.kb_now[(1 << 0)])
akey = keyboard_check(global.kb_now[(3 << 0)])
cam_w = camera_get_view_width(view_camera[0])
cam_h = camera_get_view_height(view_camera[0])
if mouse_wheel_up()
{
    var new_w = (cam_w - (ris_w * 10))
    var new_h = (cam_h - (ris_h * 10))
    camera_set_view_size(view_camera[0], new_w, new_h)
}
if mouse_wheel_down()
{
    new_w = (cam_w + (ris_w * 10))
    new_h = (cam_h + (ris_h * 10))
    camera_set_view_size(view_camera[0], new_w, new_h)
}
var spd = (cam_w / 250)
if akey
    x -= spd
if dkey
    x += spd
if wkey
    y -= spd
if skey
    y += spd
camera_set_view_pos(view_camera[0], (x - (cam_w / 2)), (y - (cam_h / 2)))
