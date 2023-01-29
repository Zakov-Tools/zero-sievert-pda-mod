function scr_get_money_deal(argument0) //gml_Script_scr_get_money_deal
{
    var mine = argument0
    var deal = 0
    with (obj_item)
    {
        if (mine == 1)
        {
            if (position == (14 << 0))
            {
                var soldi_ = 0
                if (arma_moddable[my_id] == 1)
                    soldi_ += scr_get_money_weapon(id)
                deal += ((((((item_value[my_id] * durability) / 100) + soldi_) * qnt) * 0.2) * global.sk_k[(21 << 0)])
                deal = clamp(deal, 1, 99999999)
            }
        }
        if (mine == 0)
        {
            if (position == (13 << 0))
            {
                soldi_ = 0
                if (arma_moddable[my_id] == 1)
                    soldi_ += scr_get_money_weapon(id)
                deal += ((item_value[my_id] + soldi_) * qnt)
            }
        }
    }
    deal = floor(deal)
    return deal;
}

