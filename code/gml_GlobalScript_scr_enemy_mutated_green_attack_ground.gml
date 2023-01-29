function scr_enemy_mutated_green_attack_ground() //gml_Script_scr_enemy_mutated_green_attack_ground
{
    path_end()
    if (image_index > 12 && attack_1_created == 0)
    {
        attack_1_created = 1
        var bull = instance_create_depth(x, y, (-y), obj_mutated_green_attack_1)
        var dir = point_direction(x, y, target.x, target.y)
        var spd = 3
        bull.hspd = lengthdir_x(spd, dir)
        bull.vspd = lengthdir_y(spd, dir)
    }
    if (image_index >= (sprite_get_number(sprite_attack_1) - 2))
    {
        state = npc_state_patrol[npc_id]
        attack_1_created = 0
    }
    return;
}

