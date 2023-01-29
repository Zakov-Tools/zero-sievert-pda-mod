function scr_draw_minimap_cirle(argument0, argument1) //gml_Script_scr_draw_minimap_cirle
{
    var xx = argument0
    var yy = argument1
    var rr = sprite_get_width(s_minimap_circle)
    var dis = irandom((rr div 2))
    var dir = irandom(360)
    var x1 = lengthdir_x(dis, dir)
    var y1 = lengthdir_y(dis, dir)
    draw_sprite(s_minimap_circle, 0, (xx + x1), (yy + y1))
    return;
}

