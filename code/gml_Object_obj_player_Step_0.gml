depth = ((-y) - 8)
audio_listener_position(x, y, 0)
audio_emitter_position(emitter_shoot, x, y, 0)
audio_emitter_position(emitter_walk, x, y, 0)
if (!instance_exists(obj_player_weapon))
    instance_create_depth(x, y, 0, obj_player_weapon)
if (global.armor_equipped == 1)
{
    sprite_idle = armor_s_idle[armor_now]
    sprite_run = armor_s_run[armor_now]
    sprite_dead = armor_s_dead[armor_now]
}
else
{
    sprite_idle = 48
    sprite_run = 49
    sprite_dead = 50
}
if (arma_moddable[arma_now] == 1)
{
    if (mod_id[weapon_slot_now][(4 << 0)] != -1)
    {
        var get_id_magazine = mod_id[weapon_slot_now][(4 << 0)]
        ammo_slot_max[weapon_slot_now] = mod_magazine_size[get_id_magazine]
    }
}
if (can_run_after_exit_building == 0)
{
    can_run_after_exit_building_timer++
    if (can_run_after_exit_building_timer >= can_run_after_exit_building_timer_max)
        can_run_after_exit_building = 1
}
if (arma_now != (2 << 0) && item_categoria[arma_now] == (0 << 0))
{
    var somma_recoil = 0
    var somma_ergo = 0
    var somma_acc = 0
    var somma_damage = 0
    var somma_reload_speed = 0
    for (var i = 0; i < 11; i++)
    {
        var k = 0
        if (i == 0)
            k = (0 << 0)
        if (i == 1)
            k = (1 << 0)
        if (i == 2)
            k = (2 << 0)
        if (i == 3)
            k = (3 << 0)
        if (i == 4)
            k = (4 << 0)
        if (i == 5)
            k = (5 << 0)
        if (i == 6)
            k = (6 << 0)
        if (i == 7)
            k = (7 << 0)
        if (i == 8)
            k = (8 << 0)
        if (i == 9)
            k = (9 << 0)
        if (i == 10)
            k = (10 << 0)
        if (mod_id[weapon_slot_now][k] != -1)
        {
            var get_id_ = mod_id[weapon_slot_now][k]
            somma_recoil += mod_recoil[get_id_]
            somma_ergo += mod_ergo[get_id_]
            somma_acc += mod_acc[get_id_]
            somma_damage += mod_damage[get_id_]
            somma_reload_speed += mod_reload_speed[get_id_]
        }
    }
    if (arma_moddable[arma_now] == 1)
    {
        var new_recoil = (arma_recoil[arma_now] * (1 + (somma_recoil / 100)))
        var new_ergo = (arma_ergo[arma_now] * (1 + (somma_ergo / 100)))
        var new_acc = (arma_precisione[arma_now] * (1 + (somma_acc / 100)))
        var new_damage = (arma_damage[arma_now] * (1 + (somma_damage / 100)))
        var new_reload_speed = (arma_reload_time[arma_now] * (1 + (somma_reload_speed / 100)))
    }
    else
    {
        new_recoil = arma_recoil[arma_now]
        new_ergo = arma_ergo[arma_now]
        new_acc = arma_precisione[arma_now]
        new_damage = arma_damage[arma_now]
        new_reload_speed = arma_reload_time[arma_now]
    }
    now_recoil = ((new_recoil * (2 - global.sk_k[(33 << 0)])) * ((100 + ammo_recoil[ammo_id_now[weapon_slot_now]]) / 100))
    now_precision = (new_acc * (2 - global.sk_k[(33 << 0)]))
    now_damage = (new_damage * global.sk_k[(33 << 0)])
    now_ergo = (new_ergo * global.sk_k[(33 << 0)])
    now_reload_time = (new_reload_speed * (2 - global.sk_k[(33 << 0)]))
}
script_execute(state)
if (headset_now == (0 << 0))
{
    if instance_exists(obj_light_torch)
    {
        with (obj_light_torch)
            instance_destroy()
    }
    global.night_vision = 0
}
if (state != gml_Script_scr_player_state_move)
    global.change_ammo_now = 0
if (room == room1)
{
    if (y > obj_map_generator.map_height)
        global.player_is_indoor = 1
    else
        global.player_is_indoor = 0
}
if (!instance_exists(obj_exit_screen))
{
    if (global.sk_lvl[(21 << 0)] >= 0)
    {
        if (energy >= 50 && thirst >= 50)
        {
            global.sk_k[(38 << 0)] = (10 + (2 * global.sk_lvl[(21 << 0)]))
            global.sk_k[(39 << 0)] = (15 + (2 * global.sk_lvl[(21 << 0)]))
        }
    }
    stamina_max_total = (((class_stamina[player_class] + global.sk_k[(0 << 0)]) + global.sk_k[(39 << 0)]) + global.injector_factor[(4 << 0)])
    stamina += ((stamina_recovery * global.sk_k[(6 << 0)]) + global.injector_factor[(5 << 0)])
    if (state != gml_Script_scr_player_state_start)
        fatigue -= fatigue_k_sveglio
    fatigue = clamp(fatigue, fatigue_max, fatigue_start)
    if (fatigue < 0)
        stamina_max = (stamina_max_total + fatigue)
    else
        stamina_max = stamina_max_total
    stamina_max = clamp(stamina_max, 0, stamina_max_total)
    stamina = clamp(stamina, 0, stamina_max)
    wound = clamp(wound, 0, 40)
    bleed -= global.injector_factor[(2 << 0)]
    if (global.injector_factor[(3 << 0)] > 0)
        bleed = 0
    if (bleed <= 0.1)
        bleed = 0
    bleed = clamp(bleed, 0, bleed_max)
    hp_regen = global.injector_factor[(1 << 0)]
    hp_max_total = (((class_hp[player_class] + global.sk_k[(43 << 0)]) + global.sk_k[(38 << 0)]) + global.injector_factor[(0 << 0)])
    var _bleed_amount = bleed
    if instance_exists(obj_arms_player_parent)
    {
        if (obj_arms_player_parent.item_id != (0 << 0))
        {
            if (item_categoria[obj_arms_player_parent.item_id] == (2 << 0))
                _bleed_amount = 0
        }
    }
    hp -= (ceil(_bleed_amount) * 0.02)
    hp += (hp_regen + global.sk_k[(46 << 0)])
    hp_max = (hp_max_total - wound)
    hp_max = clamp(hp_max, 0, (hp_max_total - wound))
    hp = clamp(hp, 0, hp_max)
    if (room == r_hub)
        hp = clamp(hp, 10, hp_max)
    var difesa_rad = 0
    if (armor_now != -1)
        difesa_rad = armor_radiation[armor_now]
    var rx = (x div 8)
    var ry = ((y + 8) div 8)
    if (room == room1)
    {
        rx = clamp(rx, 1, (obj_map_generator.grid_rw - 1))
        ry = clamp(ry, 1, (obj_map_generator.grid_rh - 1))
        radiation_nella_pos_attuale = ((ds_grid_get(obj_map_generator.grid_radiation, rx, ry) - global.injector_factor[(8 << 0)]) - difesa_rad)
        if (ds_grid_get(obj_map_generator.grid_radiation, rx, ry) > 0)
        {
            var c = radiation_nella_pos_attuale
            if (c > 0 && c <= 200)
            {
                if (!audio_is_playing(snd_radiation_low))
                    audio_play_sound(snd_radiation_low, 10, false)
                if audio_is_playing(snd_radiation_medium)
                    audio_stop_sound(snd_radiation_low)
                if audio_is_playing(snd_radiation_high)
                    audio_stop_sound(snd_radiation_high)
            }
            if (c > 200 && c <= 400)
            {
                if (!audio_is_playing(snd_radiation_medium))
                    audio_play_sound(snd_radiation_medium, 10, false)
                if audio_is_playing(snd_radiation_low)
                    audio_stop_sound(snd_radiation_low)
                if audio_is_playing(snd_radiation_high)
                    audio_stop_sound(snd_radiation_high)
            }
            if (c > 400)
            {
                if (!audio_is_playing(snd_radiation_high))
                    audio_play_sound(snd_radiation_high, 10, false)
                if audio_is_playing(snd_radiation_low)
                    audio_stop_sound(snd_radiation_low)
                if audio_is_playing(snd_radiation_medium)
                    audio_stop_sound(snd_radiation_medium)
            }
        }
        else
        {
            if audio_is_playing(snd_radiation_low)
                audio_stop_sound(snd_radiation_low)
            if audio_is_playing(snd_radiation_medium)
                audio_stop_sound(snd_radiation_medium)
            if audio_is_playing(snd_radiation_high)
                audio_stop_sound(snd_radiation_high)
        }
    }
    var radiation_ = (radiation_nella_pos_attuale / 216000)
    radiation_ = clamp(radiation_, 0, 1000)
    radiation += radiation_
    radiation_accumulata += radiation_
    radiation_accumulata -= global.injector_factor[(7 << 0)]
    radiation_accumulata = clamp(radiation_accumulata, 0, global.status_value_max[(3 << 0)])
    if (room != r_hub && state != gml_Script_scr_player_state_start)
    {
        energy -= ((energy_decay * global.sk_k[(52 << 0)]) - global.injector_factor[(10 << 0)])
        thirst -= ((thirst_decay * global.sk_k[(53 << 0)]) - global.injector_factor[(12 << 0)])
    }
    energy = clamp(energy, 0, energy_max)
    thirst = clamp(thirst, 0, thirst_max)
    for (i = 0; i < array_length_1d(global.sk_id); i++)
    {
        var get_id = global.sk_id[i]
        if (global.sk_lvl[get_id] != -1)
            global.sk_lvl[get_id] = clamp(global.sk_lvl[get_id], 0, (global.sk_lvl_max[get_id] + 0.001))
    }
    if (hp < 20)
    {
        if (state != gml_Script_scr_player_state_dead)
        {
            if (!audio_is_playing(snd_heart))
                audio_play_sound(snd_heart, 2, false)
        }
    }
    if (global.is_emission_now == 1)
    {
        var _found = 0
        for (i = 0; i < 18; i += 6)
        {
            if (_found == 0)
            {
                if place_meeting((x - i), y, obj_solid)
                {
                    emission_riparato = 1
                    _found = 1
                }
            }
        }
        if (_found == 0)
            emission_riparato = 0
    }
}
if (state != gml_Script_scr_player_state_move)
{
    obj_player.shooting = 1
    obj_player.alarm[1] = 10
}
if (global.general_debug == 1)
{
    hp = clamp(hp, hp_max_total, 999)
    stamina = 100
    bleed = 0
}
if (hp <= 0)
{
    if (state != gml_Script_scr_player_state_dead)
    {
        hp = -100
        if instance_exists(obj_item)
        {
            with (obj_item)
                instance_destroy()
        }
        global.aiming = 0
        obj_mouse.visible = true
        state = gml_Script_scr_player_state_dead
        weapon_pointing_direction = 0
        var camx = camera_get_view_x(view_camera[0])
        var camy = camera_get_view_y(view_camera[0])
        var eend = instance_create_depth(x, y, -9999, obj_exit_screen)
        eend.survived = 0
        eend.factor_survived = 0.5
    }
}
if (global.general_debug == 1)
{
    if keyboard_check_pressed(vk_f1)
    {
        if (obj_controller.debug_menu == 1)
            obj_controller.debug_menu = 0
        else
            obj_controller.debug_menu = 1
    }
    if (keyboard_check_pressed(vk_f2) && keyboard_check(vk_control))
        global.player_money += 10000
    if (keyboard_check_pressed(vk_f3) && keyboard_check(vk_control))
        instance_create_depth(mouse_x, mouse_y, 0, obj_dummy)
    if (keyboard_check_pressed(vk_f4) && keyboard_check(vk_control))
    {
        x = mouse_x
        y = mouse_y
    }
    if (keyboard_check_pressed(vk_f5) && keyboard_check(vk_control))
        state = gml_Script_scr_player_state_item_spawn
    if (keyboard_check_pressed(vk_f6) && keyboard_check(vk_control))
    {
        if (room == room1)
        {
            if instance_exists(obj_meteo_controller)
                obj_meteo_controller.alarm[0] = 1
        }
    }
    if (keyboard_check_pressed(vk_f11) && keyboard_check(vk_control))
    {
        if (room == room1)
        {
            if instance_exists(obj_meteo_controller)
                global.meteo_rain = (10 << 0)
        }
    }
    if (keyboard_check_pressed(vk_f7) && keyboard_check(vk_control))
    {
        if (room == room1)
            obj_controller.alarm[3] = 1
    }
    if (keyboard_check_pressed(vk_f8) && keyboard_check(vk_control))
    {
        if (room == room1)
            instance_create_depth(mouse_x, mouse_y, 0, obj_loner_enemy2)
    }
    if (keyboard_check_pressed(vk_f9) && keyboard_check(vk_control))
    {
        if (global.debug_hide_hud == 0)
            global.debug_hide_hud = 1
        else
            global.debug_hide_hud = 0
    }
    if (keyboard_check_pressed(vk_f10) && keyboard_check(vk_control))
    {
        if (state != gml_Script_scr_player_state_start)
        {
            state = gml_Script_scr_player_state_start
            visible = false
        }
        else
        {
            state = gml_Script_scr_player_state_move
            visible = true
        }
    }
    if (keyboard_check_pressed(ord("P")) && keyboard_check(vk_control))
    {
        if (global.show_surf_radiation == 0)
            global.show_surf_radiation = 1
        else
            global.show_surf_radiation = 0
    }
    if (keyboard_check(vk_alt) && keyboard_check(vk_control) && keyboard_check_pressed(ord("E")))
    {
        if (room == room1)
        {
            if (global.state_emission_now == (0 << 0))
            {
                obj_meteo_controller.alarm[1] = 1
                obj_meteo_controller.alarm[0] = 2
                scr_draw_text_with_box("Emission started")
            }
        }
    }
}
