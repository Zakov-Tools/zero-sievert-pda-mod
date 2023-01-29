if (text_id != -1)
{
    var text_list = ds_list_create()
    var text_quanti = array_length_2d(global.t_npc_text, text_id)
    for (var i = 0; i < text_quanti; i++)
        ds_list_add(text_list, global.t_npc_text[text_id][i])
    ds_list_shuffle(text_list)
    t = ds_list_find_value(text_list, 0)
}
