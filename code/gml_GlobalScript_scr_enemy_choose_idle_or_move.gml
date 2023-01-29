function scr_enemy_choose_idle_or_move() //gml_Script_scr_enemy_choose_idle_or_move
{
    if scr_chance(npc_prob_idle[npc_id])
    {
        hspd = 0
        vspd = 0
    }
    if scr_chance(npc_prob_move[npc_id])
    {
        var dir = irandom(360)
        hspd = lengthdir_x(npc_spd_not_alerted[npc_id], dir)
        vspd = lengthdir_y(npc_spd_not_alerted[npc_id], dir)
    }
    return;
}

