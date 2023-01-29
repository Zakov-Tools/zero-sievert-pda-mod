function scr_assegna_item_a_pagina_trader(argument0) //gml_Script_scr_assegna_item_a_pagina_trader
{
    if (room == r_hub || room == room1)
    {
        var _trader_id = argument0
        for (var i = 0; i < array_length_2d(obj_controller.trader_item, _trader_id); i++)
        {
            var _id = obj_controller.trader_item[_trader_id][i]
            var _page = 0
            var _cat = obj_controller.item_categoria[_id]
            if (_cat == (2 << 0) || _cat == (9 << 0) || _cat == (3 << 0))
                _page = (0 << 0)
            if (_cat == (5 << 0) || _cat == (6 << 0) || _cat == (18 << 0))
                _page = (2 << 0)
            if (_cat == (4 << 0) || _cat == (7 << 0) || _cat == (8 << 0) || _cat == (16 << 0) || _cat == (12 << 0) || _cat == (13 << 0))
                _page = (1 << 0)
            if (_cat == (1 << 0))
                _page = (3 << 0)
            if (_cat == (0 << 0))
            {
                var _tipo = obj_controller.arma_type[_id]
                if (_tipo == (1 << 0) || _tipo == (2 << 0))
                    _page = (4 << 0)
                if (_tipo == (3 << 0))
                    _page = (6 << 0)
                if (_tipo == (0 << 0))
                    _page = (5 << 0)
                if (_tipo == (4 << 0) || _tipo == (5 << 0))
                    _page = (7 << 0)
            }
            if (_cat == (17 << 0))
            {
                _tipo = obj_controller.mod_type[_id]
                if (_tipo == (0 << 0) || _tipo == (3 << 0))
                    _page = (8 << 0)
                if (_tipo == (4 << 0))
                    _page = (9 << 0)
                if (_tipo == (1 << 0) || _tipo == (2 << 0))
                    _page = (10 << 0)
                if (_tipo == (7 << 0) || _tipo == (8 << 0) || _tipo == (9 << 0) || _tipo == (10 << 0) || _tipo == (6 << 0) || _tipo == (5 << 0))
                    _page = (11 << 0)
            }
            trader_page[_trader_id][i] = _page
        }
    }
    return;
}

