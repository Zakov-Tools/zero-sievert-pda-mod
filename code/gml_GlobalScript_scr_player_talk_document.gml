function scr_player_talk_document() //gml_Script_scr_player_talk_document
{
    var camx = camera_get_view_x(view_camera[0])
    var camy = camera_get_view_y(view_camera[0])
    var speak_nearest = global.speaker_nearest
    var speaker_id_ = global.speaker_nearest.speaker_id
    if mouse_check_button_pressed(mb_left)
    {
        if scr_mouse_inside((camx + 24), (camy + 72), 96, 12)
            state = gml_Script_scr_player_talk
        if (global.ho_documenti == 1)
        {
            if (speaker_id_ == (1 << 0) || speaker_id_ == (2 << 0))
            {
                if scr_mouse_inside((camx + 24), ((camy + 72) + 12), 96, 12)
                {
                    var reputation_gain = 0
                    ini_open(global.save_inventory)
                    var number_of_items = ini_read_real("Inventory", "Number of items", 0)
                    if (number_of_items > 0)
                    {
                        for (var i = 1; i <= number_of_items; i++)
                        {
                            var temp_item_id = ini_read_real("Inventory", ("Item_id_" + string(i)), 0)
                            if (item_categoria[temp_item_id] == (10 << 0))
                            {
                                ini_write_real("Inventory", ("Item_qnt_" + string(i)), 0)
                                var trader_faction = obj_controller.speaker_faction[speaker_id_]
                                reputation_gain += documents_rep[temp_item_id]
                            }
                        }
                    }
                    ini_close()
                    scr_draw_text_with_box(("Your reputation with this faction has incresed by " + string(reputation_gain)))
                    state = gml_Script_scr_player_talk
                }
            }
        }
    }
    return;
}

