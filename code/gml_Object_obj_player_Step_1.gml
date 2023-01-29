if (item_categoria[arma_now] != (0 << 0))
    arma_now = (2 << 0)
for (var i = 0; i <= (24 << 0); i++)
{
    global.kb_pressed[i] = 0
    global.kb_hold[i] = 0
}
for (i = 0; i <= (24 << 0); i++)
{
    if (keyboard_check(global.kb_now[i]) || mouse_check_button(global.kb_now[i]))
        global.kb_hold[i] = 1
    if (keyboard_check_pressed(global.kb_now[i]) || mouse_check_button_pressed(global.kb_now[i]))
        global.kb_pressed[i] = 1
}
