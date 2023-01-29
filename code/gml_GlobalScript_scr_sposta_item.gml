function scr_sposta_item() //gml_Script_scr_sposta_item
{
    var camx = camera_get_view_x(view_camera[0])
    var camy = camera_get_view_y(view_camera[0])
    var prov_h = get_offset_rotation_heigth(1)
    item_id_dragged.x = (camx + check_positionx[min_distance_id])
    item_id_dragged.y = ((camy + check_positiony[min_distance_id]) + prov_h)
    var x1 = (camx + obj_mouse.check_positionx[obj_mouse.min_distance_id])
    var y1 = (camy + obj_mouse.check_positiony[obj_mouse.min_distance_id])
    global.can_be_splitted = 1
    with (item_id_dragged)
    {
        if place_meeting(x1, y1, obj_item)
            global.can_be_splitted = 0
        for (var i = 0; i < caselle_x; i++)
        {
            for (var j = 0; j < caselle_y; j++)
            {
                if collision_point(((obj_mouse.prev_x + 8) + (i * 16)), ((obj_mouse.prev_y + 8) + (j * 16)), obj_item, 0, 0)
                    global.can_be_splitted = 0
            }
        }
    }
    if (!keyboard_check_direct(vk_control))
        global.can_be_splitted = 0
    if (global.can_be_splitted == 0)
    {
        with (item_id_dragged)
        {
            if place_meeting(x, y, obj_item)
            {
                var _id_coll = instance_place(x, y, obj_item)
                if (_id_coll != id)
                {
                    if (my_id == _id_coll.my_id)
                    {
                        if (item_stack_max[my_id] > 1)
                        {
                            var dragged_qnt = qnt
                            if ((_id_coll.qnt + dragged_qnt) <= item_stack_max[my_id])
                            {
                                qnt += _id_coll.qnt
                                x = _id_coll.x
                                y = _id_coll.y
                                with (_id_coll)
                                    instance_destroy()
                            }
                            else
                            {
                                var quanto_aggiungere = (item_stack_max[my_id] - _id_coll.qnt)
                                _id_coll.qnt += quanto_aggiungere
                                qnt -= quanto_aggiungere
                                x = obj_mouse.prev_x
                                y = obj_mouse.prev_y
                            }
                        }
                    }
                }
            }
        }
    }
    if (global.can_be_splitted == 1)
    {
        if keyboard_check_direct(vk_control)
        {
            if (item_id_dragged.qnt > 1)
            {
                var temp_item = instance_create_layer((camx + check_positionx[min_distance_id]), ((camy + check_positiony[min_distance_id]) + prov_h), "layer_draw_item", obj_item)
                var qaunto_mettere = (item_id_dragged.qnt div 2)
                var quanto_rimane = (item_id_dragged.qnt - qaunto_mettere)
                temp_item.my_id = item_id_dragged.my_id
                temp_item.qnt = qaunto_mettere
                temp_item.my_x = check_positionx[min_distance_id]
                temp_item.my_y = (check_positiony[min_distance_id] + prov_h)
                temp_item.sprite_index = item_sprite_inv[item_id_dragged.my_id]
                temp_item.rotation = item_id_dragged.rotation
                item_id_dragged.qnt = quanto_rimane
                item_id_dragged.x = obj_mouse.prev_x
                item_id_dragged.y = obj_mouse.prev_y
            }
        }
    }
    return;
}

