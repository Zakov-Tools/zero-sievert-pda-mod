function scr_npc_create_animation(argument0) //gml_Script_scr_npc_create_animation
{
    var arms = argument0
    draw_weapon = 0
    var aa = instance_create_depth(x, y, 0, arms)
    aa.linked_id = id
    aa.image_xscale = image_xscale
    return;
}

