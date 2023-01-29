function scr_save_unique_quest() //gml_Script_scr_save_unique_quest
{
    ini_open(global.save_general)
    for (var i = 0; i < array_length_1d(global.quest_id); i++)
    {
        var q_id = global.quest_id[i]
        if (global.quest_unique_done[global.quest_id[i]] == 1)
            ini_write_real(("quest_" + string(q_id)), "Already_done", 1)
    }
    ini_close()
    return;
}

