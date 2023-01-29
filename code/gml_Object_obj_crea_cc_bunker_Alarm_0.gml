if (global.az_done[(13 << 0)] == 1)
{
    instance_create_depth((x + 0), (y + 27), 0, obj_crimson_traders)
    instance_create_depth((x + 32), (y + 11), 0, obj_cassa_armi_4)
    instance_create_depth((x + 16), (y + 11), 0, obj_cassa_armi_4)
    instance_create_depth((x + 0), (y + 11), 0, obj_cassa_armi_3)
    instance_create_depth((x + 32), (y + 12), 0, obj_solid)
    instance_create_depth((x + 16), (y + 12), 0, obj_solid)
    instance_create_depth((x + 0), (y + 12), 0, obj_solid)
    instance_create_depth((x + 24), (y + 27), 0, obj_crimson_trader_bunker)
}
instance_destroy()
