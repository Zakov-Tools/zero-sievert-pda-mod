if (uscito == 0)
{
    if instance_exists(obj_player)
    {
        if (point_distance((x + 8), (y + 8), obj_player.x, obj_player.y) < minimum_dis_exit)
        {
            if (obj_player.state != gml_Script_scr_player_state_inventory)
            {
                timer_exit++
                if (timer_exit >= timer_exit_max)
                {
                    if (uscito == 0)
                    {
                        uscito = 1
                        if instance_exists(obj_light_torch)
                        {
                            with (obj_light_torch)
                                instance_destroy()
                        }
                        obj_player.state = gml_Script_scr_player_state_start
                        var eend = instance_create_depth(x, y, -9999, obj_exit_screen)
                        eend.survived = 1
                        eend.factor_survived = 1
                        scr_save_quest()
                        scr_save_unique_quest()
                        if instance_exists(obj_item)
                        {
                            with (obj_item)
                                instance_destroy()
                        }
                        obj_controller.alarm[4] = 99999
                        var pp = (3 << 0)
                        var first_time_ = global.az_done[pp]
                        if (first_time_ == 0)
                            global.az_done[pp] = 1
                        if instance_exists(obj_vertex_grass)
                        {
                            with (obj_vertex_grass)
                            {
                                start_drawing = 0
                                if ds_exists(grid_grass, 5)
                                    ds_grid_destroy(grid_grass)
                                if (grass_numero > 0)
                                {
                                    for (var i = 0; i < array_length_1d(vbuff); i++)
                                    {
                                        if (global.grass_draw[i] == 1)
                                            vertex_delete_buffer(vbuff[i])
                                    }
                                }
                            }
                        }
                    }
                }
            }
            else
                timer_exit = 0
        }
        else
            timer_exit = 0
    }
}
depth = -9999
if (uscito == 1)
    instance_destroy()
