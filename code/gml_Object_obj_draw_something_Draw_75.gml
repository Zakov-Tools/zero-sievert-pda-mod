display_set_gui_size(480, 270)
draw_set_font(font_quest)
draw_set_halign(fa_center)
draw_set_valign(fa_top)
var startx = draw_x
var starty = draw_y
scr_draw_box(s_box_testo_pop_up, startx, starty, bb_w, bb_h, 1)
draw_text((startx + (bb_w / 2)), (starty + 4), t)
