display_set_gui_size(480, 270)
var camx = camera_get_view_x(view_camera[0])
var camy = camera_get_view_y(view_camera[0])
draw_sprite_ext(s_particles_1px, 0, -1, -1, 482, 272, 0, c_black, a)
if (a >= 1)
{
    var sw = sprite_get_width(s_hud_exp_bar)
    var sh = sprite_get_height(s_hud_exp_bar)
    var xx = (240 - (sw / 2))
    var yy = 90
    var c_glow = 0x006E0B
    if (survived == 0)
        c_glow = c_red
    for (var i = 0; i < ((sw / 10) + 1); i++)
        draw_sprite_ext(s_glow_256x256, 0, (xx + (10 * i)), (yy + (sh / 2)), 0.5, 0.5, 0, c_glow, 0.25)
    draw_set_font(font0)
    draw_set_halign(fa_center)
    draw_set_valign(fa_middle)
    xx = 240
    yy = 35
    var t = "survived"
    var c1 = c_lime
    var c2 = c_black
    if (survived == 0)
    {
        t = "killed in action"
        c1 = c_red
    }
    scr_draw_text_outlined(xx, yy, t, c1, c2, 3, 3)
    draw_set_halign(fa_left)
    t = ("+" + string(round(exp_numero)))
    c1 = c_lime
    c2 = c_black
    if (survived == 0)
        c1 = c_red
    yy = 55
    scr_draw_text_outlined((xx - 18), yy, t, c1, c2, 2, 2)
    t = "experience"
    draw_set_halign(fa_center)
    c1 = c_white
    c2 = c_black
    yy = 80
    scr_draw_text_outlined(xx, yy, t, c1, c2, 1, 1)
    sw = sprite_get_width(s_hud_exp_bar)
    sh = sprite_get_height(s_hud_exp_bar)
    xx = (240 - (sw / 2))
    yy = 90
    draw_set_font(font0)
    draw_set_valign(fa_top)
    draw_set_halign(fa_right)
    scr_draw_text_outlined((xx - 2), (yy - 6), string(global.livello_now), c_white, c_black, 2, 2)
    draw_set_halign(fa_left)
    scr_draw_text_outlined(((xx + sw) + 2), (yy - 6), string((global.livello_now + 1)), c_white, c_black, 2, 2)
    var exp_da_livello = (global.esperienza - global.esperienza_livello[global.livello_now])
    var exp_da_livello_survived = ((global.esperienza + global.esperienza_survive) - global.esperienza_livello[global.livello_now])
    var exp_da_livello_succ = (global.esperienza_livello[(global.livello_now + 1)] - global.esperienza_livello[global.livello_now])
    var rect_esp_x = ((exp_da_livello * (sw - 6)) / exp_da_livello_succ)
    draw_rectangle_color((xx + 3), (yy + 2), (xx + rect_esp_x), ((yy + sh) - 4), c_white, c_white, c_white, c_white, 0)
    draw_sprite(s_hud_exp_bar, 0, xx, yy)
    draw_set_halign(fa_left)
    scr_draw_text_outlined(xx, ((yy + sh) + 1), ("current :" + string(floor(global.esperienza))), c_white, c_black, 1, 1)
    draw_set_halign(fa_right)
    scr_draw_text_outlined((xx + sw), ((yy + sh) + 1), ("next level :" + string(floor(global.esperienza_livello[(global.livello_now + 1)]))), c_white, c_black, 1, 1)
    draw_set_halign(fa_center)
    draw_set_valign(fa_middle)
    c1 = c_white
    c2 = c_black
    var text_next = "next"
    if (can_go_hub == 0)
        text_next = "skip"
    if (button_next_hover == 0)
    {
        for (i = 0; i < ((button_next_w / 8) + 1); i++)
            draw_sprite_ext(s_glow_256x256, 0, ((button_next_x - (button_next_w / 2)) + (8 * i)), button_next_y, 0.25, 0.25, 0, 0x3D3D3D, 0.25)
        draw_text_transformed_color(button_next_x, button_next_y, text_next, 2, 2, 0, c1, c1, c1, c1, 1)
    }
    else
    {
        for (i = 0; i < ((button_next_w / 8) + 1); i++)
            draw_sprite_ext(s_glow_256x256, 0, ((button_next_x - (button_next_w / 2)) + (8 * i)), button_next_y, 0.25, 0.25, 0, c_white, 0.25)
        draw_text_transformed_color(button_next_x, button_next_y, text_next, 2, 2, 0, c2, c2, c2, c2, 1)
    }
    if (survived == 1)
    {
        draw_set_font(font0)
        draw_set_valign(fa_middle)
        draw_set_halign(fa_center)
        var _t = ("Approx roubles made: " + string(round((global.tot_inv_value_then - global.tot_inv_value_now))))
        draw_text_color(240, 150, _t, c_white, c_white, c_white, c_white, 1)
    }
    if (survived == 0)
    {
        draw_set_font(font0)
        draw_set_valign(fa_middle)
        draw_set_halign(fa_center)
        if (global.who_killed_player_name != -4)
        {
            var _killer_name = global.who_killed_player_name
            _t = ("Killed by: " + _killer_name)
            draw_text_color(240, 150, _t, c_white, c_white, c_white, c_white, 1)
        }
    }
    draw_sprite(s_mouse, 4, (mouse_x - camx), (mouse_y - camy))
}
