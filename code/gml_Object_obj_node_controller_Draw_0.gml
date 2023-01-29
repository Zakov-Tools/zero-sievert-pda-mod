if (over_node_id != noone)
{
    var _node_id = over_node_id.my_id
    var _name = global.node_name[_node_id]
    draw_set_font(font0)
    draw_set_halign(fa_center)
    draw_set_valign(fa_middle)
    draw_text(over_node_id.x, (over_node_id.y - 16), _name)
}
draw_sprite(s_mouse, 4, mouse_x, mouse_y)
