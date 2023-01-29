function scr_chest_loot_generic_1(argument0) //gml_Script_scr_chest_loot_generic_1
{
    var k = argument0
    i++
    chest_item[a][i] = (279 << 0)
    chest_item_rare[a][i] = (k * 30)
    i++
    chest_item[a][i] = (280 << 0)
    chest_item_rare[a][i] = (k * 10)
    i++
    chest_item[a][i] = (329 << 0)
    chest_item_rare[a][i] = (k * 27)
    i++
    chest_item[a][i] = (328 << 0)
    chest_item_rare[a][i] = (k * 40)
    i++
    chest_item[a][i] = (338 << 0)
    chest_item_rare[a][i] = (k * 15)
    i++
    chest_item[a][i] = (339 << 0)
    chest_item_rare[a][i] = (k * 40)
    return;
}

