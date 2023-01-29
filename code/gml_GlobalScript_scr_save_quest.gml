function scr_save_quest() //gml_Script_scr_save_quest
{
    ini_open(global.save_general)
    for (var i = 0; i < 30; i++)
    {
        ini_write_real("Quest", (string(i) + "_id"), global.save_quest_id[i])
        ini_write_real("Quest", (string(i) + "_status"), global.save_quest_status[i])
        ini_write_real("Quest", (string(i) + "_reward"), global.save_quest_reward[i])
        ini_write_real("Quest", (string(i) + "_giver"), global.save_quest_giver[i])
        ini_write_real("Quest", (string(i) + "_notifica"), global.save_quest_notifica[i])
        ini_key_delete("Quest", (string(i) + "_amount_now"))
        if (global.save_quest_id[i] != -1)
        {
            for (var j = 0; j < 7; j++)
            {
                ini_write_real("Quest", ((string(i) + "_amount_now_") + string(j)), global.save_quest_amount_now[i][j])
                ini_write_real("Quest", ((string(i) + "_notifica_sub_") + string(j)), global.save_sub_quest_notifica[i][j])
            }
        }
    }
    ini_close()
    return;
}

