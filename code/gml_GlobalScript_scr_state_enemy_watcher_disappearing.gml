function scr_state_enemy_watcher_disappearing() //gml_Script_scr_state_enemy_watcher_disappearing
{
    if (image_index >= (sprite_get_number(sprite_disappear) - 1))
    {
        var distanza = 96
        var dir = irandom(360)
        var xx = (target.x + lengthdir_x(distanza, dir))
        var yy = (target.y + lengthdir_y(distanza, dir))
        while place_meeting(xx, yy, obj_solid)
        {
            distanza = 96
            dir = irandom(360)
            xx = (target.x + lengthdir_x(distanza, dir))
            yy = (target.y + lengthdir_y(distanza, dir))
        }
        x = xx
        y = yy
        state = gml_Script_scr_state_enemy_watcher_appearing
        if (target != noone)
        {
            if (x > target.x)
                image_xscale = -1
            else
                image_xscale = 1
        }
    }
    return;
}

