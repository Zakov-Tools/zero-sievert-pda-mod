function scr_player_state_skill_tree() //gml_Script_scr_player_state_skill_tree
{
    var camx = camera_get_view_x(view_camera[0])
    var camy = camera_get_view_y(view_camera[0])
    var oo = obj_controller
    if mouse_check_button_pressed(mb_left)
    {
        if scr_mouse_inside((camx + oo.pda_icon_back_x), (camy + oo.pda_icon_back_y), oo.pda_icon_back_w, oo.pda_icon_back_h)
        {
            state = gml_Script_scr_player_state_pda
            audio_play_sound(snd_ui_pda_back, 10, false)
            oo.pda_loading_now = oo.pda_loading_max
            oo.pda_map_mouse_press = 0
        }
    }
    if global.kb_pressed[(5 << 0)]
    {
        state = gml_Script_scr_player_state_move
        audio_play_sound(snd_ui_pda_back, 10, false)
    }
    var mouse_pressed = mouse_check_button_pressed(mb_left)
    global.skill_hover = -1
    var n_skill = array_length_1d(global.skill_name)
    for (var i = 0; i < n_skill; i++)
    {
        var id_ = global.skill_id[i]
        if scr_mouse_inside((camx + global.skill_x[id_]), (camy + global.skill_y[id_]), 16, 16)
        {
            global.skill_hover = id_
            if (mouse_pressed == 1)
                global.skill_selected = id_
        }
    }
    if (global.skill_hover_before == global.skill_hover)
    {
        if (global.skill_box_now < global.skill_box_max)
            global.skill_box_now++
    }
    else
        global.skill_box_now = 0
    global.skill_hover_before = global.skill_hover
    if (global.skill_points > 0)
    {
        if mouse_check_button(mb_left)
        {
            if (global.skill_hover != -1)
            {
                id_ = global.skill_id[global.skill_hover]
                if (global.skill_unlocked[id_] == 0)
                {
                    if (global.skill_unlocking_now < global.skill_unlocking_max)
                        global.skill_unlocking_now++
                    else
                    {
                        global.skill_unlocked[id_] = 1
                        global.skill_points -= 1
                        global.skill_unlocking_now = 0
                        scr_set_skill_variables()
                        scr_save_exp()
                    }
                }
            }
            else
                global.skill_unlocking_now = 0
        }
        else
            global.skill_unlocking_now = 0
    }
    return;
}

