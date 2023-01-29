function scr_calcola_chance_reload() //gml_Script_scr_calcola_chance_reload
{
    var _ret = 0
    if (reloading == 0)
    {
        if (ammo_now < (arma_magazine[arma_now] * 0.3))
        {
            var chance = (100 - ((ammo_now * 100) / arma_magazine[arma_now]))
            if scr_chance(chance)
                _ret = 1
        }
    }
    return _ret;
}

