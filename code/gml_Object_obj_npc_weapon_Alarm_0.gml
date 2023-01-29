if instance_exists(follow_id)
{
    can_draw = 1
    var id_arma = follow_id.arma_now
    my_id = id_arma
    if (follow_id.arma_moddable[id_arma] == 1)
    {
        mod_id[(0 << 0)] = arma_mod_id[id_arma][(0 << 0)]
        mod_id[(1 << 0)] = arma_mod_id[id_arma][(1 << 0)]
        mod_id[(3 << 0)] = arma_mod_id[id_arma][(3 << 0)]
        mod_id[(2 << 0)] = arma_mod_id[id_arma][(2 << 0)]
        mod_id[(5 << 0)] = arma_mod_id[id_arma][(5 << 0)]
        mod_id[(4 << 0)] = arma_mod_id[id_arma][(4 << 0)]
        mod_id[(7 << 0)] = arma_mod_id[id_arma][(7 << 0)]
        mod_id[(8 << 0)] = arma_mod_id[id_arma][(8 << 0)]
        mod_id[(9 << 0)] = arma_mod_id[id_arma][(9 << 0)]
        mod_id[(10 << 0)] = arma_mod_id[id_arma][(10 << 0)]
    }
}
