function scr_state_enemy_watcher_appearing() //gml_Script_scr_state_enemy_watcher_appearing
{
    if (image_index <= 1)
        state = npc_state_patrol[npc_id]
    return;
}

