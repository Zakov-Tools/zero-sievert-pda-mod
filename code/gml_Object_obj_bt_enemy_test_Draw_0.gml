draw_self()
var i = 0
draw_set_font(font0)
draw_set_halign(fa_center)
draw_set_valign(fa_top)
var _name_node_now = global.node_name[tree_id[node_running_now]]
draw_text(x, ((y - 24) - (14 * i)), _name_node_now)
