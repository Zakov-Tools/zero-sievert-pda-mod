function scr_player_state_skill_upgrade() //gml_Script_scr_player_state_skill_upgrade
{
    if global.kb_pressed[(5 << 0)]
    {
        state = gml_Script_scr_player_state_move
        search_item_upgrade = 1
    }
    var n_point = array_length_1d(point_name)
    var viewx = camera_get_view_x(0)
    var viewy = camera_get_view_y(0)
    if mouse_check_button_pressed(mb_left)
    {
        for (var i = 0; i < n_point; i++)
        {
            if scr_mouse_inside((point_x[i] + viewx), (point_y[i] + viewy), skill_w, skill_w)
            {
                point_selected = i
                search_item_upgrade = 1
            }
        }
    }
    if (search_item_upgrade == 1)
    {
        search_item_upgrade = 0
        var n_items = array_length_2d(point_item, point_selected)
        for (var p = 0; p < n_items; p++)
            point_qnt_now[point_selected][p] = 0
        ini_open(global.save_inventory)
        var number_of_items = ini_read_real("Inventory", "Number of items", 0)
        if (number_of_items > 0)
        {
            for (i = 1; i <= number_of_items; i++)
            {
                var temp_item_id = ini_read_real("Inventory", ("Item_id_" + string(i)), 0)
                var temp_item_qnt = ini_read_real("Inventory", ("Item_qnt_" + string(i)), 0)
                for (var c = 0; c < n_items; c++)
                {
                    var item_id_to_check = point_item[point_selected][c]
                    if (temp_item_id == item_id_to_check)
                        point_qnt_now[point_selected][c] += temp_item_qnt
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
                    item_id_to_check = point_item[point_selected][c]
                    if (temp_item_id == item_id_to_check)
                        point_qnt_now[point_selected][c] += temp_item_qnt
                }
            }
        }
        ini_close()
    }
    return;
}

