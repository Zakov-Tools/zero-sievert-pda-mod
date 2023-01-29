if (room == r_menu)
{
    if (arma_moddable[my_id] == 1)
    {
        mod_id[(0 << 0)] = arma_mod_id[my_id][(0 << 0)]
        mod_id[(1 << 0)] = arma_mod_id[my_id][(1 << 0)]
        mod_id[(3 << 0)] = arma_mod_id[my_id][(3 << 0)]
        mod_id[(2 << 0)] = arma_mod_id[my_id][(2 << 0)]
        mod_id[(5 << 0)] = arma_mod_id[my_id][(5 << 0)]
        mod_id[(6 << 0)] = arma_mod_id[my_id][(6 << 0)]
        mod_id[(4 << 0)] = arma_mod_id[my_id][(4 << 0)]
        mod_id[(7 << 0)] = -1
        mod_id[(8 << 0)] = -1
        mod_id[(9 << 0)] = -1
        mod_id[(10 << 0)] = -1
    }
}
if (room == r_hub)
{
    if (obj_player.state == gml_Script_scr_player_show_quest)
    {
        if (arma_moddable[my_id] == 1)
        {
            mod_id[(0 << 0)] = arma_mod_id[my_id][(0 << 0)]
            mod_id[(1 << 0)] = arma_mod_id[my_id][(1 << 0)]
            mod_id[(3 << 0)] = arma_mod_id[my_id][(3 << 0)]
            mod_id[(2 << 0)] = arma_mod_id[my_id][(2 << 0)]
            mod_id[(5 << 0)] = arma_mod_id[my_id][(5 << 0)]
            mod_id[(6 << 0)] = arma_mod_id[my_id][(6 << 0)]
            mod_id[(4 << 0)] = arma_mod_id[my_id][(4 << 0)]
            mod_id[(7 << 0)] = -1
            mod_id[(8 << 0)] = -1
            mod_id[(9 << 0)] = -1
            mod_id[(10 << 0)] = -1
        }
    }
}
