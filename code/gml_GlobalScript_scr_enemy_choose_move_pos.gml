function scr_enemy_choose_move_pos(argument0, argument1, argument2) //gml_Script_scr_enemy_choose_move_pos
{
    var pos_x = argument0
    var pos_y = argument1
    var range = irandom_range((argument2 div 2), argument2)
    var _dir = irandom(360)
    move_point_x = (pos_x + lengthdir_x(range, _dir))
    move_point_y = (pos_y + lengthdir_y(range, _dir))
    return;
}

