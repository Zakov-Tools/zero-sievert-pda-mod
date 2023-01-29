function scr_npc_state_arms(argument0) //gml_Script_scr_npc_state_arms
{
    var arms = argument0
    var patrol = 0
    draw_weapon = 0
    if scr_chance(0.2)
    {
        if (target_for_image_scale > x)
            target_for_image_scale = (x - 2)
        else
            target_for_image_scale = (x + 2)
    }
    var my_id_ = id
    if instance_exists(arms)
    {
        with (arms)
        {
            if (linked_id == my_id_)
            {
                if (image_index > (sprite_get_number(sprite_index) - 2))
                {
                    switch arms
                    {
                        case 861:
                            if scr_chance(5)
                                patrol = 1
                            break
                        case 862:
                            if (room == r_hub)
                            {
                                if (distance_to_object(obj_bancone_hub) < 16)
                                {
                                    if scr_chance(0.7)
                                    {
                                        patrol = 1
                                        my_id_.path_timer = 300
                                        my_id_.state = (28 << 0)
                                        my_id_.draw_weapon = 1
                                    }
                                }
                                else if scr_chance(2)
                                    patrol = 1
                            }
                            else if scr_chance(2)
                                patrol = 1
                            break
                        case 863:
                            if (room == r_hub)
                            {
                                if (distance_to_object(obj_bancone_hub) < 16)
                                {
                                    if scr_chance(0.7)
                                    {
                                        patrol = 1
                                        my_id_.path_timer = 300
                                        my_id_.state = (28 << 0)
                                        my_id_.draw_weapon = 1
                                    }
                                }
                                else if scr_chance(2)
                                    patrol = 1
                            }
                            else if scr_chance(2)
                                patrol = 1
                            break
                        case 864:
                            if scr_chance(0.1)
                                patrol = 1
                            break
                        case 865:
                            break
                    }

                }
            }
        }
    }
    if (patrol == 1)
    {
        my_id_.draw_weapon = 1
        if (room == r_hub)
            my_id_.state = (4 << 0)
        else
            my_id_.state = (9 << 0)
    }
    target = scr_find_target_for_human()
    if (target != -4)
    {
        switch target_relation
        {
            case (2 << 0):
                hspd = 0
                vspd = 0
                state = (13 << 0)
                draw_weapon = 1
                break
            case (0 << 0):
                if (arms != 864 && arms != 865)
                {
                    hspd = 0
                    vspd = 0
                    state = (10 << 0)
                    draw_weapon = 1
                }
                break
            case (1 << 0):
                break
        }

    }
    return;
}

