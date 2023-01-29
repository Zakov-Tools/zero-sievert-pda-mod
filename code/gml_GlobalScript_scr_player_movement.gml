function scr_player_movement(argument0, argument1, argument2) //gml_Script_scr_player_movement
{
    var _speed_multiplier = argument0
    var _can_move = argument1
    var _can_run = argument2
    dkey = global.kb_hold[(2 << 0)]
    wkey = global.kb_hold[(0 << 0)]
    skey = global.kb_hold[(1 << 0)]
    akey = global.kb_hold[(3 << 0)]
    shift_key = global.kb_hold[(4 << 0)]
    shift_key_pressed = global.kb_pressed[(4 << 0)]
    var camx = camera_get_view_x(view_camera[0])
    var camy = camera_get_view_y(view_camera[0])
    var action = 0
    stamina_run_drain = lerp(stamina_run_drain_min, stamina_run_drain_max, (global.player_weight / global.max_weight))
    stamina_run_drain *= global.sk_k[(4 << 0)]
    var can_run = 1
    var can_walk = 1
    if (_can_run == 0)
        can_run = 0
    if (_can_move == 0)
        can_walk = 0
    var walk_k = 1
    if (global.player_weight > global.max_weight)
    {
        can_run = 0
        if (room == r_hub)
            can_run = 1
    }
    if (global.player_weight > global.max_weight)
    {
        walk_k = 0.5
        if (room == r_hub)
            walk_k = 1
    }
    if (global.player_weight > (global.max_weight + 5))
    {
        can_walk = 0
        walk_k = 0
        if (room == r_hub)
        {
            walk_k = 1
            can_walk = 1
        }
    }
    if (stamina <= 0)
        can_run = 0
    if mouse_check_button(mb_right)
        can_run = 0
    if (can_run_after_exit_building == 0)
        can_run = 0
    spd_walk = ((class_speed[player_class] * ((100 + backpack_movement_speed[backpack_now]) / 100)) * _speed_multiplier)
    spd_run = ((class_sprint[player_class] * ((100 + backpack_movement_speed[backpack_now]) / 100)) * _speed_multiplier)
    if (room == r_hub)
        spd_run = (1.7 * ((100 + backpack_movement_speed[backpack_now]) / 100))
    if (shift_key_pressed == 1)
    {
        if (global.toggle_sprint == 1)
        {
            if (sprint_is_toggled_now == 0)
                sprint_is_toggled_now = 1
            else
                sprint_is_toggled_now = 0
        }
    }
    if (global.toggle_sprint == 0)
        sprint_is_toggled_now = 0
    if (sprint_is_toggled_now == 1)
        shift_key = 1
    if shift_key
    {
        if (can_run == 1)
        {
            if (akey || skey || dkey || wkey)
            {
                current_spd = ((spd_run * global.sk_k[(5 << 0)]) + (global.general_debug * 4))
                image_speed_move_current = image_speed_run
                walk_time++
                if (global.player_weight < global.sk_k[(2 << 0)])
                    stamina += stamina_run_drain
                if (room == r_hub)
                    stamina += stamina_run_drain
            }
        }
        else
        {
            shift_key = 0
            sprint_is_toggled_now = 0
        }
    }
    if (!shift_key)
    {
        if (can_walk == 1)
        {
            current_spd = (spd_walk * walk_k)
            image_speed_move_current = image_speed_walk
        }
        else
            current_spd = 0
    }
    if ((!akey) && (!skey) && (!dkey) && (!wkey))
    {
        current_spd = 0
        sprint_is_toggled_now = 0
    }
    hspd = ((current_spd * (dkey - akey)) * collision_mutant)
    vspd = ((current_spd * (skey - wkey)) * collision_mutant)
    if (hspd != 0 && vspd != 0)
    {
        hspd /= 1.4
        vspd /= 1.4
    }
    var can_move = 1
    if instance_exists(obj_consumable_medication)
    {
        can_move = 0
        if mouse_check_button_pressed(mb_left)
        {
            with (obj_consumable_medication)
                instance_destroy()
        }
    }
    if (can_move == 0)
    {
        hspd = 0
        vspd = 0
    }
    if mouse_check_button(mb_right)
    {
        hspd *= 0.5
        vspd *= 0.5
    }
    scr_collision()
    if shift_key
    {
        if (can_run == 1)
        {
            if (akey || skey || dkey || wkey)
            {
                if (hspd != 0 || vspd != 0)
                    stamina -= stamina_run_drain
                if (hspd == 0 && vspd == 0)
                    sprint_is_toggled_now = 0
            }
        }
    }
    if (hspd != 0 || vspd != 0)
    {
        fatigue -= ((global.player_weight * fatigue_k_peso) * global.sk_k[(56 << 0)])
        if (room != r_hub)
            scr_level_up_skill((0 << 0), (global.rate_cardio * global.sk_k[(55 << 0)]))
    }
    scr_direzione_sprite()
    if (akey || wkey || dkey || skey)
    {
        recoil_from_movement += (item_weight[arma_now] / 5)
        walk_time++
        if (walk_time >= walk_time_max)
        {
            walk_time = 0
            if (hspd == 0 && vspd == 0)
            {
            }
            else
                scr_choose_footstep_sound((1 << 0))
        }
    }
    return;
}

