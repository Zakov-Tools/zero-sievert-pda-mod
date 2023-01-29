function scr_draw_npc_text(argument0, argument1) //gml_Script_scr_draw_npc_text
{
    var id_ = argument0
    var text_ = argument1
    if instance_exists(obj_npc_draw_text)
    {
        with (obj_npc_draw_text)
        {
            if (id_npc == id_)
                instance_destroy()
        }
    }
    var dd = instance_create_depth(x, (y - 24), -9501, obj_npc_draw_text)
    dd.text_id = text_
    dd.id_npc = id_
    if instance_exists(id_)
        dd.id_che_parla = id_.id
    return;
}

