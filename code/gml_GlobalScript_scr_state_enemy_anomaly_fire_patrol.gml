function scr_state_enemy_anomaly_fire_patrol() //gml_Script_scr_state_enemy_anomaly_fire_patrol
{
    scr_enemy_choose_idle_or_move()
    scr_collision()
    target = scr_find_target_for_mutant(npc_alert_visual_distance[npc_id])
    if (target != -4)
    {
        hspd = 0
        vspd = 0
        state = npc_state_alert[npc_id]
    }
    return;
}

