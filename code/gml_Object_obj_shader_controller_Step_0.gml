if instance_exists(obj_player)
{
    x = obj_player.x
    y = obj_player.y
}
if (keyboard_check(vk_f3) && grain_amount < 1)
    grain_amount += 0.01
if (keyboard_check(vk_f4) && grain_amount > -1)
    grain_amount -= 0.01
if (keyboard_check(vk_f5) && brightness_amount < 1)
    brightness_amount += 0.01
if (keyboard_check(vk_f6) && brightness_amount > -1)
    brightness_amount -= 0.01
if (keyboard_check(vk_f7) && contrast_amount < 1)
    contrast_amount += 0.01
if (keyboard_check(vk_f8) && contrast_amount > -1)
    contrast_amount -= 0.01
if (keyboard_check(vk_f9) && gamma_amount < 3)
    gamma_amount += 0.01
if (keyboard_check(vk_f10) && gamma_amount > 0)
    gamma_amount -= 0.01
