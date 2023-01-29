function scr_player_state_base_upgrade() //gml_Script_scr_player_state_base_upgrade
{
    var base_id = global.base_nearest
    var n_items = array_length_2d(base_up_obj, base_id)
    if (search_item_upgrade == 1)
    {
        search_item_upgrade = 0
        ini_open(global.save_inventory)
        var number_of_items = ini_read_real("Inventory", "Number of items", 0)
        if (number_of_items > 0)
        {
            for (var i = 1; i <= number_of_items; i++)
            {
                var temp_item_id = ini_read_real("Inventory", ("Item_id_" + string(i)), 0)
                var temp_item_qnt = ini_read_real("Inventory", ("Item_qnt_" + string(i)), 0)
                for (var c = 0; c < n_items; c++)
                {
                    var item_id_to_check = base_up_obj[base_id][c]
                    if (temp_item_id == item_id_to_check)
                        base_up_qnt_now[base_id][c] += temp_item_qnt
                }
            }
        }
        ini_close()
        ini_open(global.save_player_chest)
        with (obj_chest_player)
        {
            var quanti_item = ini_read_real(("chest_" + string(my_id)), "quanti_item", 0)
            for (i = 0; i < quanti_item; i++)
            {
                temp_item_id = ini_read_real(("chest_" + string(my_id)), ("item_id_N_" + string(i)), 0)
                temp_item_qnt = ini_read_real(("chest_" + string(my_id)), ("item_quantità_N_" + string(i)), 0)
                for (c = 0; c < n_items; c++)
                {
                    item_id_to_check = base_up_obj[base_id][c]
                    if (temp_item_id == item_id_to_check)
                        base_up_qnt_now[base_id][c] += temp_item_qnt
                }
            }
        }
        ini_close()
    }
    var b_w = up_button_w
    var b_h = up_button_h
    var b_startx = up_button_x
    var b_starty = up_button_y
    var viewx = camera_get_view_x(0)
    var viewy = camera_get_view_y(0)
    if mouse_check_button_pressed(mb_left)
    {
        if (scr_mouse_inside((b_startx + viewx), (b_starty + viewy), b_w, b_h) == 1)
        {
            var can_upgrade = 1
            for (c = 0; c < n_items; c++)
            {
                if (base_up_qnt_now[base_id][c] < base_up_qnt[base_id][c])
                    can_upgrade = 0
            }
            if (can_upgrade == 1)
            {
                state = gml_Script_scr_player_state_move
                search_item_upgrade = 1
            }
        }
    }
    if global.kb_pressed[(5 << 0)]
    {
        state = gml_Script_scr_player_state_move
        search_item_upgrade = 1
        n_items = array_length_2d(base_up_obj, base_id)
        for (c = 0; c < n_items; c++)
            base_up_qnt_now[base_id][c] = 0
    }
    return;
}

