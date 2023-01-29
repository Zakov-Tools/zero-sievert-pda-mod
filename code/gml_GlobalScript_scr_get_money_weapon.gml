function scr_get_money_weapon(argument0) //gml_Script_scr_get_money_weapon
{
    var soldi_ = 0
    var _id = argument0
    if (_id.mod_id[(0 << 0)] != -1)
        soldi_ += item_value[_id.mod_id[(0 << 0)]]
    if (_id.mod_id[(1 << 0)] != -1)
        soldi_ += item_value[_id.mod_id[(1 << 0)]]
    if (_id.mod_id[(3 << 0)] != -1)
        soldi_ += item_value[_id.mod_id[(3 << 0)]]
    if (_id.mod_id[(2 << 0)] != -1)
        soldi_ += item_value[_id.mod_id[(2 << 0)]]
    if (_id.mod_id[(5 << 0)] != -1)
        soldi_ += item_value[_id.mod_id[(5 << 0)]]
    if (_id.mod_id[(6 << 0)] != -1)
        soldi_ += item_value[_id.mod_id[(6 << 0)]]
    if (_id.mod_id[(4 << 0)] != -1)
        soldi_ += item_value[_id.mod_id[(4 << 0)]]
    if (_id.mod_id[(7 << 0)] != -1)
        soldi_ += item_value[_id.mod_id[(7 << 0)]]
    if (_id.mod_id[(8 << 0)] != -1)
        soldi_ += item_value[_id.mod_id[(8 << 0)]]
    if (_id.mod_id[(9 << 0)] != -1)
        soldi_ += item_value[_id.mod_id[(9 << 0)]]
    if (_id.mod_id[(10 << 0)] != -1)
        soldi_ += item_value[_id.mod_id[(10 << 0)]]
    return soldi_;
}

