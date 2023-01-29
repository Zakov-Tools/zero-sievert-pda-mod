function scr_player_cristallo_viola() //gml_Script_scr_player_cristallo_viola
{
    var _x = obj_cristallo_viola.x
    var _y = obj_cristallo_viola.y
    sprite_index = sprite_idle
    if instance_exists(obj_light_torch)
    {
        with (obj_light_torch)
            instance_destroy()
    }
    var _dir = point_direction(x, y, _x, _y)
    weapon_pointing_direction = _dir
    timer_cristallo_viola++
    if (timer_cristallo_viola >= timer_cristallo_viola_max)
    {
        if (timer_cristallo_viola == timer_cristallo_viola_max)
            scr_draw_npc_text(id, (55 << 0))
        if (timer_cristallo_viola == timer_cristallo_viola_max2)
            instance_create_depth(x, y, 0, obj_hud_cristallo_viola)
        if (timer_cristallo_viola >= timer_cristallo_viola_max2)
        {
            var _acc = 0.11
            var _accx = lengthdir_x(_acc, _dir)
            var _accy = lengthdir_y(_acc, _dir)
            hspd += _accx
            vspd += _accy
            scr_collision()
        }
    }
    if place_meeting(x, y, obj_cristallo_viola)
    {
        audio_stop_sound(snd_cristallo_viola)
        state = gml_Script_scr_player_state_move
        x = 3430
        y = 1450
        obj_controller.alarm[4] = 4
        obj_camera.follow = (1 << 0)
        instance_create_depth(4160, 640, 0, obj_solid_can_see)
        instance_create_depth(4176, 640, 0, obj_solid_can_see)
        instance_create_depth(4192, 640, 0, obj_solid_can_see)
        instance_create_depth(3416, 1450, 0, obj_chest_dopo_cristallo_viola)
    }
    return;
}

