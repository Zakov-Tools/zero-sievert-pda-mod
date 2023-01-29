ammo_now = arma_magazine[arma_now]
reloading = 0
shooting = 0
need_reload_already_check = 0
if (mod_id[(4 << 0)] != -1)
{
    var _id = mod_id[(4 << 0)]
    ammo_now = mod_magazine_size[_id]
}
