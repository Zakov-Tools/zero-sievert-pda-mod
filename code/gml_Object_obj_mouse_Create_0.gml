lista_item()
item_id_dragged = -1
item_id_show = item_id_dragged
dragging = 0
prev_x = 0
prev_y = 0
prev_position = 0
click_offsetx = 0
click_offsety = 0
linea_libera_gun_mouse = 0
image_speed = 0
image_index = 0
min_distance_id = 0
inv_slot = 0
check_positionx[inv_slot] = 200
check_positiony[inv_slot] = 31
inv_slot++
check_positionx[inv_slot] = 200
check_positiony[inv_slot] = 76
inv_slot++
check_positionx[inv_slot] = 248
check_positiony[inv_slot] = 119
inv_slot++
check_positionx[inv_slot] = 200
check_positiony[inv_slot] = 119
inv_slot++
check_positionx[inv_slot] = 224
check_positiony[inv_slot] = 162
inv_slot++
check_positionx[inv_slot] = 179
check_positiony[inv_slot] = 223
inv_slot++
check_positionx[inv_slot] = 200
check_positiony[inv_slot] = 223
inv_slot++
check_positionx[inv_slot] = 242
check_positiony[inv_slot] = 223
inv_slot++
check_positionx[inv_slot] = 221
check_positiony[inv_slot] = 223
inv_slot++
check_positionx[inv_slot] = 263
check_positiony[inv_slot] = 223
inv_slot++
check_positionx[inv_slot] = 284
check_positiony[inv_slot] = 223
inv_slot_equip = (inv_slot + 1)
for (var xx = 0; xx < 8; xx++)
{
    for (var yy = 0; yy < 11; yy++)
    {
        inv_slot++
        check_positionx[inv_slot] = (41 + (xx * 16))
        check_positiony[inv_slot] = (63 + (yy * 16))
    }
}
for (xx = 0; xx < 8; xx++)
{
    for (yy = 0; yy < 11; yy++)
    {
        inv_slot++
        check_positionx[inv_slot] = (312 + (xx * 16))
        check_positiony[inv_slot] = (63 + (yy * 16))
    }
}
inv_slot_inv_and_loot = inv_slot
for (xx = 0; xx < 6; xx++)
{
    for (yy = 0; yy < 5; yy++)
    {
        inv_slot++
        check_positionx[inv_slot] = (192 + (xx * 16))
        check_positiony[inv_slot] = (160 + (yy * 16))
    }
}
for (xx = 0; xx < 6; xx++)
{
    for (yy = 0; yy < 5; yy++)
    {
        inv_slot++
        check_positionx[inv_slot] = (192 + (xx * 16))
        check_positiony[inv_slot] = (64 + (yy * 16))
    }
}
inv_slot_trading = inv_slot
