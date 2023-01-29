function scr_inv_delete_list() //gml_Script_scr_inv_delete_list
{
    if ds_exists(global.l_inv_id, 2)
        ds_list_destroy(global.l_inv_id)
    if ds_exists(global.l_inv_x, 2)
        ds_list_destroy(global.l_inv_x)
    if ds_exists(global.l_inv_y, 2)
        ds_list_destroy(global.l_inv_y)
    if ds_exists(global.l_inv_position, 2)
        ds_list_destroy(global.l_inv_position)
    if ds_exists(global.l_inv_qnt, 2)
        ds_list_destroy(global.l_inv_qnt)
    if ds_exists(global.l_inv_rotation, 2)
        ds_list_destroy(global.l_inv_rotation)
    if ds_exists(global.l_inv_dur, 2)
        ds_list_destroy(global.l_inv_dur)
    if ds_exists(global.l_inv_ammo, 2)
        ds_list_destroy(global.l_inv_ammo)
    return;
}

