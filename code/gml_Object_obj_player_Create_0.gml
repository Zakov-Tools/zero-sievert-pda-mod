lista_item()
scr_pg_class()
lista_skill_2()
lista_base()
outline_init()
var op = instance_create_depth(x, y, 0, obj_player_weapon)
op.follow_id = id
if (room == r_hub || room == room1)
{
    instance_create_depth(x, y, 35, obj_fog_setup)
    instance_create_depth(x, y, 35, obj_fog_light)
}
hspd = 0
vspd = 0
emitter_shoot = audio_emitter_create()
audio_emitter_falloff(emitter_shoot, 256, 400, 1)
emitter_walk = audio_emitter_create()
audio_emitter_falloff(emitter_shoot, 64, 96, 1)
ini_open(global.save_general)
var survived_ = ini_read_real("survive", "survive", string(1))
ini_close()
if (survived_ == 0)
    scr_save_or_load(0)
ini_open(global.save_inventory)
x = ini_read_real("player", "x", 660)
y = ini_read_real("player", "y", 1311)
if (room == test_room)
{
    x = 209
    y = 234
}
var new_game = ini_read_real("Main", "new game", 1)
if (new_game == 1)
{
    x = 591
    y = 911
}
player_class = ini_read_real("Class", "Class_id", 0)
wound = ini_read_real("player", "wound", 0)
fatigue_start = 100
fatigue_max = -60
fatigue = ini_read_real("player", "fatigue", fatigue_start)
fatigue_k_peso = 0.00003
fatigue_k_sveglio = 0.0005138888888888889
restore_wound = 0.05
restore_fatigue = 0.27
restore_hp = 0.15
decay_energy = 0.04
decay_thirst = 0.05
hp_max_total = 75
hp_max = ini_read_real("player", "hp_max", 75)
hp = ini_read_real("player", "hp", hp_max)
if (hp <= 0)
    hp = hp_max
hp_regen = 0
stamina_max_total = 100
stamina_max = ini_read_real("player", "stamina_max", stamina_max_total)
stamina = stamina_max
energy_max = 100
energy = ini_read_real("player", "energy", 90)
energy_decay = 0.0006666666666666666
thirst_max = 100
thirst = ini_read_real("player", "thirst", 90)
thirst_decay = 0.0008833333333333333
base_weight = 7
bleed = 0
bleed_max = 3
bleed_recovery = 0.0003
bleed_immune = 0
radiation = 0
radiation_nella_pos_attuale = 0
radiation_max = 15
radiation_recovery = 0.00001388888888888889
radiation_defence = 0
radiation_accumulata = ini_read_real("player", "radiation", 0)
stamina_recovery = 0.23
stamina_run_drain_max = 0.55
stamina_run_drain_min = stamina_recovery
stamina_run_drain = 0
sprint_is_toggled_now = 0
collision_mutant = 1
k_collision_mutant = 0.5
alarm_collision_mutant = 60
faction = (0 << 0)
draw_weapon = 1
ini_close()
state_reload = 0
reload_cocking = 0
stop_reload = 0
spd_walk = class_speed[player_class]
spd_run = class_sprint[player_class]
overweight_walk_limit = class_weight[player_class]
spd_overweight_factor = 0.25
current_spd = spd_walk
walk_time = 0
walk_time_max = 28
loot_dis = 16
looting = 0
trading = 0
looting_player_stash = 0
search_item_upgrade = 1
shoot_input = 0
shoot_input_delay = 0
shoot_input_delay_max = 15
shoot_stop_ani = 0
can_run_after_exit_building = 1
can_run_after_exit_building_timer = 0
can_run_after_exit_building_timer_max = 10
reload_single = 0
reload_sound_inizio = 0
reload_sound_fine = 0
reload_sound_shell_in = 0
dkey = -4
wkey = -4
skey = -4
akey = -4
hit = 0
hit_shader = 0
hit_shader_time = 3
hit_time = 30
sprite_idle = 48
sprite_run = 49
sprite_dead = 50
image_speed_run = 0.75
image_speed_walk = 0.4
image_speed_move_current = image_speed_walk
image_speed_idle = 0.25
recoil_from_movement = 0
recoil_from_shooting = 0
recoil_total = 0
total_ergo = 0
total_precision = 0
mouse_on_npc = 0
check_max_weight = 0
check_max_weight_max = 60
weapon_pointing_direction = 0
laser_startx = 0
laser_starty = 0
reloading = 0
shooting = 1
alarm[1] = 30
switching_weapon = 0
switching_weapon_now = 0
switching_weapon_max = 60
switching_weapon_max_now = switching_weapon_max
next_weapon_slot = (1 << 0)
switching_fase = 0
arma_now = (2 << 0)
weapon_slot_now = (1 << 0)
weapon_slot[(1 << 0)] = (2 << 0)
weapon_slot[(2 << 0)] = (2 << 0)
jammed_slot[(1 << 0)] = 0
jammed_slot[(2 << 0)] = 0
ammo_slot[(1 << 0)] = 0
ammo_slot[(2 << 0)] = 0
ammo_slot_max[(1 << 0)] = 0
ammo_slot_max[(2 << 0)] = 0
ammo_id_now[(1 << 0)] = 0
ammo_id_now[(2 << 0)] = 0
durability_slot[(1 << 0)] = 100
durability_slot[(2 << 0)] = 100
fire_mode_slot[(1 << 0)] = 0
fire_mode_slot[(2 << 0)] = 0
mod_id[(1 << 0)][(0 << 0)] = -1
mod_id[(1 << 0)][(1 << 0)] = -1
mod_id[(1 << 0)][(3 << 0)] = -1
mod_id[(1 << 0)][(2 << 0)] = -1
mod_id[(1 << 0)][(5 << 0)] = -1
mod_id[(1 << 0)][(6 << 0)] = -1
mod_id[(1 << 0)][(4 << 0)] = -1
mod_id[(1 << 0)][(7 << 0)] = -1
mod_id[(1 << 0)][(8 << 0)] = -1
mod_id[(1 << 0)][(9 << 0)] = -1
mod_id[(1 << 0)][(10 << 0)] = -1
mod_id[(2 << 0)][(0 << 0)] = -1
mod_id[(2 << 0)][(1 << 0)] = -1
mod_id[(2 << 0)][(3 << 0)] = -1
mod_id[(2 << 0)][(2 << 0)] = -1
mod_id[(2 << 0)][(5 << 0)] = -1
mod_id[(2 << 0)][(6 << 0)] = -1
mod_id[(2 << 0)][(4 << 0)] = -1
mod_id[(2 << 0)][(7 << 0)] = -1
mod_id[(2 << 0)][(8 << 0)] = -1
mod_id[(2 << 0)][(9 << 0)] = -1
mod_id[(2 << 0)][(10 << 0)] = -1
laser_on[(1 << 0)] = 0
now_precision = 0
now_recoil = 0
now_damage = 0
now_ergo = 0
now_reload_time = 0
laser_on_general = 0
laser_on[(1 << 0)][(7 << 0)] = 0
laser_have[(1 << 0)][(7 << 0)] = 0
laser_col[(1 << 0)][(7 << 0)] = 16777215
laser_x[(1 << 0)][(7 << 0)] = 0
laser_y[(1 << 0)][(7 << 0)] = 0
laser_on[(1 << 0)][(8 << 0)] = 0
laser_have[(1 << 0)][(8 << 0)] = 0
laser_col[(1 << 0)][(8 << 0)] = 16777215
laser_x[(1 << 0)][(8 << 0)] = 0
laser_y[(1 << 0)][(8 << 0)] = 0
laser_on[(1 << 0)][(9 << 0)] = 0
laser_have[(1 << 0)][(9 << 0)] = 0
laser_col[(1 << 0)][(9 << 0)] = 16777215
laser_x[(1 << 0)][(9 << 0)] = 0
laser_y[(1 << 0)][(9 << 0)] = 0
laser_on[(1 << 0)][(10 << 0)] = 0
laser_have[(1 << 0)][(10 << 0)] = 0
laser_col[(1 << 0)][(10 << 0)] = 16777215
laser_x[(1 << 0)][(10 << 0)] = 0
laser_y[(1 << 0)][(10 << 0)] = 0
laser_on[(2 << 0)][(7 << 0)] = 0
laser_have[(2 << 0)][(7 << 0)] = 0
laser_col[(2 << 0)][(7 << 0)] = 16777215
laser_x[(2 << 0)][(7 << 0)] = 0
laser_y[(2 << 0)][(7 << 0)] = 0
laser_on[(2 << 0)][(8 << 0)] = 0
laser_have[(2 << 0)][(8 << 0)] = 0
laser_col[(2 << 0)][(8 << 0)] = 16777215
laser_x[(2 << 0)][(8 << 0)] = 0
laser_y[(2 << 0)][(8 << 0)] = 0
laser_on[(2 << 0)][(9 << 0)] = 0
laser_have[(2 << 0)][(9 << 0)] = 0
laser_col[(2 << 0)][(9 << 0)] = 16777215
laser_x[(2 << 0)][(9 << 0)] = 0
laser_y[(2 << 0)][(9 << 0)] = 0
laser_on[(2 << 0)][(10 << 0)] = 0
laser_have[(2 << 0)][(10 << 0)] = 0
laser_col[(2 << 0)][(10 << 0)] = 16777215
laser_x[(2 << 0)][(10 << 0)] = 0
laser_y[(2 << 0)][(10 << 0)] = 0
torch_on_general = 0
torch_on[(1 << 0)][(7 << 0)] = 0
torch_have[(1 << 0)][(7 << 0)] = 0
torch_id[(1 << 0)][(7 << 0)] = 0
torch_x[(1 << 0)][(7 << 0)] = 0
torch_y[(1 << 0)][(7 << 0)] = 0
torch_on[(1 << 0)][(8 << 0)] = 0
torch_have[(1 << 0)][(8 << 0)] = 0
torch_id[(1 << 0)][(8 << 0)] = 0
torch_x[(1 << 0)][(8 << 0)] = 0
torch_y[(1 << 0)][(8 << 0)] = 0
torch_on[(1 << 0)][(9 << 0)] = 0
torch_have[(1 << 0)][(9 << 0)] = 0
torch_id[(1 << 0)][(9 << 0)] = 0
torch_x[(1 << 0)][(9 << 0)] = 0
torch_y[(1 << 0)][(9 << 0)] = 0
torch_on[(1 << 0)][(10 << 0)] = 0
torch_have[(1 << 0)][(10 << 0)] = 0
torch_id[(1 << 0)][(10 << 0)] = 0
torch_x[(1 << 0)][(10 << 0)] = 0
torch_y[(1 << 0)][(10 << 0)] = 0
torch_on[(2 << 0)][(7 << 0)] = 0
torch_have[(2 << 0)][(7 << 0)] = 0
torch_id[(2 << 0)][(7 << 0)] = 0
torch_x[(2 << 0)][(7 << 0)] = 0
torch_y[(2 << 0)][(7 << 0)] = 0
torch_on[(2 << 0)][(8 << 0)] = 0
torch_have[(2 << 0)][(8 << 0)] = 0
torch_id[(2 << 0)][(8 << 0)] = 0
torch_x[(2 << 0)][(8 << 0)] = 0
torch_y[(2 << 0)][(8 << 0)] = 0
torch_on[(2 << 0)][(9 << 0)] = 0
torch_have[(2 << 0)][(9 << 0)] = 0
torch_id[(2 << 0)][(9 << 0)] = 0
torch_x[(2 << 0)][(9 << 0)] = 0
torch_y[(2 << 0)][(9 << 0)] = 0
torch_on[(2 << 0)][(10 << 0)] = 0
torch_have[(2 << 0)][(10 << 0)] = 0
torch_id[(2 << 0)][(10 << 0)] = 0
torch_x[(2 << 0)][(10 << 0)] = 0
torch_y[(2 << 0)][(10 << 0)] = 0
brake_x = 0
brake_y = 0
alarm[7] = 2
arma_now = weapon_slot[weapon_slot_now]
armor_now = (0 << 0)
durability_slot[(11 << 0)] = 100
backpack_now = (0 << 0)
headset_now = (0 << 0)
state = gml_Script_scr_player_state_move
if (room == room1)
    state = gml_Script_scr_player_state_start
if (room == r_hub)
{
    if (new_game == 1)
        state = gml_Script_scr_player_new_game
    else
    {
        state = gml_Script_scr_player_state_start
        alarm[8] = 3
    }
}
global.max_weight = 0
global.backpack_equipped = 0
global.player_weight = 0
global.primary_equipped = 0
global.secondary_equipped = 0
global.armor_equipped = 0
global.speaker_nearest = -4
global.which_question = 0
global.aiming = 0
map_selected = -1
map_from = -1
alarm[9] = 60
quest_sono_vicino_anomalia = 0
quest_posso_piazzare_analyzer = 0
quest_scientific_analyzer_position_in_grid = -1
quest_place_analyzer_text_said_1 = 0
quest_place_analyzer_text_said_2 = 0
timer_cristallo_viola = 0
timer_cristallo_viola_max = 800
timer_cristallo_viola_max2 = 850
emission_riparato = 0
audio_listener_orientation(0, 1, 0, 0, 0, 1)
if (room != room_tutorial)
{
    ini_open(global.save_inventory)
    global.player_money = ini_read_real("stats", "money", 8000)
    new_game = ini_read_real("Main", "new game", 1)
    if (new_game == 1)
    {
        alarm[11] = 60
        ini_write_real("Main", "new game", 0)
        var t_id = ini_read_real("trait", "id", 0)
        var grid_w = 8
        var grid_h = 11
        var grid_item_ = ds_grid_create(grid_w, grid_h)
        ds_grid_clear(grid_item_, 0)
        var n_items = 1
        for (var i = 0; i < array_length_2d(global.arr_trait_item_id, t_id); i++)
        {
            var id_item = global.arr_trait_item_id[t_id][i]
            var placed = 0
            var necessario_w = (sprite_get_width(item_sprite_inv[id_item]) div 16)
            var necessario_h = (sprite_get_height(item_sprite_inv[id_item]) div 16)
            for (var yy = 0; yy < grid_h; yy++)
            {
                for (var xx = 0; xx < grid_w; xx++)
                {
                    if (ds_grid_get(grid_item_, xx, yy) == 0)
                    {
                        if (placed == 0)
                        {
                            var can_place = 1
                            if ((xx + necessario_w) > grid_w)
                                can_place = 0
                            if ((yy + necessario_h) > grid_h)
                                can_place = 0
                            for (var ix = 0; ix < necessario_w; ix++)
                            {
                                for (var iy = 0; iy < necessario_h; iy++)
                                {
                                    if (ds_grid_get(grid_item_, (xx + ix), (yy + iy)) == 1)
                                        can_place = 0
                                }
                            }
                            if (can_place == 1)
                            {
                                for (ix = 0; ix < necessario_w; ix++)
                                {
                                    for (iy = 0; iy < necessario_h; iy++)
                                        ds_grid_set(grid_item_, (xx + ix), (yy + iy), 1)
                                }
                                ini_write_real("Inventory", ("Item_id_" + string(n_items)), id_item)
                                ini_write_real("Inventory", ("Item_qnt_" + string(n_items)), global.arr_trait_item_qnt[t_id][i])
                                ini_write_real("Inventory", ("Item_x_" + string(n_items)), ((xx * 16) + 41))
                                ini_write_real("Inventory", ("Item_y_" + string(n_items)), ((yy * 16) + 63))
                                ini_write_real("Inventory", ("durability" + string(n_items)), 100)
                                ini_write_real("Inventory", ("rotation" + string(n_items)), 0)
                                ini_write_real("Inventory", "Number of items", n_items)
                                if (item_categoria[id_item] == (5 << 0))
                                {
                                    ini_write_real("Inventory", ("Item_x_" + string(n_items)), 248)
                                    ini_write_real("Inventory", ("Item_y_" + string(n_items)), 119)
                                    global.max_weight = (obj_player.base_weight + backpack_weight[id_item])
                                    global.backpack_equipped = 1
                                    backpack_now = id_item
                                }
                                n_items++
                                placed = 1
                            }
                        }
                    }
                }
            }
        }
        ds_grid_destroy(grid_item_)
        global.numero_di_item = ini_read_real("Inventory", "Number of items", n_items)
    }
    ini_close()
    ini_open(global.save_inventory)
    if (new_game == 0)
    {
        var number_of_items = ini_read_real("Inventory", "Number of items", 0)
        if (number_of_items > 0)
        {
            for (i = 1; i <= number_of_items; i++)
            {
                var temp_item_id = ini_read_real("Inventory", ("Item_id_" + string(i)), 0)
                var temp_item_qnt = ini_read_real("Inventory", ("Item_qnt_" + string(i)), 0)
                var temp_item_x = ini_read_real("Inventory", ("Item_x_" + string(i)), 0)
                var temp_item_y = ini_read_real("Inventory", ("Item_y_" + string(i)), 0)
                if (item_categoria[temp_item_id] == (0 << 0))
                {
                    var quante_ammo = ini_read_real("Inventory", ("item_ammo" + string(i)), arma_magazine[temp_item_id])
                    var _ammo_id = ini_read_real("Inventory", ("item_ammo_id" + string(i)), arma_ammo[temp_item_id])
                }
                var _aggiungere_peso = 1
                var toll = 2
                if (temp_item_x >= (200 - toll) && temp_item_x <= (280 + toll) && temp_item_y >= (31 - toll) && temp_item_y <= (63 + toll))
                {
                    weapon_slot[(1 << 0)] = temp_item_id
                    ammo_slot[(1 << 0)] = quante_ammo
                    ammo_slot_max[(1 << 0)] = arma_magazine[temp_item_id]
                    durability_slot[(1 << 0)] = ini_read_real("Inventory", ("durability" + string(i)), 0)
                    fire_mode_slot[(1 << 0)] = arma_fire_mode[temp_item_id]
                    ammo_id_now[(1 << 0)] = _ammo_id
                    _aggiungere_peso = 0
                }
                if (temp_item_x >= (200 - toll) && temp_item_x <= (280 + toll) && temp_item_y >= (76 - toll) && temp_item_y <= (108 + toll))
                {
                    weapon_slot[(2 << 0)] = temp_item_id
                    ammo_slot[(2 << 0)] = quante_ammo
                    ammo_slot_max[(2 << 0)] = arma_magazine[temp_item_id]
                    durability_slot[(2 << 0)] = ini_read_real("Inventory", ("durability" + string(i)), 0)
                    fire_mode_slot[(2 << 0)] = arma_fire_mode[temp_item_id]
                    ammo_id_now[(2 << 0)] = _ammo_id
                    _aggiungere_peso = 0
                }
                if (temp_item_x >= (248 - toll) && temp_item_x <= (280 + toll) && temp_item_y >= (119 - toll) && temp_item_y <= (151 - toll))
                {
                    global.max_weight = (obj_player.base_weight + backpack_weight[temp_item_id])
                    global.backpack_equipped = 1
                    backpack_now = temp_item_id
                }
                if (temp_item_x >= (200 - toll) && temp_item_x <= (232 + toll) && temp_item_y >= (119 - toll) && temp_item_y <= (151 - toll))
                {
                    global.armor_equipped = 1
                    armor_now = temp_item_id
                    durability_slot[(11 << 0)] = ini_read_real("Inventory", ("durability" + string(i)), 0)
                }
                if (temp_item_x >= (224 - toll) && temp_item_x <= (256 + toll) && temp_item_y >= (162 - toll) && temp_item_y <= (194 - toll))
                    headset_now = temp_item_id
                if (_aggiungere_peso == 1)
                    global.player_weight += (item_weight[temp_item_id] * temp_item_qnt)
            }
        }
    }
    ini_close()
    arma_now = weapon_slot[(1 << 0)]
    if (new_game == 1)
    {
        ini_open(global.save_inventory)
        t_id = ini_read_real("trait", "id", 0)
        ini_close()
        global.sk_lvl[(0 << 0)] = global.trait_cardio[t_id]
        global.sk_lvl[(4 << 0)] = global.trait_style[t_id]
        global.sk_lvl[(8 << 0)] = global.trait_shooting[t_id]
        global.sk_lvl[(12 << 0)] = global.trait_charisma[t_id]
        global.sk_lvl[(16 << 0)] = global.trait_medicine[t_id]
        global.sk_lvl[(19 << 0)] = global.trait_cooking[t_id]
        global.sk_lvl[(22 << 0)] = global.trait_gunsmith[t_id]
        global.player_money = global.trait_money[t_id]
        scr_save_skill()
    }
}
else
{
    if file_exists("tutorial_save.ini")
        file_delete("tutorial_save.ini")
    ini_open("tutorial_save.ini")
    global.player_money = ini_read_real("stats", "money", 100000)
    m = 1
    ini_write_real("Inventory", ("Item_id_" + string(m)), (49 << 0))
    ini_write_real("Inventory", ("Item_qnt_" + string(m)), 1)
    ini_write_real("Inventory", ("Item_x_" + string(m)), 41)
    ini_write_real("Inventory", ("Item_y_" + string(m)), 63)
    ini_write_real("Inventory", ("rotation" + string(m)), 0)
    ini_write_real("Inventory", ("durability" + string(m)), 100)
    m++
    ini_write_real("Inventory", ("Item_id_" + string(m)), (213 << 0))
    ini_write_real("Inventory", ("Item_qnt_" + string(m)), 150)
    ini_write_real("Inventory", ("Item_x_" + string(m)), 105)
    ini_write_real("Inventory", ("Item_y_" + string(m)), 63)
    ini_write_real("Inventory", ("rotation" + string(m)), 0)
    m++
    ini_write_real("Inventory", ("Item_id_" + string(m)), (213 << 0))
    ini_write_real("Inventory", ("Item_qnt_" + string(m)), 150)
    ini_write_real("Inventory", ("Item_x_" + string(m)), 121)
    ini_write_real("Inventory", ("Item_y_" + string(m)), 63)
    ini_write_real("Inventory", ("rotation" + string(m)), 0)
    m++
    ini_write_real("Inventory", ("Item_id_" + string(m)), (213 << 0))
    ini_write_real("Inventory", ("Item_qnt_" + string(m)), 150)
    ini_write_real("Inventory", ("Item_x_" + string(m)), 137)
    ini_write_real("Inventory", ("Item_y_" + string(m)), 63)
    ini_write_real("Inventory", ("rotation" + string(m)), 0)
    m++
    ini_write_real("Inventory", ("Item_id_" + string(m)), (36 << 0))
    ini_write_real("Inventory", ("Item_qnt_" + string(m)), 1)
    ini_write_real("Inventory", ("Item_x_" + string(m)), 41)
    ini_write_real("Inventory", ("Item_y_" + string(m)), 95)
    ini_write_real("Inventory", ("rotation" + string(m)), 0)
    ini_write_real("Inventory", ("durability" + string(m)), 100)
    m++
    ini_write_real("Inventory", ("Item_id_" + string(m)), (222 << 0))
    ini_write_real("Inventory", ("Item_qnt_" + string(m)), 30)
    ini_write_real("Inventory", ("Item_x_" + string(m)), 105)
    ini_write_real("Inventory", ("Item_y_" + string(m)), 79)
    ini_write_real("Inventory", ("rotation" + string(m)), 0)
    m++
    ini_write_real("Inventory", ("Item_id_" + string(m)), (222 << 0))
    ini_write_real("Inventory", ("Item_qnt_" + string(m)), 30)
    ini_write_real("Inventory", ("Item_x_" + string(m)), 121)
    ini_write_real("Inventory", ("Item_y_" + string(m)), 79)
    ini_write_real("Inventory", ("rotation" + string(m)), 0)
    m++
    ini_write_real("Inventory", ("Item_id_" + string(m)), (227 << 0))
    ini_write_real("Inventory", ("Item_qnt_" + string(m)), 3)
    ini_write_real("Inventory", ("Item_x_" + string(m)), 137)
    ini_write_real("Inventory", ("Item_y_" + string(m)), 79)
    ini_write_real("Inventory", ("rotation" + string(m)), 0)
    m++
    ini_write_real("Inventory", ("Item_id_" + string(m)), (226 << 0))
    ini_write_real("Inventory", ("Item_qnt_" + string(m)), 3)
    ini_write_real("Inventory", ("Item_x_" + string(m)), 153)
    ini_write_real("Inventory", ("Item_y_" + string(m)), 79)
    ini_write_real("Inventory", ("rotation" + string(m)), 0)
    m++
    ini_write_real("Inventory", ("Item_id_" + string(m)), (229 << 0))
    ini_write_real("Inventory", ("Item_qnt_" + string(m)), 4)
    ini_write_real("Inventory", ("Item_x_" + string(m)), 153)
    ini_write_real("Inventory", ("Item_y_" + string(m)), 63)
    ini_write_real("Inventory", ("rotation" + string(m)), 0)
    m++
    ini_write_real("Inventory", ("Item_id_" + string(m)), (419 << 0))
    ini_write_real("Inventory", ("Item_qnt_" + string(m)), 1)
    ini_write_real("Inventory", ("Item_x_" + string(m)), 41)
    ini_write_real("Inventory", ("Item_y_" + string(m)), 111)
    ini_write_real("Inventory", ("rotation" + string(m)), 0)
    ini_write_real("Inventory", ("durability" + string(m)), 100)
    m++
    ini_write_real("Inventory", ("Item_id_" + string(m)), (407 << 0))
    ini_write_real("Inventory", ("Item_qnt_" + string(m)), 1)
    ini_write_real("Inventory", ("Item_x_" + string(m)), 248)
    ini_write_real("Inventory", ("Item_y_" + string(m)), 119)
    ini_write_real("Inventory", ("rotation" + string(m)), 0)
    global.max_weight = backpack_weight[(407 << 0)]
    global.backpack_equipped = 1
    backpack_now = (407 << 0)
    ini_write_real("Inventory", "Number of items", m)
    global.numero_di_item = ini_read_real("Inventory", "Number of items", m)
    ini_close()
}
