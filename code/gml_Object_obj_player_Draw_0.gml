var rot = point_direction(x, y, mouse_x, mouse_y)
var offsetx_arma = 0
var offsety_arma = 0
var offset_arma = 2
var run_offset_arma = 0
var offset_backpack = 0
if (item_categoria[arma_now] == (0 << 0))
{
    if (alarm[1] >= (arma_rate_of_fire[arma_now] - 2))
    {
        offsetx_arma = (-(lengthdir_x(offset_arma, rot)))
        offsety_arma = (-(lengthdir_y(offset_arma, rot)))
    }
    else
        weapon_pointing_direction = point_direction(x, y, mouse_x, mouse_y)
}
draw_sprite_ext(s_shadow, 0, x, (y + 8), 1, 1, 0, c_black, 0.5)
if (hit_shader == 1)
    shader_set(shd_flash_hit)
if (state == gml_Script_scr_player_state_move)
{
    scr_draw_laser((7 << 0))
    scr_draw_laser((8 << 0))
    scr_draw_laser((9 << 0))
    scr_draw_laser((10 << 0))
}
if (state != gml_Script_scr_player_weapon_look)
{
    if (x > mouse_x)
    {
        image_xscale = -1
        rot = (weapon_pointing_direction + 180)
        if (global.backpack_equipped == 1 && backpack_now != (0 << 0))
        {
            var s_back = backpack_sprite_game[backpack_now]
            if ((!akey) && (!skey) && (!dkey) && (!wkey))
            {
                if (image_index > 1)
                    offset_backpack = 1
                else
                    offset_backpack = 0
            }
            else if (image_index > 2)
                offset_backpack = 1
            else
                offset_backpack = 0
            draw_sprite_ext(s_back, 0, x, (y + offset_backpack), image_xscale, 1, 0, c_white, 1)
        }
        if (draw_weapon == 1)
        {
        }
        draw_self()
    }
    else
    {
        image_xscale = 1
        rot = weapon_pointing_direction
        if (global.backpack_equipped == 1 && backpack_now != (0 << 0))
        {
            s_back = backpack_sprite_game[backpack_now]
            if ((!akey) && (!skey) && (!dkey) && (!wkey))
            {
                if (image_index > 1)
                    offset_backpack = 1
                else
                    offset_backpack = 0
            }
            else if (image_index > 2)
                offset_backpack = 1
            else
                offset_backpack = 0
            draw_sprite_ext(s_back, 0, x, (y + offset_backpack), image_xscale, 1, 0, c_white, 1)
        }
        draw_self()
        if (draw_weapon == 1)
        {
        }
    }
}
else
{
    image_xscale = 1
    image_index = 0
    if (global.backpack_equipped == 1 && backpack_now != (0 << 0))
    {
        s_back = backpack_sprite_game[backpack_now]
        draw_sprite_ext(s_back, 0, x, y, image_xscale, 1, 0, c_white, 1)
    }
    draw_self()
}
shader_reset()
