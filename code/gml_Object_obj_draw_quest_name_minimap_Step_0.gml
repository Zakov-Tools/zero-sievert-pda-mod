if (step < step_max)
    step += ((step_max - step) / 2.5)
if (obj_player.state != gml_Script_scr_player_map)
    instance_destroy()
