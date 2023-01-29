function scr_npc_arms_animation(argument0) //gml_Script_scr_npc_arms_animation
{
    var arms = argument0
    var _patrol = 0
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
                            if scr_chance(20)
                                _patrol = 1
                            break
                        case 862:
                            if scr_chance(60)
                                _patrol = 1
                            break
                        case 863:
                            if scr_chance(75)
                                _patrol = 1
                            break
                        case 864:
                            if scr_chance(0.1)
                                _patrol = 1
                            break
                        case 865:
                            break
                    }

                }
            }
        }
    }
    if (_patrol == 1)
    {
        draw_weapon = 1
        state_finito = 1
    }
    return;
}

