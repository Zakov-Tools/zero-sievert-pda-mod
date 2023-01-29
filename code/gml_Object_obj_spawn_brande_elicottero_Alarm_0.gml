if (global.quest_unique_done[(43 << 0)] == 1 && global.quest_unique_done[(94 << 0)] == 0)
{
    var _y = 1296
    instance_create_depth(544, _y, 0, obj_letto_branda_quest_elicottero)
    instance_create_depth(560, _y, 0, obj_letto_branda_quest_elicottero)
    instance_create_depth(576, _y, 0, obj_letto_branda_quest_elicottero)
    instance_create_depth(592, _y, 0, obj_letto_branda_quest_elicottero)
    instance_create_depth(608, _y, 0, obj_letto_branda_quest_elicottero)
    instance_create_depth(576, (_y + 10), 0, obj_green_army_branda_elicottero)
}
instance_destroy()
