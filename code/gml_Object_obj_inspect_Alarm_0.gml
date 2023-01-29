start = 1
if (item_categoria[quale_item] == (3 << 0) || item_categoria[quale_item] == (2 << 0) || item_categoria[quale_item] == (7 << 0) || item_categoria[quale_item] == (8 << 0) || item_categoria[quale_item] == (9 << 0) || item_categoria[quale_item] == (12 << 0) || item_categoria[quale_item] == (15 << 0) || item_categoria[quale_item] == (13 << 0) || item_categoria[quale_item] == (11 << 0))
    ds_list_add(list_menu, (0 << 0))
if (quale_item == (663 << 0))
    ds_list_add(list_menu, (0 << 0))
if (item_scrap[quale_item] != (0 << 0))
{
    if (room == r_hub)
        ds_list_add(list_menu, (2 << 0))
}
if (item_categoria[quale_item] == (0 << 0))
{
    if (object_id.position != (1 << 0) && object_id.position != (2 << 0))
        ds_list_add(list_menu, (1 << 0))
}
if (ds_list_size(list_menu) == 0)
    instance_destroy()
if (item_categoria[quale_item] == (3 << 0))
    action_name[(0 << 0)] = "Consume"
