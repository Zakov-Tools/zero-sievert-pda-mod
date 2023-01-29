if instance_exists(obj_player)
{
    if (distance_to_object(obj_player) < 450)
    {
        if (already_looted == 0)
        {
            if (items_deleted == 0)
            {
                items_deleted = 1
                var _tempo_passato = (current_time - current_time_spawned)
                var _quante_volte = (_tempo_passato div time_to_delete_items)
                repeat _quante_volte
                {
                    ini_open("all_loot.ini")
                    var i = 0
                    if (i < quanti_item_effettivi)
                    {
                        if scr_chance(18)
                        {
                            ini_write_real(("chest_" + string(id)), ("item_id_N_" + string(i)), (0 << 0))
                            ini_write_real(("chest_" + string(id)), ("item_quantità_N_" + string(i)), 0)
                        }
                        for (i++; i < quanti_item_effettivi; i++)
                        {
                            if scr_chance(18)
                            {
                                ini_write_real(("chest_" + string(id)), ("item_id_N_" + string(i)), (0 << 0))
                                ini_write_real(("chest_" + string(id)), ("item_quantità_N_" + string(i)), 0)
                            }
                        }
                    }
                    ini_close()
                }
            }
        }
    }
}
alarm[10] = 30
