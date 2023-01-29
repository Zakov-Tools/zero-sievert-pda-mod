if (arma_moddable[my_id] == 1)
{
    if (mod_id[(3 << 0)] != -1)
    {
        var bx = arma_mod_x[my_id][(3 << 0)]
        var by = arma_mod_y[my_id][(3 << 0)]
        var get_barrel_id = mod_id[(3 << 0)]
        var bl = (mod_barrel_length[get_barrel_id] + 1)
        brake_x = ((bx + bl) - 1)
        brake_y = by
    }
    else if (arma_mod_moddable[my_id][(3 << 0)] == 0)
    {
        brake_x = arma_mod_x[my_id][(5 << 0)]
        brake_y = arma_mod_y[my_id][(5 << 0)]
    }
}
can_draw = 1
