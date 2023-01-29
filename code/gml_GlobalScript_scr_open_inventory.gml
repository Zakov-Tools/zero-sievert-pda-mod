function scr_open_inventory() //gml_Script_scr_open_inventory
{
    camera_set_view_size(view_camera[0], 480, 270)
    var camx = camera_get_view_x(view_camera[0])
    var camy = camera_get_view_y(view_camera[0])
    if (room != room_tutorial)
        ini_open(global.save_inventory)
    else
        ini_open("tutorial_save.ini")
    var number_of_items = ini_read_real("Inventory", "Number of items", 0)
    if (number_of_items > 0)
    {
        for (var i = 1; i <= number_of_items; i++)
        {
            var temp_item_id = ini_read_real("Inventory", ("Item_id_" + string(i)), 0)
            var temp_item_qnt = ini_read_real("Inventory", ("Item_qnt_" + string(i)), 0)
            var temp_item_x = ini_read_real("Inventory", ("Item_x_" + string(i)), 0)
            var temp_item_y = ini_read_real("Inventory", ("Item_y_" + string(i)), 0)
            var temp_rotation = ini_read_real("Inventory", ("rotation" + string(i)), 0)
            var temp_from_player = ini_read_real("Inventory", ("created_from_player" + string(i)), 0)
            if (obj_controller.arma_moddable[temp_item_id] == 1)
            {
                temp_[(0 << 0)] = ini_read_real("Inventory", ((("mod_" + string((0 << 0))) + "_") + string(i)), arma_mod_id[temp_item_id][(0 << 0)])
                temp_[(1 << 0)] = ini_read_real("Inventory", ((("mod_" + string((1 << 0))) + "_") + string(i)), arma_mod_id[temp_item_id][(1 << 0)])
                temp_[(3 << 0)] = ini_read_real("Inventory", ((("mod_" + string((3 << 0))) + "_") + string(i)), arma_mod_id[temp_item_id][(3 << 0)])
                temp_[(2 << 0)] = ini_read_real("Inventory", ((("mod_" + string((2 << 0))) + "_") + string(i)), arma_mod_id[temp_item_id][(2 << 0)])
                temp_[(5 << 0)] = ini_read_real("Inventory", ((("mod_" + string((5 << 0))) + "_") + string(i)), arma_mod_id[temp_item_id][(5 << 0)])
                temp_[(6 << 0)] = ini_read_real("Inventory", ((("mod_" + string((6 << 0))) + "_") + string(i)), arma_mod_id[temp_item_id][(6 << 0)])
                temp_[(4 << 0)] = ini_read_real("Inventory", ((("mod_" + string((4 << 0))) + "_") + string(i)), arma_mod_id[temp_item_id][(4 << 0)])
                temp_[(7 << 0)] = ini_read_real("Inventory", ((("mod_" + string((7 << 0))) + "_") + string(i)), arma_mod_id[temp_item_id][(7 << 0)])
                temp_[(8 << 0)] = ini_read_real("Inventory", ((("mod_" + string((8 << 0))) + "_") + string(i)), arma_mod_id[temp_item_id][(8 << 0)])
                temp_[(9 << 0)] = ini_read_real("Inventory", ((("mod_" + string((9 << 0))) + "_") + string(i)), arma_mod_id[temp_item_id][(9 << 0)])
                temp_[(10 << 0)] = ini_read_real("Inventory", ((("mod_" + string((10 << 0))) + "_") + string(i)), arma_mod_id[temp_item_id][(10 << 0)])
            }
            var cam_x = camera_get_view_x(view_camera[0])
            var cam_y = camera_get_view_y(view_camera[0])
            if (temp_item_qnt > 0)
            {
                var temp_item = instance_create_layer((cam_x + temp_item_x), (cam_y + temp_item_y), "layer_draw_item", obj_item)
                temp_item.my_id = temp_item_id
                temp_item.qnt = temp_item_qnt
                temp_item.my_x = temp_item_x
                temp_item.my_y = temp_item_y
                temp_item.sprite_index = item_sprite_inv[temp_item_id]
                temp_item.rotation = temp_rotation
                temp_item.created_from_player = temp_from_player
                if (obj_controller.arma_moddable[temp_item_id] == 1)
                {
                    temp_item.mod_id[(0 << 0)] = temp_[(0 << 0)]
                    temp_item.mod_id[(1 << 0)] = temp_[(1 << 0)]
                    temp_item.mod_id[(3 << 0)] = temp_[(3 << 0)]
                    temp_item.mod_id[(2 << 0)] = temp_[(2 << 0)]
                    temp_item.mod_id[(5 << 0)] = temp_[(5 << 0)]
                    temp_item.mod_id[(6 << 0)] = temp_[(6 << 0)]
                    temp_item.mod_id[(4 << 0)] = temp_[(4 << 0)]
                    temp_item.mod_id[(7 << 0)] = temp_[(7 << 0)]
                    temp_item.mod_id[(8 << 0)] = temp_[(8 << 0)]
                    temp_item.mod_id[(9 << 0)] = temp_[(9 << 0)]
                    temp_item.mod_id[(10 << 0)] = temp_[(10 << 0)]
                }
                var quante_ammo = ini_read_real("Inventory", ("item_ammo" + string(i)), 0)
                temp_item.ammo_adesso = quante_ammo
                if (item_categoria[temp_item_id] == (0 << 0))
                {
                    var _ammo_id = ini_read_real("Inventory", ("item_ammo_id" + string(i)), arma_ammo[temp_item_id])
                    temp_item.ammo_now_id = _ammo_id
                }
                var dur = ini_read_real("Inventory", ("durability" + string(i)), 100)
                temp_item.durability = dur
            }
        }
    }
    ini_close()
    camx = camera_get_view_x(view_camera[0])
    camy = camera_get_view_y(view_camera[0])
    var inv_startx = (camx + 41)
    var inv_starty = (camy + 63)
    var primary_startx = (camx + 200)
    var primary_starty = (camy + 31)
    var secondary_startx = (camx + 200)
    var secondary_starty = (camy + 76)
    var loot_startx = (camx + 312)
    var loot_starty = (camy + 63)
    var trade_buy_startx = (camx + 192)
    var trade_buy_starty = (camy + 160)
    var trade_sell_startx = (camx + 192)
    var trade_sell_starty = (camy + 64)
    var quick_slot1_startx = (camx + 179)
    var quick_slot1_starty = (camy + 223)
    var quick_slot2_startx = (camx + 200)
    var quick_slot2_starty = (camy + 223)
    var quick_slot3_startx = (camx + 221)
    var quick_slot3_starty = (camy + 223)
    var quick_slot4_startx = (camx + 242)
    var quick_slot4_starty = (camy + 223)
    var backpack_startx = (camx + 248)
    var backpack_starty = (camy + 119)
    var armor_startx = (camx + 200)
    var armor_starty = (camy + 119)
    var headset_startx = (camx + 224)
    var headset_starty = (camy + 162)
    var quick_slot5_startx = (camx + 263)
    var quick_slot5_starty = (camy + 223)
    var quick_slot6_startx = (camx + 284)
    var quick_slot6_starty = (camy + 223)
    scr_check_item_position()
    scr_sistema_equip()
    if (obj_player.trading == 1 && obj_player.looting == 0)
    {
        with (obj_item)
        {
            var temp_pos = -1
            if scr_check_fast_position(x, y, 1, inv_startx, inv_starty, 128, 176, 0, 0)
                temp_pos = (0 << 0)
            else if scr_check_fast_position(x, y, 1, primary_startx, primary_starty, 80, 32, 0, 0)
                temp_pos = (1 << 0)
            else if scr_check_fast_position(x, y, 1, secondary_startx, secondary_starty, 80, 32, 0, 0)
                temp_pos = (2 << 0)
            else if scr_check_fast_position(x, y, 1, loot_startx, loot_starty, 128, 176, 0, 0)
                temp_pos = (3 << 0)
            else if scr_check_fast_position(x, y, 1, armor_startx, armor_starty, 32, 32, 0, 0)
                temp_pos = (11 << 0)
            else if scr_check_fast_position(x, y, 1, backpack_startx, backpack_starty, 32, 32, 0, 0)
                temp_pos = (10 << 0)
            else if scr_check_fast_position(x, y, 1, quick_slot1_startx, quick_slot1_starty, 16, 16, 0, 0)
                temp_pos = (4 << 0)
            else if scr_check_fast_position(x, y, 1, quick_slot2_startx, quick_slot2_starty, 16, 16, 0, 0)
                temp_pos = (5 << 0)
            else if scr_check_fast_position(x, y, 1, quick_slot3_startx, quick_slot3_starty, 16, 16, 0, 0)
                temp_pos = (6 << 0)
            else if scr_check_fast_position(x, y, 1, quick_slot4_startx, quick_slot4_starty, 16, 16, 0, 0)
                temp_pos = (7 << 0)
            else if scr_check_fast_position(x, y, 1, quick_slot5_startx, quick_slot5_starty, 16, 16, 0, 0)
                temp_pos = (8 << 0)
            else if scr_check_fast_position(x, y, 1, quick_slot6_startx, quick_slot6_starty, 16, 16, 0, 0)
                temp_pos = (9 << 0)
            else if scr_check_fast_position(x, y, 1, headset_startx, headset_starty, 32, 32, 0, 0)
                temp_pos = (12 << 0)
            if (temp_pos == (1 << 0) || temp_pos == (2 << 0) || temp_pos == (4 << 0) || temp_pos == (5 << 0) || temp_pos == (6 << 0) || temp_pos == (7 << 0) || temp_pos == (8 << 0) || temp_pos == (9 << 0) || temp_pos == (12 << 0) || temp_pos == (11 << 0) || temp_pos == (10 << 0))
            {
                position = temp_pos
                prev_position = temp_pos
                x -= 320
            }
        }
    }
    scr_check_item_position()
    scr_sistema_equip()
    return;
}

