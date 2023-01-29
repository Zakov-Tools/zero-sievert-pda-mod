if (state != prev_state)
    can_talk = 1
prev_state = state
var im = s_vuoto
var ims = 0
if (xprevious != x || yprevious != y)
{
    im = npc_sprite_move[npc_id]
    ims = npc_ims_move[npc_id]
    walk_time++
    var dis_da_step_prima = point_distance(x, y, xprevious, yprevious)
    if (dis_da_step_prima >= 1.1)
        walk_time += dis_da_step_prima
    if (walk_time >= walk_time_max)
    {
        walk_time = 0
        scr_choose_footstep_sound(npc_footstep_sound[npc_id])
    }
}
if (xprevious == x && yprevious == y)
{
    im = npc_sprite_idle[npc_id]
    ims = npc_ims_idle[npc_id]
}
if (state == (16 << 0) || state == (14 << 0) || state == (29 << 0) || state == (28 << 0) || human_state_now == (16 << 0) || human_state_now == (18 << 0) || human_state_now == (12 << 0) || human_state_now == (15 << 0))
{
    if (x != xprevious)
    {
        var dir = point_direction(xprevious, yprevious, x, y)
        weapon_pointing_direction = dir
        target_for_image_scale = (x + lengthdir_x(2, weapon_pointing_direction))
    }
}
if (human_state_now == (29 << 0))
{
    target_for_image_scale = (x + 10)
    weapon_pointing_direction = 0
}
if (state == (65 << 0))
{
    im = s_rabbit_idle2
    ims = 0.5
}
if (state == (53 << 0))
{
    im = s_enemy_wolf_brown_attack
    ims = 1
}
if (state == (54 << 0))
{
    im = s_enemy_wolf_brown_attack2
    ims = 1
}
if (state == (56 << 0))
{
    im = s_ghoul_attack1
    ims = 1
}
if (state == (57 << 0))
{
    im = s_big_aggro
    ims = 0.5
}
if (state == (58 << 0))
{
    im = s_big_ruggito
    ims = 1
}
if (state == (59 << 0))
{
    im = s_big_attack1
    ims = 0.5
}
if (state == (55 << 0))
{
    im = s_blink_attack1
    ims = 1.2
}
if (state == (43 << 0))
{
    im = s_lupo_idle2
    ims = 0.4
}
if (state == (45 << 0))
{
    im = s_lupo_eat
    ims = 0.5
}
if (state == (46 << 0))
{
    im = s_lupo_sleep
    ims = 0.25
}
if (state == (47 << 0))
{
    im = s_lupo_ringhio
    ims = 1.1
}
if (state == (49 << 0))
{
    im = s_lupo_a1
    ims = 1
}
if (state == (50 << 0))
{
    im = s_lupo_a2
    ims = 1
}
if (state == (52 << 0))
{
    im = s_lupo_ululato
    ims = 1
}
if (state == (40 << 0))
{
    im = s_enemy_cinghiale_raspare
    ims = 1
}
if (sprite_before != im)
    image_index = 0
sprite_index = im
image_speed = ims
sprite_before = im
