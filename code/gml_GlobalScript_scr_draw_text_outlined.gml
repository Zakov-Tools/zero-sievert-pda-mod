function scr_draw_text_outlined(argument0, argument1, argument2, argument3, argument4, argument5, argument6) //gml_Script_scr_draw_text_outlined
{
    var xx = argument0
    var yy = argument1
    var t = argument2
    var c1 = argument3
    var c2 = argument4
    var s = argument5
    var o = argument6
    draw_text_transformed_color((xx + o), yy, t, s, s, 0, c2, c2, c2, c2, 1)
    draw_text_transformed_color((xx - o), yy, t, s, s, 0, c2, c2, c2, c2, 1)
    draw_text_transformed_color((xx - o), (yy - o), t, s, s, 0, c2, c2, c2, c2, 1)
    draw_text_transformed_color((xx + o), (yy - o), t, s, s, 0, c2, c2, c2, c2, 1)
    draw_text_transformed_color((xx - o), (yy + o), t, s, s, 0, c2, c2, c2, c2, 1)
    draw_text_transformed_color((xx + o), (yy + o), t, s, s, 0, c2, c2, c2, c2, 1)
    draw_text_transformed_color(xx, (yy + o), t, s, s, 0, c2, c2, c2, c2, 1)
    draw_text_transformed_color(xx, (yy - o), t, s, s, 0, c2, c2, c2, c2, 1)
    draw_text_transformed_color(xx, yy, t, s, s, 0, c1, c1, c1, c1, 1)
    return;
}

