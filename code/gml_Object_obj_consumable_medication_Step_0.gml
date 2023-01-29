depth = (obj_player.depth - 150)
obj_player.hp += (med_hp[item_id] / med_duration[item_id])
obj_player.bleed -= (med_bleed[item_id] / med_duration[item_id])
obj_player.radiation += (med_radiation[item_id] / med_duration[item_id])
obj_player.hspd = 0
obj_player.vspd = 0
if (mouse_check_button_pressed(mb_left) && obj_player.state == gml_Script_scr_player_state_move)
    instance_destroy()
