if (obj_player.state == gml_Script_scr_player_state_move || obj_player.state == gml_Script_scr_player_state_medication)
{
    var xx = obj_player.x
    var yy = obj_player.y
    draw_sprite(item_sprite_inv[item_id], 0, (xx - 16), (yy - 32))
    draw_set_font(font0)
    draw_set_halign(fa_left)
    draw_set_valign(fa_top)
    scr_draw_text_outlined((xx + 3), (yy - 30), string((alarm[0] / 60)), c_white, c_black, 1, 1)
}
