with (obj_green_quest_swamp_leader)
    scr_draw_npc_text(id, (68 << 0))
var o = 22
var quest_amount = 30
for (var j = 0; j < quest_amount; j++)
{
    var quest_id_ = global.save_quest_id[j]
    if (quest_id_ == (47 << 0))
    {
        global.save_quest_amount_now[j][0] = 1
        obj_controller.alarm[1] = 1
        scr_draw_text_with_box("Task completed")
    }
}
