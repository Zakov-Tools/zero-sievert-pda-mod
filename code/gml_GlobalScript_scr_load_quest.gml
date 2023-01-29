function scr_load_quest() //gml_Script_scr_load_quest
{
    ini_open(global.save_general)
    for (var i = 0; i < 30; i++)
    {
        global.save_quest_id[i] = ini_read_real("Quest", (string(i) + "_id"), -1)
        global.save_quest_reward[i] = ini_read_real("Quest", (string(i) + "_reward"), -1)
        global.save_quest_giver[i] = ini_read_real("Quest", (string(i) + "_giver"), 0)
        global.save_quest_status[i] = ini_read_real("Quest", (string(i) + "_status"), 0)
        global.save_quest_notifica[i] = ini_read_real("Quest", (string(i) + "_notifica"), 0)
        if (global.save_quest_id[i] != -1)
        {
            for (var j = 0; j < 7; j++)
            {
                global.save_quest_amount_now[i][j] = ini_read_real("Quest", ((string(i) + "_amount_now_") + string(j)), 0)
                global.save_sub_quest_notifica[i][j] = ini_read_real("Quest", ((string(i) + "_notifica_sub_") + string(j)), 0)
            }
        }
    }
    ini_close()
    return;
}

