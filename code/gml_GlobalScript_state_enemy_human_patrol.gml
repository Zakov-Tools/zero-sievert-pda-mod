function state_enemy_human_patrol() //gml_Script_state_enemy_human_patrol
{
    scr_enemy_choose_idle_or_move()
    scr_collision()
    if scr_chance(2)
        weapon_pointing_amount = choose((-weapon_pointing_angle), weapon_pointing_angle, 0)
    weapon_pointing_direction += weapon_pointing_amount
    target_for_image_scale = (x + lengthdir_x(2, weapon_pointing_direction))
    target = scr_find_target_for_human()
    if (target != -4)
    {
        hspd = 0
        vspd = 0
        state = npc_state_alert[npc_id]
    }
    return;
}

