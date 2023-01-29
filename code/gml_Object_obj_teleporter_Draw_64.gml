display_set_gui_size(480, 270)
if (timer > 0)
{
    draw_set_font(font0)
    draw_text(240, 50, ("Extracting " + string((timer / room_speed))))
}
if (can_exit == 0)
{
    if (point_distance(x, y, obj_player.x, obj_player.y) < 30)
    {
        draw_set_font(font0)
        draw_set_halign(fa_center)
        scr_draw_text_with_box((("Towards ZeroSievert. You need to wait " + string(round((alarm[0] / 60)))) + " seconds before exit"))
    }
}
