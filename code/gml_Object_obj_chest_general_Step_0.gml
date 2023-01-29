if (chest_from_enemy[tipo] == 1)
{
    if (y < 4800 && room == room1)
    {
        if (tipo != (52 << 0) && tipo != (51 << 0))
        {
            if (crow_spawned == 0)
            {
                if (current_time >= crow_timer_max)
                {
                    crow_spawned = 1
                    if scr_chance(50)
                    {
                        repeat (1)
                        {
                            var range = 300
                            var dir = irandom_range(45, 135)
                            var xx = (x + lengthdir_x(range, dir))
                            var yy = (y + lengthdir_y(range, dir))
                            var cc = instance_create_depth(xx, yy, 0, obj_enemy_crow)
                            cc.state = (73 << 0)
                            cc.move_point_x = (x + choose(-7, 7))
                            cc.move_point_y = (y + choose(-3, 3))
                        }
                    }
                }
            }
        }
    }
}
if (room != r_hub && room != room_tutorial)
{
    if (global.sk_k[(9 << 0)] == 0)
    {
        if collision_line(x, y, obj_player.x, obj_player.y, obj_solid, true, true)
        {
            timer_visible++
            if (timer_visible >= timer_visible_max)
                image_alpha -= (a_gain / 2)
        }
        else
            image_alpha += a_gain
        image_alpha = clamp(image_alpha, 0, 1)
    }
    else
        image_alpha = 1
}
