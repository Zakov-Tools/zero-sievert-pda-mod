depth = -9999
lista_item()
lista_npc()
timer_audio = 0
timer_audio_max = 60
a = 0
a_plus = 0.015
exp_agg = 0
exp_agg_start = 0
exp_agg_finish = 0
exp_agg_counter = 0
exp_agg_counter_max = 180
exp_bar_start = 0
alarm[0] = 180
alarm[3] = 1
exp_numero_start = 0
alarm[1] = 120
can_go_hub = 0
value_made_inraid = 0
survived = 1
factor_survived = 1
exp_agg_start = global.esperienza
global.esperienza_survive += (global.esperienza_loot + global.esperienza_kill)
exp_agg_finish = 0
exp_numero_max = 0
exp_numero = 0
button_next_hover = 0
button_next_w = 96
button_next_h = 24
button_next_x = 240
button_next_y = 225
skip_all = 0
skip_done = 0
ini_open(global.save_inventory)
global.tot_inv_value_then = 0
var number_of_items = ini_read_real("Inventory", "Number of items", 0)
if (number_of_items > 0)
{
    for (var i = 1; i <= number_of_items; i++)
    {
        var temp_item_id = ini_read_real("Inventory", ("Item_id_" + string(i)), 0)
        var temp_item_qnt = ini_read_real("Inventory", ("Item_qnt_" + string(i)), 0)
        var _value = ((item_value[temp_item_id] * temp_item_qnt) * 0.2)
        global.tot_inv_value_then += _value
        var _value_mods = 0
        if (obj_controller.arma_moddable[temp_item_id] == 1)
        {
            for (var j = 0; j < (10 << 0); j++)
            {
                var _id = ini_read_real("Inventory", ((("mod_" + string(j)) + "_") + string(i)), arma_mod_id[temp_item_id][j])
                if (_id != -1)
                {
                    var _value_mod = (item_value[_id] * 0.2)
                    _value_mods += _value_mod
                }
            }
        }
        global.tot_inv_value_then += _value_mods
    }
}
global.tot_inv_value_now = ini_read_real("inv_value", "now", 0)
ini_close()
value_made_inraid = (global.tot_inv_value_then - global.tot_inv_value_now)
