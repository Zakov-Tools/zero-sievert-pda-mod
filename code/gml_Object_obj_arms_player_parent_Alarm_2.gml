obj_player.draw_weapon = 1
obj_player.state = gml_Script_scr_player_state_move
var o = obj_controller
if (o.item_categoria[item_id] == (2 << 0))
    obj_player.bleed = (player_bleed - o.med_bleed[item_id])
instance_destroy()
