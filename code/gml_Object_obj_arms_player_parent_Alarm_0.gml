switch sprite_index
{
    case s_arms_smoke:
        counter_max = 4
        break
    case 32:
        counter_max = 3
        break
    case 33:
        counter_max = 1
        break
    case 34:
        counter_max = 4
        break
    case 35:
        counter_max = 3
        break
    case 36:
        counter_max = 2
        break
    case 37:
        counter_max = 1
        break
    case 38:
        counter_max = 1
        break
    case 39:
        counter_max = 1
        break
    case 42:
        counter_max = 1
        image_speed = (im_speed * global.sk_k[(28 << 0)])
        break
    case 43:
        counter_max = 4
        image_speed = (im_speed * global.sk_k[(28 << 0)])
        break
    case 45:
        counter_max = 4
        image_speed = (im_speed * global.sk_k[(28 << 0)])
        break
    case 46:
        counter_max = 6
        image_speed = (im_speed * global.sk_k[(28 << 0)])
        break
}

var o = obj_controller
audio_play_sound(o.consumable_sound[item_id], 6, false)
if (o.item_categoria[item_id] == (2 << 0))
    alarm[2] = (o.med_duration[item_id] / global.sk_k[(29 << 0)])
player_bleed = obj_player.bleed
