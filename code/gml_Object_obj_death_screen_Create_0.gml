step_to_black = 150
alpha_gain = (1 / step_to_black)
a = 0
show_text = 0
alarm[0] = step_to_black
audio_group_set_gain(1, 0, ((step_to_black / 60) * 1000))
audio_group_set_gain(6, 0, ((step_to_black / 60) * 1000))
button_x = 240
button_y = 180
button_w = 100
button_h = 20
mouse_in_the_button = 0
