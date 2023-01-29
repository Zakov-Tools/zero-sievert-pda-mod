var sw = sprite_get_width(s_hud_minimap_menu)
var sh = sprite_get_height(s_hud_minimap_menu)
var camx = camera_get_view_x(view_camera[0])
var camy = camera_get_view_y(view_camera[0])
var start_x = 57
var start_y = 37
var space_w = 331
var space_h = 179
var surf_x = (start_x + global.minimap_off_x)
var surf_y = (start_y + global.minimap_off_y)
var surf_space_w = (space_w - global.minimap_off_x)
var surf_space_h = (space_h - global.minimap_off_y)
var surf_start_x = 0
var surf_start_y = 0
if (surf_x < start_x)
{
    surf_start_x = abs(global.minimap_off_x)
    surf_x = start_x
    surf_space_w = space_w
}
if (surf_y < start_y)
{
    surf_start_y = abs(global.minimap_off_y)
    surf_y = start_y
    surf_space_h = space_h
}
var mx = (((marker_x - camx) - surf_x) + surf_start_x)
var my = (((marker_y - camy) - surf_y) + surf_start_y)
if scr_mouse_inside(startx, starty, sw, sh)
    position_now = (1 << 0)
else if scr_mouse_inside(startx, (starty + sh), sw, sh)
    position_now = (2 << 0)
else
    position_now = (0 << 0)
if mouse_check_button_pressed(mb_left)
{
    var des = 0
    if (position_now == (0 << 0))
        des = 1
    if (position_now == (1 << 0))
    {
        ds_list_add(global.list_minimap_marker_x, mx)
        ds_list_add(global.list_minimap_marker_y, my)
        des = 1
    }
    if (position_now == (2 << 0))
    {
        var size_ = ds_list_size(global.list_minimap_marker_x)
        if (size_ > 0)
        {
            repeat size_
            {
                var found = 0
                var i = 0
                if (i < size_)
                {
                    if (found == 0)
                    {
                        var xx = ds_list_find_value(global.list_minimap_marker_x, i)
                        var yy = ds_list_find_value(global.list_minimap_marker_y, i)
                        if (abs((mx - xx)) < 6 && abs((my - yy)) < 6)
                        {
                            ds_list_delete(global.list_minimap_marker_x, i)
                            ds_list_delete(global.list_minimap_marker_y, i)
                            found = 1
                            size_ = ds_list_size(global.list_minimap_marker_x)
                        }
                    }
                    for (i++; i < size_; i++)
                    {
                        if (found == 0)
                        {
                            var xx = ds_list_find_value(global.list_minimap_marker_x, i)
                            var yy = ds_list_find_value(global.list_minimap_marker_y, i)
                            if (abs((mx - xx)) < 6 && abs((my - yy)) < 6)
                            {
                                ds_list_delete(global.list_minimap_marker_x, i)
                                ds_list_delete(global.list_minimap_marker_y, i)
                                found = 1
                                size_ = ds_list_size(global.list_minimap_marker_x)
                            }
                        }
                    }
                }
            }
        }
        des = 1
    }
    if (des == 1)
        instance_destroy()
}
