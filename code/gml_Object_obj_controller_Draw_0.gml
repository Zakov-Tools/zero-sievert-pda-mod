var arr_x;
if instance_exists(obj_player)
{
    var camx = camera_get_view_x(view_camera[0])
    var camy = camera_get_view_y(view_camera[0])
    if (global.general_debug == 1)
    {
        if keyboard_check_direct(ord("I"))
        {
            draw_set_alpha(0.5)
            mp_grid_draw(global.grid_move)
            draw_set_alpha(1)
        }
    }
    if (obj_player.reloading == 1)
        scr_draw_text_sopra_character(obj_player, "Reloading!")
    if instance_exists(obj_npc_parent)
    {
        with (obj_npc_parent)
        {
            if (reloading == 1)
            {
            }
        }
    }
    if (room == room1)
    {
        if (global.sk_k[(13 << 0)] == 1)
        {
            arr_x[0] = -999
            var i = 0
            var off = 10
            with (obj_npc_parent)
            {
                if (x < camx || x > (camx + 480) || y < camy || y > (camy + 270))
                {
                    arr_x[i] = x
                    arr_y[i] = y
                    if (ds_grid_get(global.grid_faction, faction, obj_player.faction) < global.faction_min)
                        arr_rel[i] = 1
                    if (ds_grid_get(global.grid_faction, faction, obj_player.faction) >= global.faction_min && ds_grid_get(global.grid_faction, faction, obj_player.faction) < global.faction_max)
                        arr_rel[i] = 0
                    if (ds_grid_get(global.grid_faction, faction, obj_player.faction) > global.faction_max)
                        arr_rel[i] = 2
                    i++
                }
            }
            if (arr_x[0] != -999)
            {
                for (i = 0; i < array_length_1d(arr_x); i++)
                {
                    var xx = arr_x[i]
                    var yy = arr_y[i]
                    var dir_ = point_direction(x, y, xx, yy)
                    var x1 = x
                    var y1 = y
                    off = 10
                    repeat (25)
                    {
                        x1 += lengthdir_x(15, dir_)
                        y1 += lengthdir_y(15, dir_)
                        x1 = clamp(x1, (camx + off), ((camx + 480) - off))
                        y1 = clamp(y1, (camy + off), ((camy + 270) - off))
                    }
                    draw_sprite(s_spot_enemies, arr_rel[i], x1, y1)
                }
            }
        }
    }
}
