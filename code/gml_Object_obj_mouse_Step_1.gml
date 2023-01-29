if instance_exists(obj_player)
{
    if (obj_player.state == gml_Script_scr_player_talk || obj_player.state == gml_Script_scr_player_ask || obj_player.state == gml_Script_scr_player_show_answer || obj_player.state == gml_Script_scr_player_quest_list || obj_player.state == gml_Script_scr_player_show_quest || obj_player.state == gml_Script_scr_player_talk_document || obj_player.state == gml_Script_scr_player_repair_equipment || obj_player.state == gml_Script_scr_player_heal_me || obj_player.state == gml_Script_scr_player_join_faction)
        object_set_mask(obj_mouse, 203)
    else
        object_set_mask(obj_mouse, 204)
}
