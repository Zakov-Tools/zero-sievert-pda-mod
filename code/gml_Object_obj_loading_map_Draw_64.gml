display_set_gui_size(480, 270)
if (obj_map_generator.state != (19 << 0))
{
    var c1 = c_black
    draw_set_alpha(alpha_screen)
    draw_rectangle_color(0, 0, 480, 270, c1, c1, c1, c1, 0)
    draw_set_alpha(1)
    var bar_sprite = s_hud_loading_bar
    var step_max = (18 << 0)
    var step = obj_map_generator.state
    var barw = sprite_get_width(bar_sprite)
    var barh = sprite_get_height(bar_sprite)
    var barx = (240 - (barw / 2))
    var bary = 220
    var c2 = c_white
    var step_now = ((barw * step) / step_max)
    draw_rectangle_color(barx, bary, ((barx + step_now) - 1), ((bary + barh) - 1), c2, c2, c2, c2, 0)
    draw_sprite_ext(bar_sprite, 0, barx, bary, 1, 1, 0, c_white, 1)
    var t_ = ""
    switch obj_map_generator.state
    {
        case (0 << 0):
            t_ = "Generating tearrain"
            break
        case (1 << 0):
            t_ = "Generating railroad and road"
            break
        case (2 << 0):
            t_ = "Generating terrain variants"
            break
        case (3 << 0):
            t_ = "Autotiling of the road and railroad"
            break
        case (4 << 0):
            t_ = "Choosing train's stop position"
            break
        case (5 << 0):
            t_ = "General grid adjustment"
            break
        case (6 << 0):
            t_ = "Generating water"
            break
        case (7 << 0):
            t_ = "Autotiling of the terrain"
            break
        case (8 << 0):
            t_ = "Generating solid object"
            break
        case (9 << 0):
            t_ = "Placing building - may take a while"
            break
        case (10 << 0):
            t_ = "Placing building - may take a while"
            break
        case (11 << 0):
            t_ = "Generating enviroment"
            break
        case (12 << 0):
            t_ = "General adjustment"
            break
        case (13 << 0):
            t_ = "Generating dynamic grass"
            break
        case (14 << 0):
            t_ = "Generating shadows and minimap"
            break
        case (15 << 0):
            t_ = "Generate Dynamic NPC"
            break
        case (16 << 0):
            t_ = "Calculating dynamic NPC path"
            break
        case (17 << 0):
            t_ = "Almost ready"
            break
        case (18 << 0):
            break
    }

    draw_set_font(font_quest)
    draw_set_halign(fa_left)
    draw_set_valign(fa_middle)
    c2 = c_white
    draw_text_color(barx, 210, (t_ + "..."), c2, c2, c2, c2, 1)
    draw_set_font(font_quest)
    draw_set_halign(fa_center)
    draw_set_valign(fa_middle)
    c2 = c_white
    draw_text_ext_color(240, 150, global.suggerimento_text[tip], 11, 400, c2, c2, c2, c2, 1)
}
if (obj_map_generator.state == (18 << 0))
{
    draw_set_font(font_quest)
    draw_set_halign(fa_center)
    draw_set_valign(fa_middle)
    c2 = c_white
    draw_text_color(240, 67.5, "- Press any key to continue -", c2, c2, c2, c2, 1)
}
if (obj_map_generator.state == (19 << 0))
{
    c1 = c_black
    draw_set_alpha(alpha_screen)
    draw_rectangle_color(0, 0, 480, 270, c1, c1, c1, c1, 0)
    draw_set_alpha(1)
}
