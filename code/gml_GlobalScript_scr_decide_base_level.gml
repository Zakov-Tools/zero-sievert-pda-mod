function scr_decide_base_level() //gml_Script_scr_decide_base_level
{
    var base_id = global.base_nearest
    switch base_level_now[base_id]
    {
        case 0:
            base_up_upgrade = base_upgrade1_upgrade
            base_up_obj = base_upgrade1_obj
            base_up_qnt = base_upgrade1_qnt
            base_up_cost = base_upgrade1_money
            base_up_qnt_now = base_upgrade1_now
            break
    }

    return;
}

