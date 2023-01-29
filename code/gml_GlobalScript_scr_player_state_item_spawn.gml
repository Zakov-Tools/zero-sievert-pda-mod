function scr_player_state_item_spawn() //gml_Script_scr_player_state_item_spawn
{
    var camx = camera_get_view_x(view_camera[0])
    var camy = camera_get_view_y(view_camera[0])
    var _exit = 0
    if keyboard_check_pressed(vk_escape)
    {
        state = gml_Script_scr_player_state_move
        obj_controller.can_pause = 0
        audio_play_sound(snd_ui_pda_back, 10, false)
        _exit = 1
    }
    if global.kb_pressed[(5 << 0)]
    {
        state = gml_Script_scr_player_state_move
        audio_play_sound(snd_ui_pda_back, 10, false)
        _exit = 1
    }
    if (_exit == 1)
    {
        if instance_exists(obj_item)
        {
            with (obj_item)
                instance_destroy()
        }
    }
    var _change = 0
    var _new_cat = 0
    if mouse_check_button_pressed(mb_left)
    {
        for (var i = 0; i < array_length_1d(global.item_spawn_name); i++)
        {
            if (global.item_spawn_cat != i)
            {
                var _x = ((camx + global.item_spawn_tx) - (global.item_spawn_tw / 2))
                var _y = (((camy + global.item_spawn_ty) + (i * global.item_spawn_th)) - (global.item_spawn_th / 2))
                if scr_mouse_inside(_x, _y, global.item_spawn_tw, global.item_spawn_th)
                {
                    _change = 1
                    global.item_spawn_page = 0
                    global.item_spawn_cat = i
                }
            }
        }
    }
    if mouse_check_button_pressed(mb_left)
    {
        for (i = 0; i < 4; i++)
        {
            _x = ((camx + global.item_spawn_subpage_x) + (i * global.item_spawn_subpage_w))
            _y = (camy + global.item_spawn_subpage_y)
            if scr_mouse_inside(_x, _y, global.item_spawn_subpage_w, global.item_spawn_subpage_w)
            {
                if (global.item_spawn_page != i)
                {
                    global.item_spawn_page = i
                    _change = 1
                }
            }
        }
    }
    if (_change == 1)
    {
        var o = obj_controller
        with (obj_item)
            instance_destroy()
        for (i = 0; i < array_length_2d(o.item_spawn_pa, global.item_spawn_cat); i++)
        {
            if (o.item_spawn_pa[global.item_spawn_cat][i] == global.item_spawn_page)
            {
                var _item = instance_create_depth(((camx + 112) + (o.item_spawn_x[global.item_spawn_cat][i] * 16)), ((camy + 16) + (o.item_spawn_y[global.item_spawn_cat][i] * 16)), -10000, obj_item)
                var _id = o.item_spawn_id[global.item_spawn_cat][i]
                _item.my_id = _id
                _item.qnt = item_stack_max[_id]
                _item.sprite_index = item_sprite_inv[_id]
                _item.visto = 1
                if (arma_moddable[_id] == 1)
                {
                    _item.mod_id[(0 << 0)] = arma_mod_id[_id][(0 << 0)]
                    _item.mod_id[(1 << 0)] = arma_mod_id[_id][(1 << 0)]
                    _item.mod_id[(3 << 0)] = arma_mod_id[_id][(3 << 0)]
                    _item.mod_id[(2 << 0)] = arma_mod_id[_id][(2 << 0)]
                    _item.mod_id[(5 << 0)] = arma_mod_id[_id][(5 << 0)]
                    _item.mod_id[(6 << 0)] = arma_mod_id[_id][(6 << 0)]
                    _item.mod_id[(4 << 0)] = arma_mod_id[_id][(4 << 0)]
                    _item.mod_id[(7 << 0)] = arma_mod_id[_id][(7 << 0)]
                    _item.mod_id[(8 << 0)] = arma_mod_id[_id][(8 << 0)]
                    _item.mod_id[(9 << 0)] = arma_mod_id[_id][(9 << 0)]
                    _item.mod_id[(10 << 0)] = arma_mod_id[_id][(10 << 0)]
                }
            }
        }
    }
    if mouse_check_button_pressed(mb_left)
    {
        if instance_position(mouse_x, mouse_y, obj_item)
        {
            _item = instance_position(mouse_x, mouse_y, obj_item)
            _id = _item.my_id
            var _qnt = item_stack_max[_id]
            var _placed = scr_aggiungi_item_nel_file_inventario(_id, _qnt)
            if (_placed == 1)
            {
                var _name = (("-" + item_name[_id]) + "-")
                var _qnt_add = " "
                if (_qnt > 1)
                    _qnt_add = ((" (" + string(_qnt)) + ") ")
                var _t = ((_name + _qnt_add) + "has been added to your inventory")
                scr_draw_text_with_box(_t)
            }
            else
                scr_draw_text_with_box("Not enough inventory space!")
        }
    }
    return;
}

