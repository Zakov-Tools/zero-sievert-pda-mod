if (global.quest_unique_done[(41 << 0)] == 1 && global.quest_unique_done[(94 << 0)] == 0)
{
    instance_destroy()
    instance_create_depth(x, y, 0, obj_letto_medic_persona_elicottero)
}
