var camx = camera_get_view_x(view_camera[0])
var camy = camera_get_view_y(view_camera[0])
if (obj_player.state == gml_Script_scr_player_state_inventory || obj_player.state == gml_Script_scr_player_state_craft || obj_player.state == gml_Script_scr_player_state_mod)
    draw_sprite(sprite_index, image_index, (x - camx), (y - camy))
if (obj_player.state == gml_Script_scr_player_map || obj_player.state == gml_Script_scr_player_state_pda || obj_player.state == gml_Script_scr_player_state_quest || obj_player.state == gml_Script_scr_player_state_stat || obj_player.state == gml_Script_scr_player_state_skill_tree || obj_player.state == gml_Script_scr_player_show_quest || obj_player.state == gml_Script_scr_player_state_faction || obj_player.state == gml_Script_scr_player_state_sleep || obj_player.state == gml_Script_scr_player_state_skill2 || obj_player.state == gml_Script_scr_player_state_base || obj_player.state == gml_Script_scr_player_state_mod || obj_player.state == gml_Script_scr_player_state_item_spawn)
{
    draw_sprite(sprite_index, 4, (x - camx), (y - camy))
    draw_set_font(font0)
}
