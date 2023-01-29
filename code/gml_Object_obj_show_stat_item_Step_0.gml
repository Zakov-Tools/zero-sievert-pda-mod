depth = -10500
show_item_stat_max = ceil((global.hud_item_overlay * 60))
show_item_stat_max = clamp(show_item_stat_max, 1, 60)
if (room != r_menu)
{
    if instance_exists(obj_player)
    {
        if instance_exists(obj_player)
        {
            x = obj_player.x
            y = obj_player.y
        }
        if (obj_player.state == gml_Script_scr_player_state_inventory || obj_player.state == gml_Script_scr_player_state_craft || obj_player.state == gml_Script_scr_player_show_quest || obj_player.state == gml_Script_scr_player_state_mod || obj_player.state == gml_Script_scr_player_state_item_spawn)
        {
            if (mouse_x == prev_mouse_x && mouse_y == prev_mouse_y)
            {
                if (obj_mouse.dragging == 0)
                {
                    if instance_position(mouse_x, mouse_y, obj_item)
                    {
                        instance_id_temp = instance_position(mouse_x, mouse_y, obj_item)
                        if (instance_id_temp.visto == 1)
                        {
                            if (instance_id_temp == instance_id_prev)
                            {
                                show_item_stat_step++
                                if (show_item_stat_step >= show_item_stat_max)
                                {
                                    show_item_stat = 1
                                    show_item_instance_id = instance_id_temp
                                }
                            }
                            else
                            {
                                show_item_stat = 0
                                show_item_stat_step = 0
                                show_item_instance_id = undefined
                            }
                            instance_id_prev = instance_id_temp
                        }
                    }
                    else
                    {
                        show_item_stat = 0
                        show_item_stat_step = 0
                        show_item_instance_id = undefined
                    }
                }
            }
            prev_mouse_x = mouse_x
            prev_mouse_y = mouse_y
        }
        else
        {
            show_item_stat = 0
            show_item_stat_step = 0
            show_item_instance_id = undefined
        }
    }
}
if (room == r_menu)
{
    show_item_stat = 0
    if (mouse_x == prev_mouse_x && mouse_y == prev_mouse_y)
    {
        if instance_position(mouse_x, mouse_y, obj_item)
        {
            instance_id_temp = instance_position(mouse_x, mouse_y, obj_item)
            if (instance_id_temp == instance_id_prev)
            {
                show_item_stat = 1
                show_item_instance_id = instance_id_temp
            }
            else
                show_item_stat = 0
            instance_id_prev = instance_id_temp
        }
    }
    prev_mouse_x = mouse_x
    prev_mouse_y = mouse_y
}
