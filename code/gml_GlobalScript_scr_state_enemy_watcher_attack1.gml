function scr_state_enemy_watcher_attack1() //gml_Script_scr_state_enemy_watcher_attack1
{
    if (image_index >= (sprite_get_number(sprite_attack_1) - 1))
    {
        attack1_time++
        if (attack1_created == 0)
        {
            attack1_created = 1
            var oo = instance_create_depth(x, y, 0, obj_watcher_attack_1)
            oo.target = target
            oo.alarm[0] = attack1_time_max
            var pos = instance_create_depth(x, y, 0, obj_watcher_attack_1_position)
            pos.alarm[0] = attack1_time_max
        }
        if (attack1_time >= attack1_time_max)
        {
            attack1_time = 0
            attack1_created = 0
            state = npc_state_patrol[npc_id]
        }
    }
    return;
}

