if keyboard_check_pressed(vk_anykey)
    fade_start = 1
if mouse_check_button_pressed(mb_any)
    fade_start = 1
if (fade_start == 1)
    fade_alpha += fade_amount
if (fade_alpha >= 1)
    room_goto(r_menu)
