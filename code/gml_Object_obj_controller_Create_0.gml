if (room != room1 && room != test_room && room != room_tutorial && room != r_hub)
    global.slot_selected = 1
scr_aggiorna_save_slot()
scr_load_macro()
scr_area_data()
lista_item()
lista_quest()
lista_azioni()
lista_text()
lista_skill()
lista_skill_2()
lista_base()
lista_skill_factor()
lista_craft()
lista_trader()
lista_npc_text()
lista_npc()
lista_trait()
if file_exists("all_loot.ini")
    file_delete("all_loot.ini")
global.general_debug = 0
global.show_fps = 0
ini_open(global.save_general)
global.esperienza = ini_read_real("Exp", "Amount", 0)
global.livello_now = ini_read_real("Exp", "Livello", 1)
ini_close()
loot_name = ""
grid_tile_w = (room_width div 16)
grid_tile_h = (room_height div 16)
grid_move_w = (room_width div 16)
grid_move_h = (room_height div 16)
global.svela_item = 0
global.svela_item_now = 0
global.svela_item_max = 60
global.show_surf_radiation = 0
global.debug_hide_hud = 0
alarm[1] = 60
if (room == test_room || room == room_tutorial)
    alarm[0] = 10
if (room == r_hub)
    alarm[0] = 1
time_air_drop = 1200
alarm[7] = 600
global.which_quest_is_shown = -1
global.quest_item_scelto_id = -1
global.quest_item_scelto_qnt = 0
global.quest_index_del_npc = -1
global.text_custom_question = ""
global.grid_move = mp_grid_create(0, 0, grid_move_w, grid_move_h, 16, 16)
grid_motion = ds_grid_create(grid_move_w, grid_move_h)
ds_grid_clear(grid_motion, 0)
global.surface_blood = surface_create(room_width, room_height)
surface_set_target(global.surface_blood)
draw_clear_alpha(c_black, 0)
surface_reset_target()
disattiva = 0
alarm[4] = 15
disattiva_floor2 = 0
disattiva_grid_radiation = 1
bleed_amount = 0
bleed_blink = 1
bleed_blink_factor = 1
text_counter = 0
reset_restok_trader = 0
can_pause = 1
can_pause_timer = 0
ca_pause_timer_max = 2
global.heal_hp_k = 50
global.heal_wound_k = 80
global.heal_rad_k = 1000
timer_disattiva = 0
timer_disattiva_max = 15
global.airdrop_created = 0
global.airdrop_timer = (18000 + choose(9000, 18000, 27000, 36000))
alarm[3] = global.airdrop_timer
global.saving_enemy_chest_position = 0
global.ammo_counter_i_fired = 0
global.show_explosion_ghoul_lair = 0
global.tot_inv_value_now = 0
global.tot_inv_value_then = 0
global.who_killed_player_name = -4
global.talk_sub_state_show_quest = 0
talk_quest_obj_hover = 0
talk_quest_text_x = 225
talk_quest_text_y = 72
talk_quest_text_w = 64
talk_quest_obj_x = (220 + talk_quest_text_w)
talk_quest_obj_y = 72
talk_quest_obj_w = 64
global.cc_enter_paid = 0
global.list_interact = ds_list_create()
global.list_interact_id = ds_list_create()
global.list_interact_task_pos = ds_list_create()
global.p_int_instance_id = 0
var a = (1 << 0)
p_int_id[a] = a
p_int_obj_id[a] = -4
p_int_text[a] = "Loot"
a = (2 << 0)
p_int_id[a] = a
p_int_obj_id[a] = -4
p_int_text[a] = "Stash"
a = (3 << 0)
p_int_id[a] = a
p_int_obj_id[a] = -4
p_int_text[a] = "Talk"
a = (4 << 0)
p_int_id[a] = a
p_int_obj_id[a] = -4
p_int_text[a] = "Sleep"
a = (5 << 0)
p_int_id[a] = a
p_int_obj_id[a] = -4
p_int_text[a] = "Enter"
a = (6 << 0)
p_int_id[a] = a
p_int_obj_id[a] = -4
p_int_text[a] = "Interact"
a = (9 << 0)
p_int_id[a] = a
p_int_obj_id[a] = -4
p_int_text[a] = "Investigate"
a = (10 << 0)
p_int_id[a] = a
p_int_obj_id[a] = -4
p_int_text[a] = "Interact"
a = (7 << 0)
p_int_id[a] = a
p_int_obj_id[a] = -4
p_int_text[a] = "Craft"
a = (8 << 0)
p_int_id[a] = a
p_int_obj_id[a] = -4
p_int_text[a] = "Open"
a = (11 << 0)
p_int_id[a] = a
p_int_obj_id[a] = -4
p_int_text[a] = "interact"
a = (12 << 0)
p_int_id[a] = a
p_int_obj_id[a] = -4
p_int_text[a] = "Jam"
a = (13 << 0)
p_int_id[a] = a
p_int_obj_id[a] = -4
p_int_text[a] = "Fix"
a = (14 << 0)
p_int_id[a] = a
p_int_obj_id[a] = -4
p_int_text[a] = "Mark"
a = (15 << 0)
p_int_id[a] = a
p_int_obj_id[a] = -4
p_int_text[a] = "place analyzer"
a = (16 << 0)
p_int_id[a] = a
p_int_obj_id[a] = -4
p_int_text[a] = "Activate GPS"
a = (17 << 0)
p_int_id[a] = a
p_int_obj_id[a] = -4
p_int_text[a] = "Open the valve"
a = (18 << 0)
p_int_id[a] = a
p_int_obj_id[a] = -4
p_int_text[a] = "Place dynamite"
a = (19 << 0)
p_int_id[a] = a
p_int_obj_id[a] = -4
p_int_text[a] = "Place camera"
a = (20 << 0)
p_int_id[a] = a
p_int_obj_id[a] = -4
p_int_text[a] = "Turn on lights"
a = (21 << 0)
p_int_id[a] = a
p_int_obj_id[a] = -4
p_int_text[a] = "Read"
a = (22 << 0)
p_int_id[a] = a
p_int_obj_id[a] = -4
p_int_text[a] = "Switch ON/OFF"
a = (23 << 0)
p_int_id[a] = a
p_int_obj_id[a] = -4
p_int_text[a] = "Change color 1"
a = (24 << 0)
p_int_id[a] = a
p_int_obj_id[a] = -4
p_int_text[a] = "Change color 2"
a = (25 << 0)
p_int_id[a] = a
p_int_obj_id[a] = -4
p_int_text[a] = "Change mode"
a = (26 << 0)
p_int_id[a] = a
p_int_obj_id[a] = -4
p_int_text[a] = "Change timer"
global.list_ammo_id = ds_list_create()
global.list_ammo_qnt = ds_list_create()
global.change_ammo_now = 0
global.change_ammo_scelta = 0
sto_startx = 447
sto_starty = 39
sto_w = 16
sto_slot_max = 14
global.storage_page_now = 0
ini_open(global.save_player_chest)
global.storage_slot_unlocked = ini_read_real("Storage", "slot now", 2)
ini_close()
ini_open(global.save_general)
global.esperienza = ini_read_real("Exp", "Amount", 0)
global.livello_now = ini_read_real("Exp", "Livello", 0)
global.skill_points = 0
ini_close()
global.esperienza_survive = 0
global.esperienza_kill = 0
global.esperienza_loot = 0
global.esperienza_factor_survive = 1
global.esperienza_factor_death = 0.25
global.esperienza_da_looting = 3
var i = 7
global.esperienza_livello[0] = 0
global.esperienza_livello[(1 << 0)] = 0
global.esperienza_livello[(2 << 0)] = 1200
global.esperienza_livello[(3 << 0)] = 4000
global.esperienza_livello[(4 << 0)] = 10000
global.esperienza_livello[(5 << 0)] = 20000
global.esperienza_livello[(6 << 0)] = 40000
global.esperienza_livello[(7 << 0)] = 60000
global.esperienza_nome_livello[(1 << 0)] = "Rookie"
global.esperienza_nome_livello[(2 << 0)] = "Intermediate"
global.esperienza_nome_livello[(3 << 0)] = "Skilled"
global.esperienza_nome_livello[(4 << 0)] = "Specialist"
global.esperienza_nome_livello[(5 << 0)] = "Expert"
global.esperienza_nome_livello[(6 << 0)] = "Master"
global.esperienza_nome_livello[(7 << 0)] = "MAX"
max_level = 20
map_selected = -1
map_w = 80
b_go_hover = 0
b_go_w = sprite_get_width(s_hud_start_map)
b_go_h = 20
b_go_x = (240 - (b_go_w / 2))
b_go_y = 50
a = (1 << 0)
map_id[a] = a
map_nome[a] = "Forest"
map_desc[a] = " "
map_cost[a] = 0
map_x[a] = 32
map_y[a] = 80
a = (2 << 0)
map_id[a] = a
map_nome[a] = "Makeshift camp"
map_desc[a] = " "
map_cost[a] = 0
map_x[a] = 144
map_y[a] = 80
a = (3 << 0)
map_id[a] = a
map_nome[a] = "Industrial area"
map_desc[a] = " "
map_cost[a] = 0
map_x[a] = 256
map_y[a] = 80
a = (4 << 0)
map_id[a] = a
map_nome[a] = "Swamp"
map_desc[a] = " "
map_cost[a] = 0
map_x[a] = 368
map_y[a] = 80
a = (6 << 0)
map_id[a] = a
map_nome[a] = "Mall"
map_desc[a] = " "
map_cost[a] = 0
map_x[a] = 32
map_y[a] = 176
a = (8 << 0)
map_id[a] = a
map_nome[a] = "CNPP"
map_desc[a] = " "
map_cost[a] = 0
map_x[a] = 368
map_y[a] = 176
global.page_trader = 0
global.page_trader_w = 20
var def_x = 447
var def_y = 23
i = (0 << 0)
global.page_trader_text[i] = "Medication and food"
global.page_trader_sub[i] = 0
global.page_trader_x[i] = def_x
global.page_trader_y[i] = (def_y + (i * 20))
i = (1 << 0)
global.page_trader_text[i] = "General"
global.page_trader_sub[i] = 11
global.page_trader_x[i] = def_x
global.page_trader_y[i] = (def_y + (i * 20))
i = (2 << 0)
global.page_trader_text[i] = "Equipment"
global.page_trader_sub[i] = 10
global.page_trader_x[i] = def_x
global.page_trader_y[i] = (def_y + (i * 20))
i = (3 << 0)
global.page_trader_text[i] = "Ammunition"
global.page_trader_sub[i] = 1
global.page_trader_x[i] = def_x
global.page_trader_y[i] = (def_y + (i * 20))
i = (4 << 0)
global.page_trader_text[i] = "Pistol and SMG"
global.page_trader_sub[i] = 2
global.page_trader_x[i] = def_x
global.page_trader_y[i] = (def_y + (i * 20))
i = (5 << 0)
global.page_trader_text[i] = "Shotgun"
global.page_trader_sub[i] = 3
global.page_trader_x[i] = def_x
global.page_trader_y[i] = (def_y + (i * 20))
i = (6 << 0)
global.page_trader_text[i] = "Assault Rifle"
global.page_trader_sub[i] = 4
global.page_trader_x[i] = def_x
global.page_trader_y[i] = (def_y + (i * 20))
i = (7 << 0)
global.page_trader_text[i] = "Sniper rifle and DMR"
global.page_trader_sub[i] = 5
global.page_trader_x[i] = def_x
global.page_trader_y[i] = (def_y + (i * 20))
i = (8 << 0)
global.page_trader_text[i] = "Stock and barrel"
global.page_trader_sub[i] = 6
global.page_trader_x[i] = def_x
global.page_trader_y[i] = (def_y + (i * 20))
i = (9 << 0)
global.page_trader_text[i] = "Magazine"
global.page_trader_sub[i] = 7
global.page_trader_x[i] = def_x
global.page_trader_y[i] = (def_y + (i * 20))
i = (10 << 0)
global.page_trader_text[i] = "Handguard and Pistol grip"
global.page_trader_sub[i] = 8
global.page_trader_x[i] = def_x
global.page_trader_y[i] = (def_y + (i * 20))
i = (11 << 0)
global.page_trader_text[i] = "Attachment and scope"
global.page_trader_sub[i] = 9
global.page_trader_x[i] = def_x
global.page_trader_y[i] = (def_y + (i * 20))
global.status_color[(0 << 0)] = 3835195
global.status_color[(1 << 0)] = 16777215
global.status_color[(2 << 0)] = 4184549
global.status_color[(3 << 0)] = 2330348
global.status_color[(4 << 0)] = 1776532
global.list_status_id = ds_list_create()
global.status_x = 87
global.status_y = 6
global.status_w = 16
global.status_off = 2
a = (0 << 0)
global.status_id[a] = a
global.status_name[a] = "Fatigue"
global.status_sprite[a] = 1350
global.status_state_now[a] = (1 << 0)
global.status_state[a][0] = 65
global.status_state[a][1] = 10
global.status_state[a][2] = -20
global.status_state[a][3] = -40
global.status_value_max[a] = 100
global.status_des[a][(0 << 0)] = "Well rested"
global.status_des[a][(1 << 0)] = "Not tired"
global.status_des[a][(2 << 0)] = "Sleepy"
global.status_des[a][(3 << 0)] = "Tired"
global.status_des[a][(4 << 0)] = "Very tired"
global.status_f1[a][(0 << 0)] = 0.25
global.status_f1[a][(1 << 0)] = 0
global.status_f1[a][(2 << 0)] = -0.15
global.status_f1[a][(3 << 0)] = -0.3
global.status_f1[a][(4 << 0)] = -0.6
a = (1 << 0)
global.status_id[a] = a
global.status_name[a] = "Hunger"
global.status_sprite[a] = 1351
global.status_state_now[a] = (1 << 0)
global.status_state[a][0] = 85
global.status_state[a][1] = 65
global.status_state[a][2] = 45
global.status_state[a][3] = 20
global.status_value_max[a] = 100
global.status_des[a][(0 << 0)] = "Full"
global.status_des[a][(1 << 0)] = "Not hungry"
global.status_des[a][(2 << 0)] = "Slightly hungry"
global.status_des[a][(3 << 0)] = "Hungry"
global.status_des[a][(4 << 0)] = "Starving"
global.status_f1[a][(0 << 0)] = 1
global.status_f1[a][(1 << 0)] = 0
global.status_f1[a][(2 << 0)] = -1
global.status_f1[a][(3 << 0)] = -3
global.status_f1[a][(4 << 0)] = -10
a = (2 << 0)
global.status_id[a] = a
global.status_name[a] = "Thirst"
global.status_sprite[a] = 1352
global.status_state_now[a] = (1 << 0)
global.status_state[a][0] = 85
global.status_state[a][1] = 60
global.status_state[a][2] = 35
global.status_state[a][3] = 15
global.status_value_max[a] = 100
global.status_des[a][(0 << 0)] = "Well hydrated"
global.status_des[a][(1 << 0)] = "Not thirsty"
global.status_des[a][(2 << 0)] = "Slightly thirsty"
global.status_des[a][(3 << 0)] = "Thirsty"
global.status_des[a][(4 << 0)] = "Dehydrated"
global.status_f1[a][(0 << 0)] = 0.5
global.status_f1[a][(1 << 0)] = 0
global.status_f1[a][(2 << 0)] = -0.5
global.status_f1[a][(3 << 0)] = -2
global.status_f1[a][(4 << 0)] = -5
a = (3 << 0)
global.status_id[a] = a
global.status_name[a] = "Radiation"
global.status_sprite[a] = 1353
global.status_state_now[a] = (0 << 0)
global.status_state[a][0] = 0.4
global.status_state[a][1] = 2
global.status_state[a][2] = 5
global.status_state[a][3] = 10
global.status_value_max[a] = 15
global.status_des[a][(0 << 0)] = "Not irradiated"
global.status_des[a][(1 << 0)] = "Slightly irradiated"
global.status_des[a][(2 << 0)] = "Irradiated"
global.status_des[a][(3 << 0)] = "Dangerously irradiated"
global.status_des[a][(4 << 0)] = "Fatal irradiated"
global.status_f1[a][(0 << 0)] = 0
global.status_f1[a][(1 << 0)] = 0
global.status_f1[a][(2 << 0)] = -0.1
global.status_f1[a][(3 << 0)] = -0.25
global.status_f1[a][(4 << 0)] = -0.5
pda_loading_max = 0
pda_loading_now = 0
pda_loading_map_max = 0
pda_loading_map_now = 0
pda_loading_quest_now = 0
pda_loading_quest_max = 0
pda_loading_stat_now = 0
pda_loading_stat_max = 0
pda_loading_skill_tree_now = 0
pda_loading_skill_tree_max = 0
icon_hover = -1
icon_hover_before = -1
pda_geiger_counter_angle_offset = 0
pda_geiger_counter_angle_offset_max = 8
pda_geiger_counter_angle_step = 0
pda_geiger_counter_angle_step_max = 2
pda_map_mouse_press = 0
var ww = 311
var n_icone = 6
icone_w = sprite_get_width(s_pda_icon_map)
var ww2 = (ww / n_icone)
var sx = (222.5 - (ww / 2))
var sy = ((216 - icone_w) - 20)
icon_name_y = (sy - 10)
pda_icon_back_x = 408
pda_icon_back_y = 52
pda_icon_back_w = 48
pda_icon_back_h = 16
global.pda_icon_info_x = 371
global.pda_icon_info_y = 37
global.pda_info = 0
global.pda_quest_scroll_down_x = 65
global.pda_quest_scroll_down_y = 204
global.pda_quest_scroll_up_x = 116
global.pda_quest_scroll_up_y = 204
global.pda_quest_scroll_entry = 0
global.pda_quest_scroll_zone_x = 57
global.pda_quest_scroll_zone_y = 37
global.pda_quest_scroll_zone_w = 110
global.pda_quest_scroll_zone_h = 179
pda_quest_hover = -1
pda_quest_showed = -1
pda_quest_remove_hover = 0
pda_quest_remove_x = 172
pda_quest_remove_y = 186
pda_quest_remove_w = 75
pda_quest_remove_h = 12
global.sub_state_show_quest = 0
pda_quest_obj_hover = 0
pda_quest_obj_x = 172
pda_quest_obj_y = 57
pda_quest_obj_w = 64
pda_quest_text_x = (167 + pda_quest_obj_w)
pda_quest_text_y = 57
pda_quest_text_w = 64
pda_faction_x = 128
pda_faction_y = 96
a = (0 << 0)
pda_icon_id[a] = a
pda_icon_name[a] = "MAP"
pda_icon_sprite[a] = 1280
pda_icon_state[a] = 0
pda_icon_x[a] = (((sx + (ww2 * 0)) + (ww2 / 2)) - (icone_w / 2))
pda_icon_y[a] = sy
a = (1 << 0)
pda_icon_id[a] = a
pda_icon_name[a] = "QUEST"
pda_icon_sprite[a] = 1281
pda_icon_state[a] = 0
pda_icon_x[a] = (((sx + (ww2 * 1)) + (ww2 / 2)) - (icone_w / 2))
pda_icon_y[a] = sy
a = (2 << 0)
pda_icon_id[a] = a
pda_icon_name[a] = "STAT"
pda_icon_sprite[a] = 1282
pda_icon_state[a] = 0
pda_icon_x[a] = (((sx + (ww2 * 2)) + (ww2 / 2)) - (icone_w / 2))
pda_icon_y[a] = sy
a = (3 << 0)
pda_icon_id[a] = a
pda_icon_name[a] = "RELATIONS"
pda_icon_sprite[a] = 1286
pda_icon_state[a] = 0
pda_icon_x[a] = (((sx + (ww2 * 5)) + (ww2 / 2)) - (icone_w / 2))
pda_icon_y[a] = sy
a = (4 << 0)
pda_icon_id[a] = a
pda_icon_name[a] = "SKILL TREE"
pda_icon_sprite[a] = 1283
pda_icon_state[a] = 0
pda_icon_x[a] = (((sx + (ww2 * 3)) + (ww2 / 2)) - (icone_w / 2))
pda_icon_y[a] = sy
a = (5 << 0)
pda_icon_id[a] = a
pda_icon_name[a] = "BASE"
pda_icon_sprite[a] = 1285
pda_icon_state[a] = 0
pda_icon_x[a] = (((sx + (ww2 * 4)) + (ww2 / 2)) - (icone_w / 2))
pda_icon_y[a] = sy
sleep_w = sprite_get_width(s_hud_sleep)
sleep_h = sprite_get_height(s_hud_sleep)
sleep_x = (240 - (sleep_w / 2))
sleep_y = (135 - (sleep_h / 2))
sleep_b_w = 40
sleep_b_h = 15
sleep_b_sleep_x = 280
sleep_b_sleep_y = 150
sleep_b_back_x = (200 - sleep_b_w)
sleep_b_back_y = 150
sleep_b_hover = -1
sleep_hour = 0
sleep_cursor = 0
sleep_h_w = 156
for (i = 0; i < 25; i++)
{
    sleep_h_x[i] = ((240 - (sleep_h_w / 2)) + (i * (sleep_h_w / 24)))
    sleep_h_hour[i] = (0 + (i * 0.5))
}
grid_craft_x = 128
grid_craft_y = 16
grid_craft_w = 21
grid_craft_h = 9
button_hover = -1
button_craft_startx = 20
button_craft_starty = 20
var button_height = 16
var button_spaziatura = 4
button_craft_width = 96
button_craft_height = 16
change_page_next_step = 0
i = (0 << 0)
b_craft[i] = (0 << 0)
b_craft_x[i] = button_craft_startx
b_craft_y[i] = button_craft_starty
b_text[i] = "Medication"
i = (1 << 0)
b_craft[i] = (1 << 0)
b_craft_x[i] = button_craft_startx
b_craft_y[i] = ((button_craft_starty + (button_height * i)) + (button_spaziatura * i))
b_text[i] = "Ammunition"
i = (2 << 0)
b_craft[i] = (2 << 0)
b_craft_x[i] = button_craft_startx
b_craft_y[i] = ((button_craft_starty + (button_height * i)) + (button_spaziatura * i))
b_text[i] = "Food"
i = (3 << 0)
b_craft[i] = (3 << 0)
b_craft_x[i] = button_craft_startx
b_craft_y[i] = ((button_craft_starty + (button_height * i)) + (button_spaziatura * i))
b_text[i] = "Repair kit"
i = (4 << 0)
b_craft[i] = (4 << 0)
b_craft_x[i] = button_craft_startx
b_craft_y[i] = ((button_craft_starty + (button_height * i)) + (button_spaziatura * i))
b_text[i] = "Repair gear"
i = (5 << 0)
b_craft[i] = (5 << 0)
b_craft_x[i] = button_craft_startx
b_craft_y[i] = ((button_craft_starty + (button_height * i)) + (button_spaziatura * i))
b_text[i] = "Mod weapons"
i = (6 << 0)
b_craft[i] = (6 << 0)
b_craft_x[i] = button_craft_startx
b_craft_y[i] = ((button_craft_starty + (button_height * i)) + (button_spaziatura * i))
b_text[i] = "Modules Tier 1"
i = (7 << 0)
b_craft[i] = (7 << 0)
b_craft_x[i] = button_craft_startx
b_craft_y[i] = ((button_craft_starty + (button_height * i)) + (button_spaziatura * i))
b_text[i] = "Modules Tier 2"
i = (8 << 0)
b_craft[i] = (8 << 0)
b_craft_x[i] = button_craft_startx
b_craft_y[i] = ((button_craft_starty + (button_height * i)) + (button_spaziatura * i))
b_text[i] = "Extra"
a = (0 << 0)
tut_x[a] = 678
tut_y[a] = 1226
tut_text[a] = "Welcome to the bunker ZERO Sievert, one of the last safe places in Zakov"
a = (1 << 0)
tut_x[a] = 678
tut_y[a] = 1226
tut_text[a] = "In this place you'll be able to accept new missions, trade with vendors and manage your equipment.\nBefore you go out on a hunt I suggest you explore the bunker"
a = (3 << 0)
tut_x[a] = 590
tut_y[a] = 884
tut_text[a] = "Go talk to the barman, he will surely have some quests to give you.\nAlso he will explain what happened at Zakov"
a = (2 << 0)
tut_x[a] = 704
tut_y[a] = 1342
tut_text[a] = "In order to leave the bunker and go on a hunt, you need to talk to the train conductor.\nHe is located to the south, outside the bunker. Before leaving ask him a few questions, he will explain how to extract from the maps"
a = (4 << 0)
tut_x[a] = 337
tut_y[a] = 912
tut_text[a] = "There is a room in the bunker that you can use as a base, to the left of the barman.\nYou'll be able to use the workstation to craft new items, use the crates as storage, and build modules."
a = (5 << 0)
tut_x[a] = 337
tut_y[a] = 912
tut_text[a] = "By accessing your personal device [J] you will be able to see your position, current missions, install new modules and other things."
a = (6 << 0)
tut_x[a] = 606
tut_y[a] = 900
tut_text[a] = "Press [TAB] to access your inventory and equip the backpack.\nIf you need information on the game mechanics, consult the tutorial by pressing [ESC].\nGood luck hunter!"
tut_text_counter = 0
tut_text_page = (0 << 0)
button_mod_hover = -1
button_mod_selected = -1
button_mod_startx = 40
button_mod_starty = 40
var button_height_mod = 16
var button_spaziatura_mod = 0
button_mod_width = 80
button_mod_height = 16
button_mod_remove_hover = 0
button_mod_remove_x = 256
button_mod_remove_y = 208
button_mod_remove_w = 64
button_mod_remove_h = 16
off_n_v = 52
global.debug_modding = 0
global.instance_id_modding = -1
global.instance_id_modding_file_x = 0
global.instance_id_modding_file_y = 0
global.instance_id_modding_file_inv = 0
global.list_mod_avaible = ds_list_create()
global.list_mod_avaible_x = ds_list_create()
global.list_mod_avaible_y = ds_list_create()
i = 0
b_mod[i] = (0 << 0)
b_mod_x[i] = button_mod_startx
b_mod_y[i] = button_mod_starty
b_mod_text[i] = "Stock"
b_mod_cliccabile[i] = 1
i++
b_mod[i] = (1 << 0)
b_mod_x[i] = button_mod_startx
b_mod_y[i] = ((button_mod_starty + (button_height_mod * i)) + (button_spaziatura_mod * i))
b_mod_text[i] = "Grip"
b_mod_cliccabile[i] = 1
i++
b_mod[i] = (2 << 0)
b_mod_x[i] = button_mod_startx
b_mod_y[i] = ((button_mod_starty + (button_height_mod * i)) + (button_spaziatura_mod * i))
b_mod_text[i] = "Handguard"
b_mod_cliccabile[i] = 1
i++
b_mod[i] = (3 << 0)
b_mod_x[i] = button_mod_startx
b_mod_y[i] = ((button_mod_starty + (button_height_mod * i)) + (button_spaziatura_mod * i))
b_mod_text[i] = "Barrel"
b_mod_cliccabile[i] = 1
i++
b_mod[i] = (4 << 0)
b_mod_x[i] = button_mod_startx
b_mod_y[i] = ((button_mod_starty + (button_height_mod * i)) + (button_spaziatura_mod * i))
b_mod_text[i] = "Magazine"
b_mod_cliccabile[i] = 1
i++
b_mod[i] = (5 << 0)
b_mod_x[i] = button_mod_startx
b_mod_y[i] = ((button_mod_starty + (button_height_mod * i)) + (button_spaziatura_mod * i))
b_mod_text[i] = "Muzzle"
b_mod_cliccabile[i] = 1
i++
b_mod[i] = (6 << 0)
b_mod_x[i] = button_mod_startx
b_mod_y[i] = ((button_mod_starty + (button_height_mod * i)) + (button_spaziatura_mod * i))
b_mod_text[i] = "Scope"
b_mod_cliccabile[i] = 1
i++
b_mod[i] = (7 << 0)
b_mod_x[i] = button_mod_startx
b_mod_y[i] = ((button_mod_starty + (button_height_mod * i)) + (button_spaziatura_mod * i))
b_mod_text[i] = "Attachment 1"
b_mod_cliccabile[i] = 1
i++
b_mod[i] = (8 << 0)
b_mod_x[i] = button_mod_startx
b_mod_y[i] = ((button_mod_starty + (button_height_mod * i)) + (button_spaziatura_mod * i))
b_mod_text[i] = "Attachment 2"
b_mod_cliccabile[i] = 1
i++
b_mod[i] = (9 << 0)
b_mod_x[i] = button_mod_startx
b_mod_y[i] = ((button_mod_starty + (button_height_mod * i)) + (button_spaziatura_mod * i))
b_mod_text[i] = "Attachment 3"
b_mod_cliccabile[i] = 1
i++
b_mod[i] = (10 << 0)
b_mod_x[i] = button_mod_startx
b_mod_y[i] = ((button_mod_starty + (button_height_mod * i)) + (button_spaziatura_mod * i))
b_mod_text[i] = "Attachment 4"
b_mod_cliccabile[i] = 1
surface_testo = -4
testo_barra_sprite[0] = s_hud_testo_barra
testo_cursore_sprite[0] = 1333
testo_barra_h[0] = sprite_get_height(testo_barra_sprite[0])
testo_surface_w[0] = 215
testo_surface_h[0] = 144
testo_surface_y[0] = 0
testo_barra_x[0] = 450
testo_barra_y[0] = 102
testo_cursore_x[0] = testo_barra_x[0]
testo_cursore_y[0] = testo_barra_y[0]
testo_start_x[0] = 220
testo_start_y[0] = 84
testo_cursore_off[0] = 5
testo_barra_sprite[1] = s_hud_testo_barra_pda
testo_cursore_sprite[1] = 1334
testo_barra_h[1] = sprite_get_height(testo_barra_sprite[1])
testo_surface_w[1] = 196
testo_surface_h[1] = 120
testo_surface_y[1] = 0
testo_barra_x[1] = 382
testo_barra_y[1] = 70
testo_cursore_x[1] = testo_barra_x[1]
testo_cursore_y[1] = testo_barra_y[1]
testo_start_x[1] = 173
testo_start_y[1] = 71
testo_cursore_off[1] = 5
i = 2
testo_barra_sprite[i] = s_hud_testo_barra_pda
testo_cursore_sprite[i] = 1334
testo_barra_h[i] = sprite_get_height(testo_barra_sprite[i])
testo_surface_w[i] = 176
testo_surface_h[i] = 112
testo_surface_y[i] = 0
testo_barra_x[i] = 353
testo_barra_y[i] = 96
testo_cursore_x[i] = testo_barra_x[i]
testo_cursore_y[i] = testo_barra_y[i]
testo_start_x[i] = 136
testo_start_y[i] = 96
testo_cursore_off[i] = 12
prev_player_x = 0
prev_player_y = 0
encounter_distance = 0
a = (1 << 0)
en_chance[(0 << 0)][a] = 100
en_chance[(1 << 0)][a] = 10
en_chance[(2 << 0)][a] = 15
en_chance[(3 << 0)][a] = 10
en_chance[(4 << 0)][a] = 20
en_chance[(5 << 0)][a] = 20
en_chance[(6 << 0)][a] = 5
en_chance[(7 << 0)][a] = 0
en_chance[(8 << 0)][a] = 0
en_chance[(9 << 0)][a] = 15
en_chance[(10 << 0)][a] = 15
en_chance[(11 << 0)][a] = 0
en_chance[(12 << 0)][a] = 0
en_chance[(13 << 0)][a] = 50
en_chance[(14 << 0)][a] = 3
a = (2 << 0)
en_chance[(0 << 0)][a] = 60
en_chance[(1 << 0)][a] = 10
en_chance[(2 << 0)][a] = 15
en_chance[(3 << 0)][a] = 10
en_chance[(4 << 0)][a] = 20
en_chance[(5 << 0)][a] = 20
en_chance[(6 << 0)][a] = 5
en_chance[(7 << 0)][a] = 0
en_chance[(8 << 0)][a] = 0
en_chance[(9 << 0)][a] = 15
en_chance[(10 << 0)][a] = 15
en_chance[(11 << 0)][a] = 0
en_chance[(12 << 0)][a] = 20
en_chance[(13 << 0)][a] = 50
en_chance[(14 << 0)][a] = 3
a = (3 << 0)
en_chance[(0 << 0)][a] = 60
en_chance[(1 << 0)][a] = 10
en_chance[(2 << 0)][a] = 15
en_chance[(3 << 0)][a] = 10
en_chance[(4 << 0)][a] = 20
en_chance[(5 << 0)][a] = 20
en_chance[(6 << 0)][a] = 5
en_chance[(7 << 0)][a] = 0
en_chance[(8 << 0)][a] = 5
en_chance[(9 << 0)][a] = 15
en_chance[(10 << 0)][a] = 15
en_chance[(11 << 0)][a] = 0
en_chance[(12 << 0)][a] = 0
en_chance[(13 << 0)][a] = 50
en_chance[(14 << 0)][a] = 3
a = (4 << 0)
en_chance[(0 << 0)][a] = 100
en_chance[(1 << 0)][a] = 10
en_chance[(2 << 0)][a] = 15
en_chance[(3 << 0)][a] = 10
en_chance[(4 << 0)][a] = 20
en_chance[(5 << 0)][a] = 20
en_chance[(6 << 0)][a] = 5
en_chance[(7 << 0)][a] = 0
en_chance[(8 << 0)][a] = 15
en_chance[(9 << 0)][a] = 0
en_chance[(10 << 0)][a] = 20
en_chance[(11 << 0)][a] = 0
en_chance[(12 << 0)][a] = 0
en_chance[(13 << 0)][a] = 50
en_chance[(14 << 0)][a] = 3
a = (0 << 0)
en_id[a] = a
en_counter_max[a] = 1
en_counter[a] = en_counter_max[a]
a = (1 << 0)
en_id[a] = a
en_counter_max[a] = 1
en_counter[a] = en_counter_max[a]
a = (2 << 0)
en_id[a] = a
en_counter_max[a] = 1
en_counter[a] = en_counter_max[a]
a = (3 << 0)
en_id[a] = a
en_counter_max[a] = 1
en_counter[a] = en_counter_max[a]
a = (4 << 0)
en_id[a] = a
en_counter_max[a] = 1
en_counter[a] = en_counter_max[a]
a = (5 << 0)
en_id[a] = a
en_counter_max[a] = 1
en_counter[a] = en_counter_max[a]
a = (6 << 0)
en_id[a] = a
en_counter_max[a] = 1
en_counter[a] = en_counter_max[a]
a = (7 << 0)
en_id[a] = a
en_counter_max[a] = 1
en_counter[a] = en_counter_max[a]
a = (9 << 0)
en_id[a] = a
en_counter_max[a] = 1
en_counter[a] = en_counter_max[a]
a = (10 << 0)
en_id[a] = a
en_counter_max[a] = 1
en_counter[a] = en_counter_max[a]
a = (11 << 0)
en_id[a] = a
en_counter_max[a] = 1
en_counter[a] = en_counter_max[a]
a = (12 << 0)
en_id[a] = a
en_counter_max[a] = 1
en_counter[a] = en_counter_max[a]
a = (13 << 0)
en_id[a] = a
en_counter_max[a] = 1
en_counter[a] = en_counter_max[a]
a = (14 << 0)
en_id[a] = a
en_counter_max[a] = 1
en_counter[a] = en_counter_max[a]
a = (0 << 0)
global.sub_ai_peso[a] = 1
global.sub_ai_stop[a] = 1
a = (2 << 0)
global.sub_ai_peso[a] = 2
global.sub_ai_stop[a] = 1
a = (3 << 0)
global.sub_ai_peso[a] = 2
global.sub_ai_stop[a] = 1
a = (4 << 0)
global.sub_ai_peso[a] = 2
global.sub_ai_stop[a] = 1
a = (7 << 0)
global.sub_ai_peso[a] = 3
global.sub_ai_stop[a] = 1
a = (8 << 0)
global.sub_ai_peso[a] = 6
global.sub_ai_stop[a] = 1
a = (1 << 0)
global.sub_ai_peso[a] = 5
global.sub_ai_stop[a] = 1
a = (5 << 0)
global.sub_ai_peso[a] = 6
global.sub_ai_stop[a] = 1
a = (6 << 0)
global.sub_ai_peso[a] = 6
global.sub_ai_stop[a] = 1
a = (9 << 0)
global.sub_ai_peso[a] = 7
global.sub_ai_stop[a] = 1
a = (32 << 0)
global.sub_ai_peso[a] = 5
global.sub_ai_stop[a] = 1
a = (10 << 0)
global.sub_ai_peso[a] = 6
global.sub_ai_stop[a] = 1
a = (22 << 0)
global.sub_ai_peso[a] = 2
global.sub_ai_stop[a] = 1
a = (24 << 0)
global.sub_ai_peso[a] = 3
global.sub_ai_stop[a] = 1
a = (15 << 0)
global.sub_ai_peso[a] = 4
global.sub_ai_stop[a] = 1
a = (28 << 0)
global.sub_ai_peso[a] = 5
global.sub_ai_stop[a] = 1
a = (19 << 0)
global.sub_ai_peso[a] = 6
global.sub_ai_stop[a] = 1
a = (16 << 0)
global.sub_ai_peso[a] = 7
global.sub_ai_stop[a] = 1
a = (27 << 0)
global.sub_ai_peso[a] = 8
global.sub_ai_stop[a] = 1
a = (18 << 0)
global.sub_ai_peso[a] = 9
global.sub_ai_stop[a] = 1
a = (25 << 0)
global.sub_ai_peso[a] = 10
global.sub_ai_stop[a] = 1
a = (23 << 0)
global.sub_ai_peso[a] = 11
global.sub_ai_stop[a] = 1
a = (26 << 0)
global.sub_ai_peso[a] = 11
global.sub_ai_stop[a] = 1
a = (17 << 0)
global.sub_ai_peso[a] = 12
global.sub_ai_stop[a] = 1
a = (11 << 0)
global.sub_ai_peso[a] = 12
global.sub_ai_stop[a] = 1
a = (20 << 0)
global.sub_ai_peso[a] = 13
global.sub_ai_stop[a] = 0
a = (12 << 0)
global.sub_ai_peso[a] = 14
global.sub_ai_stop[a] = 1
a = (14 << 0)
global.sub_ai_peso[a] = 15
global.sub_ai_stop[a] = 1
a = (13 << 0)
global.sub_ai_peso[a] = 20
global.sub_ai_stop[a] = 0
a = (21 << 0)
global.sub_ai_peso[a] = 20
global.sub_ai_stop[a] = 0
a = (29 << 0)
global.sub_ai_peso[a] = 30
global.sub_ai_stop[a] = 0
global.faction_min = 30
global.faction_max = 70
global.faction_joined_min = 100
global.faction_limit_min = 0
global.faction_limit_max = 120
global.rep_loss_on_kill = 0
a = (0 << 0)
global.faction_name[a] = "Player"
a = (1 << 0)
global.faction_name[a] = "Loners"
a = (2 << 0)
global.faction_name[a] = "Green Army"
a = (3 << 0)
global.faction_name[a] = "Crimson Corporation"
a = (4 << 0)
global.faction_name[a] = "Scientist"
a = (5 << 0)
global.faction_name[a] = "Mercenary"
a = (6 << 0)
global.faction_name[a] = "Bandit"
global.grid_faction = ds_grid_create(10, 10)
ds_grid_clear(global.grid_faction, 150)
global.faction_joined = -1
for (var xx = 0; xx < 10; xx++)
{
    for (var yy = 0; yy < 10; yy++)
    {
        if (xx == (8 << 0) || yy == (8 << 0))
            ds_grid_set(global.grid_faction, xx, yy, 0)
        if (xx == (7 << 0) || yy == (7 << 0))
            ds_grid_set(global.grid_faction, xx, yy, 0)
        if (xx == (9 << 0) || yy == (9 << 0))
            ds_grid_set(global.grid_faction, xx, yy, global.faction_limit_max)
        if (xx == yy)
        {
            ds_grid_set(global.grid_faction, xx, yy, global.faction_limit_max)
            if (xx == (8 << 0) || yy == (8 << 0))
                ds_grid_set(global.grid_faction, xx, yy, 0)
        }
    }
}
ds_grid_set(global.grid_faction, (0 << 0), (1 << 0), 50)
ds_grid_set(global.grid_faction, (0 << 0), (2 << 0), 50)
if (global.az_done[(13 << 0)] == 1)
    ds_grid_set(global.grid_faction, (0 << 0), (2 << 0), 0)
ds_grid_set(global.grid_faction, (0 << 0), (3 << 0), 50)
ds_grid_set(global.grid_faction, (0 << 0), (4 << 0), 50)
ds_grid_set(global.grid_faction, (0 << 0), (5 << 0), 0)
ds_grid_set(global.grid_faction, (0 << 0), (6 << 0), 0)
ds_grid_set(global.grid_faction, (1 << 0), (2 << 0), 0)
ds_grid_set(global.grid_faction, (1 << 0), (3 << 0), 0)
ds_grid_set(global.grid_faction, (1 << 0), (4 << 0), 50)
ds_grid_set(global.grid_faction, (1 << 0), (5 << 0), 20)
ds_grid_set(global.grid_faction, (1 << 0), (6 << 0), 0)
ds_grid_set(global.grid_faction, (2 << 0), (3 << 0), 0)
ds_grid_set(global.grid_faction, (2 << 0), (4 << 0), 50)
ds_grid_set(global.grid_faction, (2 << 0), (5 << 0), 0)
ds_grid_set(global.grid_faction, (2 << 0), (6 << 0), 0)
ds_grid_set(global.grid_faction, (3 << 0), (4 << 0), 100)
ds_grid_set(global.grid_faction, (3 << 0), (5 << 0), 50)
ds_grid_set(global.grid_faction, (3 << 0), (6 << 0), 0)
ds_grid_set(global.grid_faction, (4 << 0), (5 << 0), 50)
ds_grid_set(global.grid_faction, (4 << 0), (6 << 0), 0)
ds_grid_set(global.grid_faction, (5 << 0), (6 << 0), 50)
for (yy = 0; yy < 10; yy++)
{
    for (xx = 0; xx < 10; xx++)
    {
        if (ds_grid_get(global.grid_faction, xx, yy) == 150)
            ds_grid_set(global.grid_faction, xx, yy, ds_grid_get(global.grid_faction, yy, xx))
    }
}
dynamic_npc_speed = 0.4
d_npc_tick = 0
d_npc_tick_max = 1
d_npc_same_time = 1
d_npc_same_time_now = 0
global.list_dynamic_npc = ds_list_create()
global.list_dynamic_npc_x = ds_list_create()
global.list_dynamic_npc_y = ds_list_create()
a = (0 << 0)
global.d_npc_id[a] = a
global.d_npc_object[a] = 710
global.d_npc_amount[a] = 3
global.d_npc_unique[a] = 0
a = (1 << 0)
global.d_npc_id[a] = a
global.d_npc_object[a] = 716
global.d_npc_amount[a] = 3
global.d_npc_unique[a] = 0
a = (2 << 0)
global.d_npc_id[a] = a
global.d_npc_object[a] = 726
global.d_npc_amount[a] = 1
global.d_npc_unique[a] = 0
a = (3 << 0)
global.d_npc_id[a] = a
global.d_npc_object[a] = 727
global.d_npc_amount[a] = 1
global.d_npc_unique[a] = 0
a = (4 << 0)
global.d_npc_id[a] = a
global.d_npc_object[a] = 201
global.d_npc_amount[a] = 3
global.d_npc_unique[a] = 0
a = (5 << 0)
global.d_npc_id[a] = a
global.d_npc_object[a] = 207
global.d_npc_amount[a] = 5
global.d_npc_unique[a] = 0
a = (6 << 0)
global.d_npc_id[a] = a
global.d_npc_object[a] = 219
global.d_npc_amount[a] = 2
global.d_npc_unique[a] = 0
a = (7 << 0)
global.d_npc_id[a] = a
global.d_npc_object[a] = 208
global.d_npc_amount[a] = 3
global.d_npc_unique[a] = 0
a = (8 << 0)
global.d_npc_id[a] = a
global.d_npc_object[a] = 711
global.d_npc_amount[a] = 1
global.d_npc_unique[a] = 1
a = (1 << 0)
global.d_npc_map[a][(0 << 0)] = 1
global.d_npc_map[a][(1 << 0)] = 0
global.d_npc_map[a][(2 << 0)] = 6
global.d_npc_map[a][(3 << 0)] = 1
global.d_npc_map[a][(4 << 0)] = 2
global.d_npc_map[a][(5 << 0)] = 1
global.d_npc_map[a][(6 << 0)] = 1
global.d_npc_map[a][(7 << 0)] = 1
global.d_npc_map[a][(8 << 0)] = 0
a = (2 << 0)
global.d_npc_map[a][(0 << 0)] = 2
global.d_npc_map[a][(1 << 0)] = 2
global.d_npc_map[a][(2 << 0)] = 4
global.d_npc_map[a][(3 << 0)] = 2
global.d_npc_map[a][(4 << 0)] = 1
global.d_npc_map[a][(5 << 0)] = 0
global.d_npc_map[a][(6 << 0)] = 0
global.d_npc_map[a][(7 << 0)] = 0
global.d_npc_map[a][(8 << 0)] = 1
a = (3 << 0)
global.d_npc_map[a][(0 << 0)] = 2
global.d_npc_map[a][(1 << 0)] = 3
global.d_npc_map[a][(2 << 0)] = 2
global.d_npc_map[a][(3 << 0)] = 4
global.d_npc_map[a][(4 << 0)] = 1
global.d_npc_map[a][(5 << 0)] = 0
global.d_npc_map[a][(6 << 0)] = 0
global.d_npc_map[a][(7 << 0)] = 0
global.d_npc_map[a][(8 << 0)] = 0
a = (4 << 0)
global.d_npc_map[a][(0 << 0)] = 1
global.d_npc_map[a][(1 << 0)] = 1
global.d_npc_map[a][(2 << 0)] = 0
global.d_npc_map[a][(3 << 0)] = 6
global.d_npc_map[a][(4 << 0)] = 1
global.d_npc_map[a][(5 << 0)] = 0
global.d_npc_map[a][(6 << 0)] = 0
global.d_npc_map[a][(7 << 0)] = 4
global.d_npc_map[a][(8 << 0)] = 0
a = (6 << 0)
global.d_npc_map[a][(0 << 0)] = 2
global.d_npc_map[a][(1 << 0)] = 2
global.d_npc_map[a][(2 << 0)] = 2
global.d_npc_map[a][(3 << 0)] = 5
global.d_npc_map[a][(4 << 0)] = 1
global.d_npc_map[a][(5 << 0)] = 0
global.d_npc_map[a][(6 << 0)] = 0
global.d_npc_map[a][(7 << 0)] = 0
global.d_npc_map[a][(8 << 0)] = 0
global.list_n_id = 0
global.list_n_npc_id = 0
global.list_n_hp = 0
global.list_n_x = 0
global.list_n_y = 0
global.list_n_power = 0
global.list_n_follow_path = 0
global.list_n_id[0] = 0
global.list_n_npc_id[0] = 0
global.list_n_hp[0] = 0
global.list_n_x[0] = 0
global.list_n_y[0] = 0
global.list_n_power[0] = 0
global.list_n_follow_path[0] = 0
a = (0 << 0)
global.spmall_obj[a] = 202
global.spmall_amount[a] = (2 + irandom(1))
global.spmall_chance[a] = 2
global.spmall_only_begin[a] = 0
a = (1 << 0)
global.spmall_obj[a] = 727
global.spmall_amount[a] = 1
global.spmall_chance[a] = 14
global.spmall_only_begin[a] = 0
a = (2 << 0)
global.spmall_obj[a] = 209
global.spmall_amount[a] = (2 + irandom(1))
global.spmall_chance[a] = 3
global.spmall_only_begin[a] = 1
a = (3 << 0)
global.spmall_obj[a] = 210
global.spmall_amount[a] = 1
global.spmall_chance[a] = 1
global.spmall_only_begin[a] = 1
a = (4 << 0)
global.spmall_obj[a] = 211
global.spmall_amount[a] = 1
global.spmall_chance[a] = 1
global.spmall_only_begin[a] = 1
global.mall_spawn_id = 0
global.mall_spawn_x = 0
global.mall_spawn_y = 0
global.stat_quante = 40
a = (0 << 0)
global.stat_id[a] = a
global.stat_name[a] = "Total Hunts"
a = (1 << 0)
global.stat_id[a] = a
global.stat_name[a] = "Hunts Survived"
a = (2 << 0)
global.stat_id[a] = a
global.stat_name[a] = "Survival Rate %"
a = (3 << 0)
global.stat_id[a] = a
global.stat_name[a] = "Best survival streak"
a = (4 << 0)
global.stat_id[a] = a
global.stat_name[a] = "Current survival streak"
a = (5 << 0)
global.stat_id[a] = a
global.stat_name[a] = "Total money received"
a = (6 << 0)
global.stat_id[a] = a
global.stat_name[a] = "Most money from a single hunt"
a = (7 << 0)
global.stat_id[a] = a
global.stat_name[a] = "Most exp from a single hunt"
a = (8 << 0)
global.stat_id[a] = a
global.stat_name[a] = "Total human killed"
a = (9 << 0)
global.stat_id[a] = a
global.stat_name[a] = "Bandits"
a = (10 << 0)
global.stat_id[a] = a
global.stat_name[a] = "Green army"
a = (11 << 0)
global.stat_id[a] = a
global.stat_name[a] = "Crimson Corporation"
a = (12 << 0)
global.stat_id[a] = a
global.stat_name[a] = "Scientist"
a = (13 << 0)
global.stat_id[a] = a
global.stat_name[a] = "Loner"
a = (14 << 0)
global.stat_id[a] = a
global.stat_name[a] = "Boss: Lazar"
a = (15 << 0)
global.stat_id[a] = a
global.stat_name[a] = "Boss: Arman"
a = (16 << 0)
global.stat_id[a] = a
global.stat_name[a] = "Boss: Kibba"
a = (17 << 0)
global.stat_id[a] = a
global.stat_name[a] = "Total mutants killed"
a = (18 << 0)
global.stat_id[a] = a
global.stat_name[a] = "Rabbit"
a = (19 << 0)
global.stat_id[a] = a
global.stat_name[a] = "Wolf"
a = (20 << 0)
global.stat_id[a] = a
global.stat_name[a] = "Boar"
a = (21 << 0)
global.stat_id[a] = a
global.stat_name[a] = "Ghoul"
a = (22 << 0)
global.stat_id[a] = a
global.stat_name[a] = "Spider"
a = (23 << 0)
global.stat_id[a] = a
global.stat_name[a] = "Blink"
a = (24 << 0)
global.stat_id[a] = a
global.stat_name[a] = "Big"
a = (25 << 0)
global.stat_id[a] = a
global.stat_name[a] = "Rat"
a = (26 << 0)
global.stat_id[a] = a
global.stat_name[a] = "Total chest opened"
a = (27 << 0)
global.stat_id[a] = a
global.stat_name[a] = "Tool box"
a = (28 << 0)
global.stat_id[a] = a
global.stat_name[a] = "Medication box"
a = (29 << 0)
global.stat_id[a] = a
global.stat_name[a] = "Electronics box"
a = (30 << 0)
global.stat_id[a] = a
global.stat_name[a] = "Bag"
a = (31 << 0)
global.stat_id[a] = a
global.stat_name[a] = "Cabinet"
a = (32 << 0)
global.stat_id[a] = a
global.stat_name[a] = "Safe"
a = (33 << 0)
global.stat_id[a] = a
global.stat_name[a] = "Wood box"
a = (34 << 0)
global.stat_id[a] = a
global.stat_name[a] = "Hidden stash"
a = (35 << 0)
global.stat_id[a] = a
global.stat_name[a] = "Weapon box"
a = (36 << 0)
global.stat_id[a] = a
global.stat_name[a] = "Attachment box"
a = (37 << 0)
global.stat_id[a] = a
global.stat_name[a] = "Vending machine"
a = (38 << 0)
global.stat_id[a] = a
global.stat_name[a] = "Crystal"
a = (39 << 0)
global.stat_id[a] = a
global.stat_name[a] = "Air drop"
ini_open(global.save_general)
for (i = 0; i < global.stat_quante; i++)
    global.stat_amount[i] = ini_read_real("Statistics", string(i), 0)
ini_close()
if (global.stat_amount[(0 << 0)] != 0)
{
    var _sr = round(((global.stat_amount[(1 << 0)] / global.stat_amount[(0 << 0)]) * 100))
    global.stat_amount[(2 << 0)] = _sr
}
slot_quest_max = 30
grid_quest = ds_grid_create(11, slot_quest_max)
ds_grid_clear(grid_quest, -1)
global.save_quest_id = -4
global.save_quest_status = -4
global.save_quest_amount_now = -4
global.save_quest_reward = -4
global.save_quest_giver = -4
global.save_sub_quest_notifica = -4
global.save_quest_notifica = -4
for (i = 0; i < 30; i++)
{
    global.save_quest_id[i] = -1
    global.save_quest_status[i] = 0
    global.save_quest_notifica[i] = 0
    global.save_quest_reward[i] = -1
    global.save_quest_giver[i] = 0
    for (var j = 0; j < 7; j++)
    {
        global.save_quest_amount_now[i][j] = 0
        global.save_sub_quest_notifica[i][j] = 0
    }
}
scr_load_quest()
marked_object_id = -4
global.injector_factor[(0 << 0)] = 0
global.injector_des[(0 << 0)] = "MAX HP"
global.injector_factor[(1 << 0)] = 0
global.injector_des[(1 << 0)] = "HP REGEN/s"
global.injector_factor[(2 << 0)] = 0
global.injector_des[(2 << 0)] = "bleed rec/s"
global.injector_factor[(3 << 0)] = 0
global.injector_des[(3 << 0)] = "bleed immune"
global.injector_factor[(4 << 0)] = 0
global.injector_des[(4 << 0)] = "max stamina"
global.injector_factor[(5 << 0)] = 0
global.injector_des[(5 << 0)] = "stamina reg/s"
global.injector_factor[(6 << 0)] = 0
global.injector_des[(6 << 0)] = "max weigth"
global.injector_factor[(7 << 0)] = 0
global.injector_des[(7 << 0)] = "rad reg/s"
global.injector_factor[(8 << 0)] = 0
global.injector_des[(8 << 0)] = "rad defence"
global.injector_factor[(9 << 0)] = 0
global.injector_des[(9 << 0)] = ""
global.injector_factor[(10 << 0)] = 0
global.injector_des[(10 << 0)] = "hunger/s"
global.injector_factor[(11 << 0)] = 0
global.injector_des[(11 << 0)] = ""
global.injector_factor[(12 << 0)] = 0
global.injector_des[(12 << 0)] = "thirst/s"
a = 0
global.suggerimento_text[a] = "Hold ctrl while dragging an item to divide its quantity"
a++
global.suggerimento_text[a] = "Scroll mouse wheel to select a different interaction option"
a++
global.suggerimento_text[a] = "Hold ctrl and click an item to move it quickly"
a++
global.suggerimento_text[a] = "Weapons can be modded only in the bunker"
a++
global.suggerimento_text[a] = "Hold ctrl and click an item to move it quickly"
a++
global.suggerimento_text[a] = "Hunger and thirst do not decrease in the bunker"
a++
global.suggerimento_text[a] = "Weight carried and running influence accumulated fatigue"
a++
global.suggerimento_text[a] = "You can add a marker on the minimap by pressing RMB"
a++
global.suggerimento_text[a] = "The doctor can heal you"
a++
global.suggerimento_text[a] = "Positioning the mouse over an enemy when shooting decreases recoil"
a++
global.suggerimento_text[a] = "Press RMB to extend the view and see further"
a++
global.suggerimento_text[a] = "Shooting with a scope grants 100% accuracy, more damage and no bullet travel time"
a++
global.suggerimento_text[a] = "Weapons durability influence the accuracy, damage and the chance of jam"
a++
global.suggerimento_text[a] = "Before using a kit for a module, you must first install it via the Personal Device"
a++
global.suggerimento_text[a] = "Use a repair kit restore the durability of weapons and armour"
a++
global.suggerimento_text[a] = "Once you have reached the maximum level of a skill you can select a specialisation"
a++
global.suggerimento_text[a] = "You move slowly if overencumbered"
a++
global.suggerimento_text[a] = "To increase the number of stashes in the bunker, you have to build a storage kit"
a++
global.suggerimento_text[a] = "You can die quickly, choose wisely when to engage"
a++
global.suggerimento_text[a] = "You can only die of radiation when the indicator is red"
a++
global.suggerimento_text[a] = "Enemies have reduced vision at night"
a++
global.suggerimento_text[a] = "Wounds decrease your max HP"
a++
global.suggerimento_text[a] = "Press Fire Button to end an animation"
a++
global.suggerimento_text[a] = "Press R to rotate an item whilst in the inventory screen"
a++
global.suggerimento_text[a] = "Join the Discord server to stay up-to-date with the game development (click on Patch Notes in the main menu)"
a++
global.suggerimento_text[a] = "Join the Discord server to stay up-to-date with the game development (click on Patch Notes in the main menu)"
a++
global.suggerimento_text[a] = "Join the Discord server to stay up-to-date with the game development (click on Patch Notes in the main menu)"
a++
a = (1 << 0)
marker_id[a] = a
marker_index[a] = 3
marker_color[a] = 34815
marker_text[a] = "Igor's house"
a = (2 << 0)
marker_id[a] = a
marker_index[a] = 3
marker_color[a] = 34815
marker_text[a] = "Mr. Junk"
a = (0 << 0)
marker_id[a] = a
marker_index[a] = 3
marker_color[a] = 34815
marker_text[a] = "Normal"
a = (3 << 0)
marker_id[a] = a
marker_index[a] = 15
marker_color[a] = 34815
marker_text[a] = "Air drop"
debug_menu = 0
a = 0
d_k[a] = "ctrl + F2"
d_t[a] = "10000 roubles"
a++
d_k[a] = "ctrl + F3"
d_t[a] = "spawn dummy"
a++
d_k[a] = "ctrl + F4"
d_t[a] = "teleport to mouse position"
a++
d_k[a] = "ctrl + F5"
d_t[a] = "Item Spawner"
a++
d_k[a] = "ctrl + F6"
d_t[a] = "Change weather"
a++
d_k[a] = "ctrl + F7"
d_t[a] = "Call airdrop"
a++
d_k[a] = "ctrl + F8"
d_t[a] = "Spawn Enemy loner"
a++
d_k[a] = "ctrl + F9"
d_t[a] = "Hide HUD"
a++
d_k[a] = "ctrl + F10"
d_t[a] = "Manually move camera"
a++
d_k[a] = "T + arrow right/left "
d_t[a] = "Increase/decrease time by 1 hour"
a++
d_k[a] = "Hold Numpad 1"
d_t[a] = "Show map gen timers"
a++
d_k[a] = "CTRL + ALT + E"
d_t[a] = "Start emission"
global.item_spawn_tx = 56
global.item_spawn_ty = 16
global.item_spawn_tw = 80
global.item_spawn_th = 16
global.item_spawn_subpage_x = 112
global.item_spawn_subpage_y = 2
global.item_spawn_subpage_w = 16
global.item_spawn_cat = 0
global.item_spawn_page = 0
global.item_spawn_page_tot = 0
a = (0 << 0)
var a0 = 0
global.item_spawn_name[a] = "weapon"
global.item_spawn_n_pages[a] = 6
a = (1 << 0)
var a1 = 0
global.item_spawn_name[a] = "ammo"
global.item_spawn_n_pages[a] = 1
a = (2 << 0)
var a2 = 0
global.item_spawn_name[a] = "attachment"
global.item_spawn_n_pages[a] = 8
a = (3 << 0)
var a3 = 0
global.item_spawn_name[a] = "medication"
global.item_spawn_n_pages[a] = 1
a = (4 << 0)
var a4 = 0
global.item_spawn_name[a] = "consumable"
global.item_spawn_n_pages[a] = 2
a = (5 << 0)
var a5 = 0
global.item_spawn_name[a] = "generic"
global.item_spawn_n_pages[a] = 3
a = (6 << 0)
var a6 = 0
global.item_spawn_name[a] = "equipment"
global.item_spawn_n_pages[a] = 3
a = (7 << 0)
var a7 = 0
global.item_spawn_name[a] = "book"
global.item_spawn_n_pages[a] = 2
a = (8 << 0)
var a8 = 0
global.item_spawn_name[a] = "module"
global.item_spawn_n_pages[a] = 2
for (i = 0; i < array_length_1d(item_id); i++)
{
    if (item_id[i] != (0 << 0) && item_id[i] != (2 << 0))
    {
        if (item_categoria[i] == (0 << 0))
        {
            if (arma_moddable[i] == 1)
            {
                item_spawn_id[(0 << 0)][a0] = i
                a0++
            }
        }
        if (item_categoria[i] == (1 << 0))
        {
            item_spawn_id[(1 << 0)][a1] = i
            a1++
        }
        if (item_categoria[i] == (17 << 0))
        {
            item_spawn_id[(2 << 0)][a2] = i
            a2++
        }
        if (item_categoria[i] == (2 << 0) || item_categoria[i] == (9 << 0))
        {
            item_spawn_id[(3 << 0)][a3] = i
            a3++
        }
        if (item_categoria[i] == (3 << 0) || item_categoria[i] == (8 << 0) || item_categoria[i] == (7 << 0))
        {
            item_spawn_id[(4 << 0)][a4] = i
            a4++
        }
        if (item_categoria[i] == (4 << 0))
        {
            item_spawn_id[(5 << 0)][a5] = i
            a5++
        }
        if (item_categoria[i] == (6 << 0) || item_categoria[i] == (5 << 0) || item_categoria[i] == (18 << 0))
        {
            item_spawn_id[(6 << 0)][a6] = i
            a6++
        }
        if (item_categoria[i] == (12 << 0) || item_categoria[i] == (13 << 0) || item_categoria[i] == (16 << 0))
        {
            item_spawn_id[(7 << 0)][a7] = i
            a7++
        }
        if (item_categoria[i] == (15 << 0))
        {
            item_spawn_id[(8 << 0)][a8] = i
            a8++
        }
    }
}
for (i = 0; i < array_length_1d(global.item_spawn_name); i++)
{
    var _page = 0
    var _grid_w = 22
    var _grid_h = 15
    var _grid = ds_grid_create(_grid_w, _grid_h)
    ds_grid_clear(_grid, 0)
    for (j = 0; j < array_length_2d(item_spawn_id, i); j++)
    {
        var _id = item_spawn_id[i][j]
        var necessario_w = (sprite_get_width(item_sprite_inv[_id]) div 16)
        var necessario_h = (sprite_get_height(item_sprite_inv[_id]) div 16)
        var placed = 0
        for (yy = 0; yy < _grid_h; yy++)
        {
            for (xx = 0; xx < _grid_w; xx++)
            {
                if (ds_grid_get(_grid, xx, yy) == 0)
                {
                    if (placed == 0)
                    {
                        var can_place = 1
                        if ((xx + necessario_w) > _grid_w)
                            can_place = 0
                        if ((yy + necessario_h) > _grid_h)
                            can_place = 0
                        for (var ix = 0; ix < necessario_w; ix++)
                        {
                            for (var iy = 0; iy < necessario_h; iy++)
                            {
                                if (ds_grid_get(_grid, (xx + ix), (yy + iy)) == 1)
                                    can_place = 0
                            }
                        }
                        if (can_place == 1)
                        {
                            placed = 1
                            for (ix = 0; ix < necessario_w; ix++)
                            {
                                for (iy = 0; iy < necessario_h; iy++)
                                    ds_grid_set(_grid, (xx + ix), (yy + iy), 1)
                            }
                            item_spawn_x[i][j] = xx
                            item_spawn_y[i][j] = yy
                            item_spawn_pa[i][j] = _page
                        }
                    }
                }
            }
        }
        if (placed == 0)
        {
            _page++
            ds_grid_clear(_grid, 0)
        }
    }
}
ini_open(global.save_general)
global.luci_natale_built = ini_read_real("Christman", "lights built", 0)
global.luci_natale_on = ini_read_real("Christman", "lights on", 1)
global.luci_natale_mode = ini_read_real("Christman", "lights mode", (0 << 0))
global.luci_natale_colore_1 = ini_read_real("Christman", "lights color 1", 0)
global.luci_natale_colore_2 = ini_read_real("Christman", "lights color 2", 0)
global.luci_natale_timer = ini_read_real("Christman", "lights timer", 2)
ini_close()
if (global.luci_natale_built == 1)
{
    if (room == r_hub)
    {
        var lay_id = layer_get_id("Natale_luci")
        layer_set_visible(lay_id, 1)
    }
}
