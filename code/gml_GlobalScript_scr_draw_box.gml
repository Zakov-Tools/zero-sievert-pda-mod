function scr_draw_box(argument0, argument1, argument2, argument3, argument4, argument5) //gml_Script_scr_draw_box
{
    var get_sprite = argument0
    var startx = argument1
    var starty = argument2
    var box_width = argument3
    var box_height = argument4
    var alpha_riempimento = argument5
    var bb = (sprite_get_width(get_sprite) / 3)
    draw_sprite_part(get_sprite, 0, 0, 0, bb, bb, (startx - bb), (starty - bb))
    draw_sprite_part(get_sprite, 0, (bb * 2), 0, bb, bb, (startx + box_width), (starty - bb))
    draw_sprite_part(get_sprite, 0, (bb * 2), (bb * 2), bb, bb, (startx + box_width), (starty + box_height))
    draw_sprite_part(get_sprite, 0, 0, (bb * 2), bb, bb, (startx - bb), (starty + box_height))
    draw_sprite_part_ext(get_sprite, 0, bb, 0, 1, bb, startx, (starty - bb), box_width, 1, c_white, 1)
    draw_sprite_part_ext(get_sprite, 0, (bb * 2), 4, bb, 1, (startx + box_width), starty, 1, box_height, c_white, 1)
    draw_sprite_part_ext(get_sprite, 0, bb, (bb * 2), 1, bb, startx, (starty + box_height), box_width, 1, c_white, 1)
    draw_sprite_part_ext(get_sprite, 0, 0, bb, bb, 1, (startx - bb), starty, 1, box_height, c_white, 1)
    draw_sprite_part_ext(get_sprite, 0, bb, bb, bb, bb, startx, starty, (box_width / bb), (box_height / bb), c_white, alpha_riempimento)
    return;
}

