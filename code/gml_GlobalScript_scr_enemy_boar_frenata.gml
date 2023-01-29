function scr_enemy_boar_frenata() //gml_Script_scr_enemy_boar_frenata
{
    frenata_step++
    if (frenata_step >= frenata_step_max)
    {
        frenata_step = 0
        state = npc_state_patrol[npc_id]
    }
    hspd = (lengthdir_x(npc_spd_alerted[npc_id], frenata_dir) - ((lengthdir_x(npc_spd_alerted[npc_id], frenata_dir) / frenata_step_max) * frenata_step))
    vspd = (lengthdir_y(npc_spd_alerted[npc_id], frenata_dir) - ((lengthdir_y(npc_spd_alerted[npc_id], frenata_dir) / frenata_step_max) * frenata_step))
    scr_collision()
    return;
}

