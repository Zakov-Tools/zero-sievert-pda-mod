if instance_exists(obj_player)
{
    if (obj_player.state == gml_Script_scr_player_state_move && obj_player.shooting == 1)
    {
        var _dis = point_distance(x, y, mouse_x, mouse_y)
        if (_dis < 0.5)
        {
            x = mouse_x
            y = mouse_y
        }
        else
        {
            var _dir = point_direction(x, y, mouse_x, mouse_y)
            x += lengthdir_x((_dis / 6), _dir)
            y += lengthdir_y((_dis / 6), _dir)
        }
    }
    else
    {
        x = mouse_x
        y = mouse_y
    }
}
else
{
    x = mouse_x
    y = mouse_y
}
var camx = camera_get_view_x(view_camera[0])
var camy = camera_get_view_y(view_camera[0])
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
var quick_slot5_startx = (camx + 263)
var quick_slot5_starty = (camy + 223)
var quick_slot6_startx = (camx + 284)
var quick_slot6_starty = (camy + 223)
var backpack_startx = (camx + 248)
var backpack_starty = (camy + 119)
var armor_startx = (camx + 200)
var armor_starty = (camy + 119)
var headset_startx = (camx + 224)
var headset_starty = (camy + 162)
if instance_exists(obj_player)
{
    if (obj_player.state == gml_Script_scr_player_state_move)
        image_index = 1
    linea_libera_gun_mouse = 1
    _dir = (point_direction(obj_player.laser_startx, obj_player.laser_starty, x, y) + 90)
    var _off = 1
    var _newx = (obj_player.laser_startx + lengthdir_x(_off, _dir))
    var _newy = (obj_player.laser_starty + lengthdir_y(_off, _dir))
    if collision_line(x, y, _newx, _newy, obj_solid, true, true)
        linea_libera_gun_mouse = 0
    _dir = (point_direction(obj_player.laser_startx, obj_player.laser_starty, x, y) - 90)
    _newx = (obj_player.laser_startx + lengthdir_x(_off, _dir))
    _newy = (obj_player.laser_starty + lengthdir_y(_off, _dir))
    if collision_line(x, y, _newx, _newy, obj_solid, true, true)
        linea_libera_gun_mouse = 0
    if (!instance_exists(obj_inspect))
    {
        if (obj_player.state == gml_Script_scr_player_state_inventory)
        {
            if instance_place(x, y, obj_item)
            {
                var aaa = instance_place(x, y, obj_item)
                item_id_show = aaa.my_id
            }
            var posso_spostarlo = 1
            if mouse_check_button_pressed(mb_left)
            {
                if instance_place(x, y, obj_item)
                {
                    aaa = instance_place(x, y, obj_item)
                    if (aaa.visto == 0)
                        posso_spostarlo = 0
                }
            }
            if (posso_spostarlo == 1)
            {
                if (mouse_check_button_pressed(mb_left) && (!keyboard_check_direct(vk_control)))
                {
                    if instance_place(x, y, obj_item)
                    {
                        audio_play_sound(snd_mouse_press, 10, false)
                        item_id_dragged = instance_place(x, y, obj_item)
                        var can_be_dragged = 1
                        var from_trade_to_buy = 0
                        var from_buy_to_trade = 0
                        if (item_id_dragged.position == (3 << 0) && obj_player.trading == 1)
                        {
                            can_be_dragged = 0
                            from_trade_to_buy = 1
                        }
                        if (item_id_dragged.position == (13 << 0) && obj_player.trading == 1)
                        {
                            can_be_dragged = 0
                            from_buy_to_trade = 1
                        }
                        if (from_trade_to_buy == 1)
                        {
                            if (global.livello_now >= item_id_dragged.livello_min)
                                scr_move_item_quickly(obj_node_roof, (3 << 0), (13 << 0))
                            else
                            {
                                var t_ = ("Unlock at reputation's level " + string(item_id_dragged.livello_min))
                                scr_draw_text_with_box(t_)
                            }
                        }
                        if (from_buy_to_trade == 1)
                        {
                            var _is_in_this_page = 0
                            var quale_item = item_id_dragged.my_id
                            with (global.speaker_nearest)
                            {
                                for (var i = 0; i < quanti_item; i++)
                                {
                                    if (quale_item == loot[i])
                                    {
                                        if (global.page_trader == loot_page[i])
                                            _is_in_this_page = 1
                                    }
                                }
                            }
                            if (_is_in_this_page == 1)
                                scr_move_item_quickly(obj_node_roof, (13 << 0), (3 << 0))
                            else
                            {
                                var trader_nearest = global.speaker_nearest
                                for (i = 0; i < trader_nearest.quanti_item; i++)
                                {
                                    if (trader_nearest.loot[i] == item_id_dragged.my_id)
                                        trader_nearest.loot_qnt[i] += item_id_dragged.qnt
                                }
                                with (item_id_dragged)
                                    instance_destroy()
                            }
                        }
                        if (can_be_dragged == 1)
                        {
                            dragging = 1
                            prev_position = item_id_dragged.position
                            prev_x = item_id_dragged.x
                            prev_y = item_id_dragged.y
                            prev_rotation = item_id_dragged.rotation
                            item_id_dragged.depth -= 1
                            if (item_id_dragged.rotation == 0)
                            {
                                click_offsetx = (((-item_id_dragged.caselle_x) * 16) / 2)
                                click_offsety = (((-item_id_dragged.caselle_y) * 16) / 2)
                            }
                            else
                            {
                                click_offsetx = (((-item_id_dragged.caselle_x) * 16) / 2)
                                click_offsety = ((item_id_dragged.caselle_y * 16) / 2)
                            }
                        }
                    }
                }
            }
            if (dragging == 1)
            {
                if keyboard_check_pressed(ord("R"))
                {
                    if (item_id_dragged.caselle_x != item_id_dragged.caselle_y)
                    {
                        if (item_id_dragged.rotation == 0)
                        {
                            item_id_dragged.rotation = 90
                            var temp_casellex = item_id_dragged.caselle_x
                            item_id_dragged.caselle_x = item_id_dragged.caselle_y
                            item_id_dragged.caselle_y = temp_casellex
                            click_offsetx = (((-item_id_dragged.caselle_x) * 16) / 2)
                            click_offsety = ((item_id_dragged.caselle_y * 16) / 2)
                        }
                        else if (item_id_dragged.rotation == 90)
                        {
                            item_id_dragged.rotation = 0
                            temp_casellex = item_id_dragged.caselle_x
                            item_id_dragged.caselle_x = item_id_dragged.caselle_y
                            item_id_dragged.caselle_y = temp_casellex
                            click_offsetx = (((-item_id_dragged.caselle_x) * 16) / 2)
                            click_offsety = (((-item_id_dragged.caselle_y) * 16) / 2)
                        }
                    }
                }
                item_id_dragged.x = (mouse_x + click_offsetx)
                item_id_dragged.y = (mouse_y + click_offsety)
                var min_distance_value = 50
                var distance = 0
                var prov_h = get_offset_rotation_heigth(1)
                if (obj_player.trading == 0)
                {
                    for (var j = 0; j <= inv_slot_inv_and_loot; j++)
                    {
                        distance = abs(point_distance((item_id_dragged.x - camx), ((item_id_dragged.y - camy) - prov_h), check_positionx[j], check_positiony[j]))
                        if (distance < min_distance_value)
                        {
                            min_distance_id = j
                            min_distance_value = distance
                        }
                    }
                }
                if (obj_player.trading == 1)
                {
                    for (j = inv_slot_equip; j <= inv_slot_trading; j++)
                    {
                        distance = abs(point_distance((item_id_dragged.x - camx), ((item_id_dragged.y - camy) - prov_h), check_positionx[j], check_positiony[j]))
                        if (distance < min_distance_value)
                        {
                            min_distance_id = j
                            min_distance_value = distance
                        }
                    }
                }
                image_index = 5
            }
            else
                image_index = 4
            if mouse_check_button_released(mb_left)
            {
                if (dragging == 1)
                {
                    audio_play_sound(snd_mouse_release, 10, false)
                    global.can_be_placed = 1
                    var dragged_sprite = item_id_dragged.sprite_index
                    var dragged_sprite_w = (item_id_dragged.caselle_x * 16)
                    var dragged_sprite_h = (item_id_dragged.caselle_y * 16)
                    var tolleranza = 2
                    var tol_multiplier = 2
                    var posizione_item = -1
                    var slot_x = (camx + check_positionx[min_distance_id])
                    var slot_y = (camy + check_positiony[min_distance_id])
                    if (obj_player.trading == 0)
                    {
                        if scr_check_fast_position(slot_x, slot_y, (tolleranza * tol_multiplier), inv_startx, inv_starty, 128, 176, dragged_sprite_w, dragged_sprite_h)
                            posizione_item = (0 << 0)
                        else if scr_check_fast_position(slot_x, slot_y, (tolleranza * tol_multiplier), loot_startx, loot_starty, 128, 176, dragged_sprite_w, dragged_sprite_h)
                        {
                            posizione_item = (3 << 0)
                            if (obj_player.trading == 1)
                                global.can_be_placed = 0
                        }
                        else if scr_check_fast_position(slot_x, slot_y, (tolleranza * tol_multiplier), primary_startx, primary_starty, 80, 32, dragged_sprite_w, dragged_sprite_h)
                            posizione_item = (1 << 0)
                        else if scr_check_fast_position(slot_x, slot_y, (tolleranza * tol_multiplier), secondary_startx, secondary_starty, 80, 32, dragged_sprite_w, dragged_sprite_h)
                            posizione_item = (2 << 0)
                        else if scr_check_fast_position(slot_x, slot_y, (tolleranza * tol_multiplier), quick_slot1_startx, quick_slot1_starty, 16, 16, dragged_sprite_w, dragged_sprite_h)
                            posizione_item = (4 << 0)
                        else if scr_check_fast_position(slot_x, slot_y, (tolleranza * tol_multiplier), quick_slot2_startx, quick_slot2_starty, 16, 16, dragged_sprite_w, dragged_sprite_h)
                            posizione_item = (5 << 0)
                        else if scr_check_fast_position(slot_x, slot_y, (tolleranza * tol_multiplier), quick_slot3_startx, quick_slot3_starty, 16, 16, dragged_sprite_w, dragged_sprite_h)
                            posizione_item = (6 << 0)
                        else if scr_check_fast_position(slot_x, slot_y, (tolleranza * tol_multiplier), backpack_startx, backpack_starty, 32, 32, dragged_sprite_w, dragged_sprite_h)
                            posizione_item = (10 << 0)
                        else if scr_check_fast_position(slot_x, slot_y, (tolleranza * tol_multiplier), quick_slot4_startx, quick_slot4_starty, 16, 16, dragged_sprite_w, dragged_sprite_h)
                            posizione_item = (7 << 0)
                        else if scr_check_fast_position(slot_x, slot_y, (tolleranza * tol_multiplier), quick_slot5_startx, quick_slot5_starty, 16, 16, dragged_sprite_w, dragged_sprite_h)
                            posizione_item = (8 << 0)
                        else if scr_check_fast_position(slot_x, slot_y, (tolleranza * tol_multiplier), quick_slot6_startx, quick_slot6_starty, 16, 16, dragged_sprite_w, dragged_sprite_h)
                            posizione_item = (9 << 0)
                        else if scr_check_fast_position(slot_x, slot_y, (tolleranza * tol_multiplier), armor_startx, armor_starty, 32, 32, dragged_sprite_w, dragged_sprite_h)
                            posizione_item = (11 << 0)
                        else if scr_check_fast_position(slot_x, slot_y, (tolleranza * tol_multiplier), headset_startx, headset_starty, 32, 32, dragged_sprite_w, dragged_sprite_h)
                            posizione_item = (12 << 0)
                        else
                            global.can_be_placed = 0
                    }
                    if (obj_player.trading == 1)
                    {
                        if scr_check_fast_position(slot_x, slot_y, (tolleranza * tol_multiplier), inv_startx, inv_starty, 128, 176, dragged_sprite_w, dragged_sprite_h)
                            posizione_item = (0 << 0)
                        else if scr_check_fast_position(slot_x, slot_y, (tolleranza * tol_multiplier), loot_startx, loot_starty, 128, 176, dragged_sprite_w, dragged_sprite_h)
                            posizione_item = (3 << 0)
                        else if scr_check_fast_position(slot_x, slot_y, (tolleranza * tol_multiplier), trade_buy_startx, trade_buy_starty, 96, 80, dragged_sprite_w, dragged_sprite_h)
                            posizione_item = (13 << 0)
                        else if scr_check_fast_position(slot_x, slot_y, (tolleranza * tol_multiplier), trade_sell_startx, trade_sell_starty, 96, 80, dragged_sprite_w, dragged_sprite_h)
                            posizione_item = (14 << 0)
                        else
                            global.can_be_placed = 0
                    }
                    if (obj_player.trading == 1)
                    {
                        if (prev_position == (0 << 0) && posizione_item == (13 << 0))
                            global.can_be_placed = 0
                        if (prev_position == (13 << 0) && posizione_item == (0 << 0))
                            global.can_be_placed = 0
                        if (prev_position == (0 << 0) && posizione_item == (3 << 0))
                            global.can_be_placed = 0
                        if (prev_position == (3 << 0) && posizione_item == (0 << 0))
                            global.can_be_placed = 0
                        if (prev_position == (3 << 0) && posizione_item == (14 << 0))
                            global.can_be_placed = 0
                        if (prev_position == (14 << 0) && posizione_item == (3 << 0))
                            global.can_be_placed = 0
                        if (prev_position == (13 << 0) && posizione_item == (14 << 0))
                            global.can_be_placed = 0
                        if (prev_position == (14 << 0) && posizione_item == (13 << 0))
                            global.can_be_placed = 0
                    }
                    with (item_id_dragged)
                    {
                        prov_h = get_offset_rotation_heigth(1)
                        camx = camera_get_view_x(view_camera[0])
                        camy = camera_get_view_y(view_camera[0])
                        if place_meeting((camx + obj_mouse.check_positionx[obj_mouse.min_distance_id]), ((camy + obj_mouse.check_positiony[obj_mouse.min_distance_id]) + prov_h), obj_item)
                        {
                            var item_id_collided = instance_place((camx + obj_mouse.check_positionx[obj_mouse.min_distance_id]), ((camy + obj_mouse.check_positiony[obj_mouse.min_distance_id]) + prov_h), obj_item)
                            if (item_id_collided.my_id != obj_mouse.item_id_dragged.my_id)
                                global.can_be_placed = 0
                            else if (item_stack_max[item_id_collided.my_id] == 1)
                                global.can_be_placed = 0
                        }
                    }
                    if (global.can_be_placed == 1)
                    {
                        dragging = 0
                        switch posizione_item
                        {
                            case (0 << 0):
                                scr_sposta_item()
                                break
                            case (1 << 0):
                                scr_sposta_weapon((1 << 0), primary_startx, primary_starty, dragged_sprite_w, dragged_sprite_h, item_id_dragged)
                                break
                            case (2 << 0):
                                scr_sposta_weapon((2 << 0), secondary_startx, secondary_starty, dragged_sprite_w, dragged_sprite_h, item_id_dragged)
                                break
                            case (3 << 0):
                                scr_sposta_item()
                                break
                            case (13 << 0):
                                scr_sposta_item()
                                break
                            case (14 << 0):
                                scr_sposta_item()
                                break
                            case (4 << 0):
                                if (item_categoria[item_id_dragged.my_id] == (2 << 0) || item_categoria[item_id_dragged.my_id] == (9 << 0))
                                    scr_sposta_item()
                                else
                                    global.can_be_placed = 0
                                break
                            case (5 << 0):
                                if (item_categoria[item_id_dragged.my_id] == (2 << 0) || item_categoria[item_id_dragged.my_id] == (9 << 0))
                                    scr_sposta_item()
                                else
                                    global.can_be_placed = 0
                                break
                            case (6 << 0):
                                if (item_categoria[item_id_dragged.my_id] == (2 << 0) || item_categoria[item_id_dragged.my_id] == (9 << 0))
                                    scr_sposta_item()
                                else
                                    global.can_be_placed = 0
                                break
                            case (7 << 0):
                                if (item_categoria[item_id_dragged.my_id] == (2 << 0) || item_categoria[item_id_dragged.my_id] == (9 << 0))
                                    scr_sposta_item()
                                else
                                    global.can_be_placed = 0
                                break
                            case (8 << 0):
                                if (item_categoria[item_id_dragged.my_id] == (2 << 0) || item_categoria[item_id_dragged.my_id] == (9 << 0))
                                    scr_sposta_item()
                                else
                                    global.can_be_placed = 0
                                break
                            case (9 << 0):
                                if (item_categoria[item_id_dragged.my_id] == (2 << 0) || item_categoria[item_id_dragged.my_id] == (9 << 0))
                                    scr_sposta_item()
                                else
                                    global.can_be_placed = 0
                                break
                            case (10 << 0):
                                if (item_categoria[item_id_dragged.my_id] == (5 << 0))
                                    scr_sposta_item()
                                else
                                    global.can_be_placed = 0
                                break
                            case (11 << 0):
                                if (item_categoria[item_id_dragged.my_id] == (6 << 0))
                                    scr_sposta_item()
                                else
                                    global.can_be_placed = 0
                                break
                            case (12 << 0):
                                if (item_categoria[item_id_dragged.my_id] == (18 << 0))
                                    scr_sposta_item()
                                else
                                    global.can_be_placed = 0
                                break
                        }

                    }
                    if (global.can_be_placed == 0)
                    {
                        dragging = 0
                        item_id_dragged.x = prev_x
                        item_id_dragged.y = prev_y
                        item_id_dragged.rotation = prev_rotation
                        with (obj_item)
                            collision_with_item = 0
                    }
                    item_id_dragged.depth += 1
                    item_id_dragged = self
                    scr_check_item_position()
                    if (obj_player.trading == 0)
                        scr_sistema_equip()
                }
            }
            if mouse_check_button_pressed(mb_left)
            {
                if keyboard_check(vk_control)
                {
                    if instance_place(x, y, obj_item)
                    {
                        if (posso_spostarlo == 1)
                        {
                            if (obj_player.trading == 1)
                            {
                                var item_id_clicked = instance_place(x, y, obj_item)
                                quale_item = item_id_clicked.my_id
                                var item_posizione = item_id_clicked.position
                                if (item_posizione == (0 << 0))
                                    scr_move_item_quickly(obj_node_roof, (0 << 0), (14 << 0))
                                if (item_posizione == (14 << 0))
                                    scr_move_item_quickly(obj_node_roof, (14 << 0), (0 << 0))
                            }
                            if (obj_player.looting == 1 || obj_player.looting_player_stash == 1 || (obj_player.looting == 0 && obj_player.looting_player_stash == 0 && obj_player.trading == 0))
                            {
                                if (mouse_x >= inv_startx && mouse_x < (inv_startx + 128) && mouse_y >= inv_starty && mouse_y < (inv_starty + 176))
                                    scr_move_item_quickly(obj_node_roof, (0 << 0), (3 << 0))
                                if (mouse_x >= loot_startx && mouse_x < (loot_startx + 128) && mouse_y >= loot_starty && mouse_y < (loot_starty + 176))
                                    scr_move_item_quickly(obj_node_roof, (3 << 0), (0 << 0))
                            }
                        }
                    }
                }
            }
            if (mouse_check_button_pressed(mb_right) && (!keyboard_check_direct(vk_control)))
            {
                if (obj_player.trading == 0)
                {
                    if instance_place(x, y, obj_item)
                    {
                        if (dragging == 0)
                        {
                            item_id_consumable = instance_place(x, y, obj_item)
                            quale_item = item_id_consumable.my_id
                            item_id_show = quale_item
                            if (item_id_consumable.visto == 1)
                            {
                                var temp_choose = instance_create_layer(mouse_x, mouse_y, "layer_mouse", obj_inspect)
                                temp_choose.depth += 1
                                temp_choose.quale_item = quale_item
                                temp_choose.pos = item_id_consumable.position
                                temp_choose.object_id = item_id_consumable
                            }
                        }
                    }
                }
            }
        }
    }
}
