function scr_player_consumable_animation() //gml_Script_scr_player_consumable_animation
{
    if instance_exists(obj_arms_player_parent)
    {
        var _item_id = obj_arms_player_parent.item_id
        var _can_move = med_can_move[_item_id]
        var _speed_multi = med_speed_multiplier[_item_id]
        if (item_categoria[_item_id] == (3 << 0))
        {
            _can_move = 1
            _speed_multi = 1
        }
        scr_player_movement(_speed_multi, _can_move, 0)
    }
    return;
}

