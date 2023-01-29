for (var i = 0; i < array_length_1d(global.sl_id); i++)
{
    if (slot == global.sl_id[i])
    {
        if (global.sl_base_id[i] != -1)
            id_base = global.sl_base_id[i]
    }
}
if (id_base != -1)
{
    lvl_now = global.base_lvl[id_base]
    if (lvl_now != lvl_before)
    {
        lvl_before = lvl_now
        scr_destroy_base_decor()
        switch id_base
        {
            case (1 << 0):
                if (lvl_now == 1)
                {
                }
                if (lvl_now == 2)
                {
                }
                break
            case (2 << 0):
                if (lvl_now == 1)
                {
                    instance_create_depth(x, (y + 15), 0, obj_divano_1_giu)
                    instance_create_depth((x + 32), (y + 15), 0, obj_mobile_wood)
                    instance_create_depth((x + 0), (y + 47), 0, obj_letto)
                    instance_create_depth((x + 16), (y + 47), 0, obj_comodino_2)
                }
                if (lvl_now == 2)
                {
                    instance_create_depth((x + 32), (y + 15), 0, obj_mobile_basso_cassetti)
                    instance_create_depth((x + 24), (y + 47), 0, obj_table_small)
                    instance_create_depth((x + 7), (y + 46), 0, obj_poltrona_1_dx)
                    instance_create_depth((x + 3), (y + 15), 0, obj_letto_2)
                }
                break
            case (4 << 0):
                if (lvl_now == 1)
                {
                    instance_create_depth((x + 16), (y + 15), 0, obj_lavello)
                    instance_create_depth((x + 24), (y + 47), 0, obj_table_small)
                    instance_create_depth((x + 18), (y + 43), 0, obj_chair_dx)
                    instance_create_depth((x + 36), (y + 45), 0, obj_chair_sx)
                }
                if (lvl_now == 2)
                {
                    instance_create_depth((x + 24), (y + 37), 0, obj_chair_giu)
                    instance_create_depth((x + 33), (y + 43), 0, obj_chair_sx)
                    instance_create_depth((x + 15), (y + 45), 0, obj_chair_dx)
                    instance_create_depth((x + 24), (y + 47), 0, obj_table_small)
                    instance_create_depth((x + 32), (y + 15), 0, obj_frigo)
                    instance_create_depth((x + 16), (y + 15), 0, obj_lavello)
                    instance_create_depth((x + 0), (y + 15), 0, obj_piano_cottura)
                }
                break
            case (0 << 0):
                if (lvl_now == 1)
                {
                    instance_create_depth((x + 27), (y + 21), 0, obj_infirmary_decor)
                    instance_create_depth((x + 20), (y + 45), 0, obj_infirmary_decor)
                    instance_create_depth((x + 0), (y + 47), 0, obj_letto_medic_vuoto)
                    instance_create_depth((x + 0), (y + 15), 0, obj_infirmary_table_1)
                }
                if (lvl_now == 2)
                {
                    instance_create_depth((x + 23), (y + 25), 0, obj_chair_work)
                    instance_create_depth((x + 32), (y + 15), 0, obj_pulsanti_small)
                    instance_create_depth((x + 0), (y + 47), 0, obj_comodino_medic)
                    instance_create_depth((x + 44), (y + 27), 0, obj_infirmary_decor)
                    instance_create_depth((x + 35), (y + 44), 0, obj_infirmary_decor)
                    instance_create_depth((x + 0), (y + 15), 0, obj_infirmary_table_1)
                    instance_create_depth((x + 16), (y + 47), 0, obj_letto_medic_vuoto)
                }
                break
            case (3 << 0):
                if (lvl_now == 1)
                {
                    instance_create_depth((x + 32), (y + 31), 0, obj_pulsanti_small)
                    instance_create_depth((x + 7), (y + 39), 0, obj_chair_work)
                    instance_create_depth((x + 0), (y + 31), 0, obj_radio_desk)
                }
                if (lvl_now == 2)
                {
                    instance_create_depth((x + 18), (y + 34), 0, obj_chair_office_su)
                    instance_create_depth((x + 10), (y + 26), 0, obj_radio_desk)
                    instance_create_depth((x + 32), (y + 15), 0, obj_pulsanti_small)
                    instance_create_depth((x + 0), (y + 15), 0, obj_pulsanti_big)
                }
                break
            case (5 << 0):
                if (lvl_now == 1)
                {
                    instance_create_depth((x + 42), (y + 27), 0, obj_chair_work)
                    instance_create_depth((x + 37), (y + 13), 0, obj_chair_work)
                    instance_create_depth((x + 0), (y + 39), 0, obj_recycling_bin)
                    instance_create_depth((x + 0), (y + 31), 0, obj_recycling_table)
                }
                if (lvl_now == 2)
                {
                    instance_create_depth((x + 8), (y + 34), 0, obj_chair_work)
                    instance_create_depth((x + 24), (y + 29), 0, obj_chair_office_su)
                    instance_create_depth((x + 16), (y + 24), 0, obj_table_work_small_h)
                    instance_create_depth((x + 12), (y + 15), 0, obj_recycling_bin)
                    instance_create_depth((x + 12), (y + 9), 0, obj_recycling_bin)
                    instance_create_depth((x + 40), (y + 47), 0, obj_scaffale_work_v)
                }
                break
            case (6 << 0):
                if (lvl_now == 1)
                {
                    instance_create_depth((x + 13), (y + 44), 0, obj_gym_attrezzo_3)
                    instance_create_depth((x + 7), (y + 40), 0, obj_gym_attrezzo_3)
                    instance_create_depth((x + 13), (y + 36), 0, obj_gym_attrezzo_3)
                    instance_create_depth((x + 36), (y + 37), 0, obj_gym_attrezzo_2)
                    instance_create_depth((x + 41), (y + 44), 0, obj_gym_attrezzo_2)
                }
                if (lvl_now == 2)
                {
                    instance_create_depth((x + 16), (y + 46), 0, obj_gym_attrezzo_3)
                    instance_create_depth((x + 43), (y + 48), 0, obj_gym_attrezzo_2)
                    instance_create_depth((x + 35), (y + 44), 0, obj_gym_attrezzo_2)
                    instance_create_depth((x + 42), (y + 40), 0, obj_gym_attrezzo_2)
                    instance_create_depth((x + 10), (y + 11), 0, obj_gym_attrezzo_2)
                    instance_create_depth((x + 4), (y + 6), 0, obj_gym_attrezzo_2)
                    instance_create_depth((x + 15), (y + 22), 0, obj_gym_attrezzo_3)
                    instance_create_depth((x + 9), (y + 27), 0, obj_gym_attrezzo_3)
                    instance_create_depth((x + 36), (y + 18), 0, obj_gym_attrezzo_1)
                }
                break
            case (7 << 0):
                if (lvl_now == 1)
                {
                    instance_create_depth((x + 16), (y + 40), 0, obj_shooting_table)
                    instance_create_depth((x + 23), (y + 12), 0, obj_shooting_target_1)
                }
                if (lvl_now == 2)
                {
                    instance_create_depth((x + 16), (y + 28), 0, obj_shooting_target_2)
                    instance_create_depth((x + 26), (y + 16), 0, obj_shooting_target_2)
                    instance_create_depth((x + 7), (y + 11), 0, obj_shooting_target_2)
                    instance_create_depth((x + 32), (y + 40), 0, obj_shooting_locket)
                    instance_create_depth((x + 0), (y + 40), 0, obj_shooting_table)
                }
                break
            case (8 << 0):
                if (lvl_now == 1)
                {
                    instance_create_depth((x + 17), (y + 45), 0, obj_chair_work)
                    instance_create_depth((x + 16), (y + 15), 0, obj_forge_table_h)
                    instance_create_depth((x + 37), (y + 47), 0, obj_forge_incudine)
                }
                if (lvl_now == 2)
                {
                    instance_create_depth((x + 21), (y + 26), 0, obj_chair_work)
                    instance_create_depth((x + 42), (y + 21), 0, obj_chair_work)
                    instance_create_depth((x + 6), (y + 46), 0, obj_forge_incudine)
                    instance_create_depth((x + 0), (y + 31), 0, obj_forge_table_v)
                    instance_create_depth((x + 16), (y + 15), 0, obj_forge_table_h)
                }
                break
            case (9 << 0):
                if (lvl_now == 1)
                {
                    instance_create_depth((x + 40), (y + 38), 0, obj_table_small)
                    instance_create_depth((x + 8), (y + 15), 0, obj_table_small)
                    instance_create_depth((x + 24), (y + 10), 0, obj_poltrona_1_giu)
                    instance_create_depth((x + 40), (y + 10), 0, obj_poltrona_1_giu)
                    instance_create_depth((x + 0), (y + 47), 0, obj_divano_1_dx)
                }
                if (lvl_now == 2)
                {
                    instance_create_depth((x + 40), (y + 38), 0, obj_table_small)
                    instance_create_depth((x + 8), (y + 15), 0, obj_table_small)
                    instance_create_depth((x + 24), (y + 10), 0, obj_poltrona_1_giu)
                    instance_create_depth((x + 40), (y + 10), 0, obj_poltrona_1_giu)
                    instance_create_depth((x + 0), (y + 47), 0, obj_divano_1_dx)
                }
                break
            case (10 << 0):
                if (lvl_now == 1)
                {
                    instance_create_depth((x + 0), (y + 31), 0, obj_garden_1_sopra)
                    instance_create_depth((x + 0), (y + 47), 0, obj_garden_1_sotto)
                }
                if (lvl_now == 2)
                {
                    instance_create_depth((x + 17), (y + 26), 0, obj_forcone)
                    instance_create_depth((x + 23), (y + 45), 0, obj_innaffiatore)
                    instance_create_depth((x + 37), (y + 36), 0, obj_innaffiatore)
                    instance_create_depth((x + 32), (y + 31), 0, obj_cassa_water)
                    instance_create_depth((x + 32), (y + 22), 0, obj_cassa_water)
                    instance_create_depth((x + 32), (y + 13), 0, obj_cassa_water)
                    instance_create_depth((x + 10), (y + 39), 0, obj_forcone)
                    instance_create_depth((x + 0), (y + 31), 0, obj_garden_1_sotto)
                    instance_create_depth((x + 0), (y + 15), 0, obj_garden_1_sopra)
                }
                break
            case (11 << 0):
                if (lvl_now == 1)
                {
                    instance_create_depth((x + 29), (y + 44), 0, obj_chair_work)
                    instance_create_depth((x + 32), (y + 47), 0, obj_ammo_table)
                }
                if (lvl_now == 2)
                {
                    instance_create_depth((x + 29), (y + 44), 0, obj_chair_work)
                    instance_create_depth((x + 32), (y + 47), 0, obj_ammo_table)
                    instance_create_depth((x + 0), (y + 31), 0, obj_ammo_maker)
                }
                break
            case (12 << 0):
                if (lvl_now == 1)
                {
                    instance_create_depth((x + 9), (y + 31), 0, obj_workshop_1)
                    instance_create_depth((x + 17), (y + 40), 0, obj_chair_work)
                }
                if (lvl_now == 2)
                {
                    instance_create_depth((x + 11), (y + 40), 0, obj_chair_work)
                    instance_create_depth((x + 32), (y + 47), 0, obj_workshop_2_sotto)
                    instance_create_depth((x + 0), (y + 31), 0, obj_workshop_2_sopra)
                }
                break
        }

    }
}
else
{
    scr_destroy_base_decor()
    lvl_now = 0
    lvl_before = 0
}
