if instance_exists(obj_player)
{
    x = obj_player.x
    y = obj_player.y
}
alpha += (alpha_amount * alpha_factor)
alpha = clamp(alpha, 0, 1)
if (alpha >= 0.7 && alpha <= 0.99)
    alarm[0] = 120
if (alpha_factor == -1 && alpha <= 0.01)
{
    var o = 22
    for (var i = 0; i < 30; i++)
    {
        var _quest_id = global.save_quest_id[i]
        if (_quest_id != -1)
        {
            if (_quest_id == (94 << 0))
            {
                global.save_quest_amount_now[i][0] = global.quest_amount_max[_quest_id][0]
                scr_draw_text_with_box("Task completed")
                obj_controller.alarm[1] = 1
            }
        }
    }
    scr_draw_npc_text(obj_player, (56 << 0))
    instance_destroy()
}
