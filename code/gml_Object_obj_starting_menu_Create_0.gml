fade_start = 0
fade_alpha = 0
fade_amount = 0.03
lista_item()
alarm[0] = 1
alarm[1] = 2
var _n_item = array_length_1d(item_id)
global.mod_weapons_name[_n_item] = ""
ini_open("Mod.ini")
global.open_game_first_time = ini_read_real("IMPORTANT", "DO NOT CHANGE THIS VALUE", 1)
if (global.open_game_first_time == 1)
{
    for (var i = 0; i < _n_item; i++)
    {
        var _item_id = item_id[i]
        if (item_categoria[_item_id] == (0 << 0))
        {
            if (arma_moddable[_item_id] == 1)
            {
                ini_write_string("Weapons name", item_name[_item_id], item_name[_item_id])
                global.mod_weapons_name[_item_id] = item_name[_item_id]
            }
        }
    }
    ini_write_real("IMPORTANT", "DO NOT CHANGE THIS VALUE", 0)
}
for (i = 0; i < _n_item; i++)
{
    _item_id = item_id[i]
    if (item_categoria[_item_id] == (0 << 0))
    {
        if (arma_moddable[_item_id] == 1)
            global.mod_weapons_name[_item_id] = ini_read_string("Weapons name", item_name[_item_id], item_name[_item_id])
    }
}
ini_close()
