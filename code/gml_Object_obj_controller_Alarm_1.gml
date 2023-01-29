alarm[1] = 120
for (var j = 0; j < 30; j++)
{
    var quest_id_ = global.save_quest_id[j]
    if (quest_id_ != -1)
    {
        for (var i = 0; i < array_length_2d(global.quest_type, quest_id_); i++)
        {
            switch global.quest_type[quest_id_][i]
            {
                case (1 << 0):
                    global.save_quest_amount_now[j][i] = 0
                    break
                case (2 << 0):
                    global.save_quest_amount_now[j][i] = 0
                    break
                case (4 << 0):
                    global.save_quest_amount_now[j][i] = 0
                    break
                case (5 << 0):
                    global.save_quest_amount_now[j][i] = 0
                    break
            }

        }
    }
}
ini_open(global.save_inventory)
var number_of_items = ini_read_real("Inventory", "Number of items", 0)
if (number_of_items > 0)
{
    for (i = 1; i <= number_of_items; i++)
    {
        var temp_item_id = ini_read_real("Inventory", ("Item_id_" + string(i)), 0)
        var temp_item_qnt = ini_read_real("Inventory", ("Item_qnt_" + string(i)), 0)
        for (j = 0; j < 30; j++)
        {
            quest_id_ = global.save_quest_id[j]
            if (quest_id_ != -1)
            {
                for (var k = 0; k < array_length_2d(global.quest_type, quest_id_); k++)
                {
                    switch global.quest_type[quest_id_][k]
                    {
                        case (1 << 0):
                            if (temp_item_id == global.quest_collect_item[quest_id_][k])
                            {
                                repeat temp_item_qnt
                                    global.save_quest_amount_now[j][k] += 1
                            }
                            break
                        case (2 << 0):
                            if (temp_item_id == global.quest_collect_item[quest_id_][k])
                            {
                                repeat temp_item_qnt
                                    global.save_quest_amount_now[j][k] += 1
                            }
                            break
                        case (4 << 0):
                            if (temp_item_id == global.quest_collect_item[quest_id_][k])
                            {
                                global.save_quest_amount_now[j][k] = 1
                                global.save_quest_status[j] = global.quest_stage_completed[quest_id_]
                            }
                            break
                        case (5 << 0):
                            if (temp_item_id == global.quest_collect_item[quest_id_][k])
                            {
                                global.save_quest_amount_now[j][k] = 1
                                global.save_quest_status[j] = global.quest_stage_completed[quest_id_]
                            }
                            break
                    }

                }
            }
        }
    }
}
ini_close()
ini_open(global.save_player_chest)
for (k = 0; k < global.storage_slot_unlocked; k++)
{
    number_of_items = ini_read_real(("chest_" + string(k)), "quanti_item", 0)
    for (i = 0; i < number_of_items; i++)
    {
        temp_item_id = ini_read_real(("chest_" + string(k)), ("item_id_N_" + string(i)), 0)
        temp_item_qnt = ini_read_real(("chest_" + string(k)), ("item_quantità_N_" + string(i)), 0)
        for (j = 0; j < 30; j++)
        {
            quest_id_ = global.save_quest_id[j]
            if (quest_id_ != -1)
            {
                for (var p = 0; p < array_length_2d(global.quest_type, quest_id_); p++)
                {
                    switch global.quest_type[quest_id_][p]
                    {
                        case (1 << 0):
                            if (temp_item_id == global.quest_collect_item[quest_id_][p])
                            {
                                repeat temp_item_qnt
                                    global.save_quest_amount_now[j][p] += 1
                            }
                            break
                        case (2 << 0):
                            if (temp_item_id == global.quest_collect_item[quest_id_][p])
                            {
                                repeat temp_item_qnt
                                    global.save_quest_amount_now[j][p] += 1
                            }
                            break
                        case (4 << 0):
                            if (temp_item_id == global.quest_collect_item[quest_id_][p])
                                global.save_quest_amount_now[j][p] = 1
                            break
                        case (5 << 0):
                            if (temp_item_id == global.quest_collect_item[quest_id_][p])
                                global.save_quest_amount_now[j][p] = 1
                            break
                    }

                }
            }
        }
    }
}
ini_close()
for (j = 0; j < 30; j++)
{
    quest_id_ = global.save_quest_id[j]
    if (quest_id_ != -1)
    {
        if (global.save_quest_status[j] == 1)
        {
            if (quest_id_ == (29 << 0))
            {
                if (global.az_done[(1 << 0)] == 1)
                {
                    global.save_quest_amount_now[j][0] = 1
                    global.save_quest_status[j] = global.quest_stage_completed[quest_id_]
                }
            }
        }
    }
}
for (j = 0; j < 30; j++)
{
    quest_id_ = global.save_quest_id[j]
    if (quest_id_ != -1)
    {
        var _quanti_obj = array_length_2d(global.quest_type, quest_id_)
        var _obj_fatti = 0
        for (k = 0; k < _quanti_obj; k++)
        {
            if (global.save_quest_amount_now[j][k] >= global.quest_amount_max[quest_id_][k])
            {
                _obj_fatti += 1
                if (global.save_sub_quest_notifica[j][k] == 0)
                {
                    global.save_sub_quest_notifica[j][k] = 1
                    var _q_name = global.quest_name[quest_id_]
                    var _t = (("Sub-Task: - " + _q_name) + " - completed")
                    scr_draw_text_with_box(_t)
                }
            }
            else
            {
                global.save_sub_quest_notifica[j][k] = 0
                global.save_quest_notifica[j] = 0
            }
        }
        if (_obj_fatti >= _quanti_obj)
        {
            global.save_quest_status[j] = global.quest_stage_completed[quest_id_]
            if (global.save_quest_notifica[j] == 0)
            {
                global.save_quest_notifica[j] = 1
                _q_name = global.quest_name[quest_id_]
                _t = (("Quest: - " + _q_name) + " - completed!")
                scr_draw_text_with_box(_t)
            }
        }
        else
            global.save_quest_status[j] = 1
    }
}
if (room == r_hub)
{
    scr_save_quest()
    scr_save_unique_quest()
    scr_save_unique_action()
}
scr_save_stat()
