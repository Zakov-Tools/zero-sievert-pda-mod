switch light_id
{
    case (13 << 0):
        light_sprite = 224
        scale_start = 1
        alpha_togliere = 0.25
        alpha_mettere = 0
        light_color = 16777215
        flickering_amount = 0
        flickering_range = 0
        break
    case (11 << 0):
        light_sprite = 222
        scale_start = 0.75
        alpha_togliere = 0.2
        alpha_mettere = 0.5
        light_color = 7844583
        flickering_amount = 0
        flickering_range = 0
        break
    case (17 << 0):
        light_sprite = 225
        scale_start = 0.5
        alpha_togliere = 0.2
        alpha_mettere = 0.5
        light_color = 7844583
        flickering_amount = 0
        flickering_range = 0
        break
    case (18 << 0):
        light_sprite = 219
        scale_start = 2
        alpha_togliere = 0.2
        alpha_mettere = 0.5
        light_color = 7844583
        flickering_amount = 0
        flickering_range = 0
        break
    case (16 << 0):
        light_sprite = 222
        scale_start = 0.75
        alpha_togliere = 0.2
        alpha_mettere = 0.5
        light_color = 7844583
        flickering_amount = 0
        flickering_range = 0
        break
    case (12 << 0):
        light_sprite = 222
        scale_start = 0.75
        alpha_togliere = 0.2
        alpha_mettere = 0.5
        light_color = 7844583
        flickering_amount = 0
        flickering_range = 0
        break
    case (0 << 0):
        light_sprite = 215
        scale_start = 1
        alpha_togliere = 0.5
        alpha_mettere = 0.5
        light_color = 7844583
        flickering_amount = 0.005
        flickering_range = 0.1
        break
    case (1 << 0):
        light_sprite = 215
        scale_start = 0.4
        alpha_togliere = 0.3
        alpha_mettere = 0.5
        light_color = 7844583
        alarm[1] = 4
        break
    case (2 << 0):
        light_sprite = 220
        scale_start = 0.25
        alpha_togliere = 0.3
        alpha_mettere = 0.9
        light_color = 6997759
        break
    case (3 << 0):
        light_sprite = 215
        scale_start = 1
        alpha_togliere = 0.3
        alpha_mettere = 0.2
        light_color = 7844583
        break
    case (5 << 0):
        light_sprite = 215
        scale_start = 0.5
        alpha_togliere = 0.4
        alpha_mettere = 0.9
        light_color = 7327743
        flickering_amount = 0.005
        flickering_range = 0.1
        break
    case (6 << 0):
        light_sprite = 215
        scale_start = 1
        alpha_togliere = 0.4
        alpha_mettere = 0.7
        light_color = 7327743
        flickering_amount = 0.01
        flickering_range = 0.15
        break
    case (7 << 0):
        light_sprite = 215
        scale_start = 0.5
        alpha_togliere = 0.4
        alpha_mettere = 0.9
        light_color = 16769165
        flickering_amount = 0.005
        flickering_range = 0.1
        break
    case (8 << 0):
        light_sprite = 215
        scale_start = 0.5
        alpha_togliere = 0.4
        alpha_mettere = 0.9
        light_color = 16769165
        flickering_amount = 0.005
        flickering_range = 0.1
        break
    case (9 << 0):
        light_sprite = 215
        scale_start = 0.2
        alpha_togliere = 0.3
        alpha_mettere = 0.4
        light_color = 16769165
        flickering_amount = 0.01
        flickering_range = 0
        break
    case (10 << 0):
        light_sprite = 223
        scale_start = 1
        alpha_togliere = 0.8
        alpha_mettere = 0.1
        light_color = 11009010
        flickering_amount = 0
        flickering_range = 0
        break
    case (14 << 0):
        light_sprite = 215
        scale_start = 2
        alpha_togliere = 0.8
        alpha_mettere = 0.7
        light_color = 16711912
        flickering_amount = 0
        flickering_range = 0
        break
    case (15 << 0):
        light_sprite = 215
        scale_start = 1
        alpha_togliere = 0.9
        alpha_mettere = 0.2
        light_color = 16777215
        flickering_amount = 0
        flickering_range = 0
        break
    case (19 << 0):
        light_sprite = 221
        scale_start = 1
        alpha_togliere = 1
        alpha_mettere = 0
        light_color = 16777215
        only_day = 1
        break
    case (20 << 0):
        light_sprite = 219
        scale_start = 1
        alpha_togliere = 1
        alpha_mettere = 1
        light_color = 0
        only_day = 1
        break
    case (21 << 0):
        light_sprite = 219
        scale_start = 1
        alpha_togliere = 0.8
        alpha_mettere = 1
        light_color = 65535
        break
}

scale = scale_start
