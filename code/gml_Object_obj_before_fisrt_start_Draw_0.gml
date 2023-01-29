draw_sprite_ext(s_16x16, 0, 0, 0, 30, 17, 0, c_black, 1)
draw_set_font(font_quest)
draw_set_halign(fa_center)
draw_set_valign(fa_top)
var t_ = "When the game has started press TAB to access the inventory and equip the backpack, otherwise you can not move.\nGo talk to the barman, he will explain how to proceed"
draw_text_ext(240, 110, t_, 11, 280)
draw_set_font(font0)
draw_text(240, 200, "- press any key to continue -")
