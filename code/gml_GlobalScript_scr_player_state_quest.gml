function scr_player_state_quest() //gml_Script_scr_player_state_quest
{
    if keyboard_check_pressed(ord("K"))
        state = gml_Script_scr_player_state_move
    if keyboard_check_pressed(vk_escape)
    {
        state = gml_Script_scr_player_state_move
        obj_controller.can_pause = 0
        audio_play_sound(snd_ui_pda_back, 10, false)
    }
    var camx = camera_get_view_x(view_camera[0])
    var camy = camera_get_view_y(view_camera[0])
    if global.kb_pressed[(5 << 0)]
    {
        state = gml_Script_scr_player_state_move
        audio_play_sound(snd_ui_pda_back, 10, false)
    }
    var oo = obj_controller
    if mouse_check_button_pressed(mb_left)
    {
        if scr_mouse_inside((camx + oo.pda_icon_back_x), (camy + oo.pda_icon_back_y), oo.pda_icon_back_w, oo.pda_icon_back_h)
        {
            state = gml_Script_scr_player_state_pda
            audio_play_sound(snd_ui_pda_back, 10, false)
            oo.pda_loading_now = oo.pda_loading_max
            oo.pda_quest_showed = -1
            scr_barra_testo_reset_offset()
        }
    }
    if mouse_check_button_pressed(mb_left)
    {
        var _sw = sprite_get_width(s_hud_quest_scroll)
        var _sh = sprite_get_height(s_hud_quest_scroll)
        if scr_mouse_inside((camx + global.pda_quest_scroll_down_x), (camy + global.pda_quest_scroll_down_y), _sw, _sh)
            global.pda_quest_scroll_entry += 1
        if scr_mouse_inside((camx + global.pda_quest_scroll_up_x), (camy + global.pda_quest_scroll_up_y), _sw, _sh)
            global.pda_quest_scroll_entry -= 1
    }
    if scr_mouse_inside((camx + global.pda_quest_scroll_zone_x), (camy + global.pda_quest_scroll_zone_y), global.pda_quest_scroll_zone_w, global.pda_quest_scroll_zone_h)
    {
        if mouse_wheel_down()
            global.pda_quest_scroll_entry += 1
        if mouse_wheel_up()
            global.pda_quest_scroll_entry -= 1
    }
    var _n_active_quest = 0
    for (var i = 0; i < 30; i++)
    {
        if (global.save_quest_id[i] != -1)
            _n_active_quest += 1
    }
    var _clamp_basso = (_n_active_quest - 12)
    _clamp_basso = clamp(_clamp_basso, 0, 30)
    global.pda_quest_scroll_entry = clamp(global.pda_quest_scroll_entry, 0, _clamp_basso)
    oo.pda_quest_hover = -1
    var quest_amount = 30
    var hh = -1
    var sep = 12
    for (i = 0; i < 30; i++)
        _array_quest[i] = -1
    var mm = 0
    for (i = 0; i < 30; i++)
    {
        if (global.save_quest_id[i] != -1)
        {
            _array_quest[mm] = i
            mm++
        }
    }
    for (var j = global.pda_quest_scroll_entry; j < (global.pda_quest_scroll_entry + 12); j++)
    {
        var _entry = _array_quest[j]
        if (_entry != -1)
        {
            var quest_id_ = global.save_quest_id[_entry]
            if (quest_id_ != -1)
            {
                hh++
                if scr_mouse_inside(((camx + 57) + 5), (((camy + 37) + 20) + (hh * sep)), 100, sep)
                    oo.pda_quest_hover = _entry
            }
        }
    }
    if mouse_check_button_pressed(mb_left)
    {
        if (oo.pda_quest_hover != -1)
        {
            oo.pda_quest_showed = oo.pda_quest_hover
            scr_barra_testo_reset_offset()
        }
    }
    oo.pda_quest_objective_hover = 0
    if (oo.pda_quest_showed != -1)
    {
        if scr_mouse_inside((camx + oo.pda_quest_obj_x), (camy + oo.pda_quest_obj_y), oo.pda_quest_obj_w, 12)
        {
            oo.pda_quest_obj_hover = 1
            if mouse_check_button_pressed(mb_left)
                global.sub_state_show_quest = 0
        }
        if scr_mouse_inside((camx + oo.pda_quest_text_x), (camy + oo.pda_quest_text_y), oo.pda_quest_text_w, 12)
        {
            oo.pda_quest_obj_hover = 2
            if mouse_check_button_pressed(mb_left)
                global.sub_state_show_quest = 1
        }
    }
    if (oo.pda_quest_showed != -1)
    {
        if (global.save_quest_id[oo.pda_quest_showed] != -1)
            scr_barra_testo_step(1, global.quest_text[global.save_quest_id[oo.pda_quest_showed]][0])
    }
    return;
}

