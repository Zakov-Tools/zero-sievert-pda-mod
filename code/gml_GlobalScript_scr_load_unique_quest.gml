function scr_load_unique_quest() //gml_Script_scr_load_unique_quest
{
    ini_open(global.save_general)
    var o = 22
    for (var i = 0; i < array_length_1d(global.quest_id); i++)
    {
        var q_id = global.quest_id[i]
        if (global.quest_is_unique[q_id] == 1)
            global.quest_unique_done[q_id] = ini_read_real(("quest_" + string(q_id)), "Already_done", 0)
    }
    ini_close()
    return;
}

