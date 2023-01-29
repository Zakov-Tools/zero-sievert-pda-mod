audio_group_load(14)
ini_open("settings.ini")
global.slot_selected = ini_read_real("Save slot selected", "Slot", 0)
ini_close()
scr_aggiorna_save_slot()
scr_load_macro()
scr_area_data()
scr_pg_class()
lista_trait()
lista_item()
global.game_version = "v: 0.28.03"
global.new_version_text = ("ZERO Sievert has been updated to version " + global.game_version)
global.monitor_width = window_get_width()
global.monitor_height = window_get_height()
ini_open("settings.ini")
global.ga_pop_up = ini_read_real("Game analytics", "pop_up", 1)
ini_close()
ga_pop_up_box_w = 320
ga_pop_up_box_h = 255
ga_pop_up_hover = 0
ga_pop_up_w = 110
ga_pop_up_h = 16
ga_pop_up_yes_x = (240 - (ga_pop_up_w / 2))
ga_pop_up_yes_y = 200
ga_pop_up_no_x = (240 + (ga_pop_up_w / 2))
ga_pop_up_no_y = 200
ga_link1_x = 240
ga_link1_y = (ga_pop_up_yes_y + 25)
ga_link2_x = 240
ga_link2_y = (ga_link1_y + 18)
ga_link_w = 100
ga_link_h = 16
camera_set_view_size(view_camera[0], 480, 270)
ini_open("settings.ini")
global.volume_master = ini_read_real("settings", "master volume", 1)
global.volume_radiation = ini_read_real("settings", "radiation volume", 0.8)
global.volume_heart = ini_read_real("settings", "heart volume", 0.6)
global.volume_main_menu = ini_read_real("settings", "main volume", 0.7)
global.fog_rain = ini_read_real("settings", "fog rain", 1)
global.erba_dinamica = ini_read_real("settings", "dynamic grass", 1)
global.erba_amount = ini_read_real("settings", "amount grass", 0.6)
global.low_spec = ini_read_real("settings", "low spec", 0)
global.fullscreen = ini_read_real("settings", "fullscreen", 1)
global.fog_enable = ini_read_real("settings", "fog of war", 1)
global.fog_alpha = ini_read_real("settings", "fog of war alpha", 0.25)
global.fog_surface_reset = ini_read_real("settings", "fog of war surface reset", 1)
global.fog_surface_reset = 1
global.resolution = ini_read_real("resolution", "resolution", (1 << 0))
global.hud_item_overlay = ini_read_real("settings", "item_overlay", 0.5)
global.toggle_sprint = ini_read_real("settings", "toggle_sprint", 0)
global.bunker_animation = ini_read_real("settings", "bunker_animation", 1)
global.ga_collect_data = ini_read_real("Game analytics", "collect_data", 1)
ini_close()
audio_group_set_gain(3, global.volume_radiation, 1)
audio_group_set_gain(13, global.volume_heart, 1)
audio_group_set_gain(14, global.volume_main_menu, 1)
audio_master_gain(global.volume_master)
if (debug_mode == 0)
    window_set_fullscreen(global.fullscreen)
else
    window_set_fullscreen(false)
global.lista_repair_id = ds_list_create()
global.lista_repair_dur = ds_list_create()
global.lista_repair_qnt = ds_list_create()
global.lista_mod_id = ds_list_create()
global.lista_mod_dur = ds_list_create()
global.lista_mod_stock = ds_list_create()
global.lista_mod_grip = ds_list_create()
global.lista_mod_barrel = ds_list_create()
global.lista_mod_handguard = ds_list_create()
global.lista_mod_brake = ds_list_create()
global.lista_mod_scope = ds_list_create()
global.lista_mod_magazine = ds_list_create()
global.lista_mod_att_1 = ds_list_create()
global.lista_mod_att_2 = ds_list_create()
global.lista_mod_att_3 = ds_list_create()
global.lista_mod_att_4 = ds_list_create()
global.lista_mod_file_x = ds_list_create()
global.lista_mod_file_y = ds_list_create()
global.lista_mod_file_inv = ds_list_create()
keyb_starty = 35
keyb_t_startx = 40
keyb_k_startx = 200
keyb_offset_w = 240
keyb_n_fila = 11
keyb_w = 64
keyb_h = 10
keyb_sep = 11
wait_input = 0
key_selected = 0
for (var i = 0; i <= (24 << 0); i++)
{
    global.kb_hold[i] = 0
    global.kb_pressed[i] = 0
    global.kb_accept_mouse[i] = 1
}
var a = (0 << 0)
global.kb_id[a] = a
global.kb_default[a] = 87
global.kb_now[a] = 87
global.kb_name[a] = "Move up"
global.kb_accept_mouse[a] = 0
global.kb_press_type[a] = (0 << 0)
a = (1 << 0)
global.kb_id[a] = a
global.kb_default[a] = 83
global.kb_now[a] = 83
global.kb_name[a] = "Move down"
global.kb_accept_mouse[a] = 0
global.kb_press_type[a] = (0 << 0)
a = (2 << 0)
global.kb_id[a] = a
global.kb_default[a] = 68
global.kb_now[a] = 68
global.kb_name[a] = "Move right"
global.kb_accept_mouse[a] = 0
global.kb_press_type[a] = (0 << 0)
a = (3 << 0)
global.kb_id[a] = a
global.kb_default[a] = 65
global.kb_now[a] = 65
global.kb_name[a] = "Move left"
global.kb_accept_mouse[a] = 0
global.kb_press_type[a] = (0 << 0)
a = (4 << 0)
global.kb_id[a] = a
global.kb_default[a] = 16
global.kb_now[a] = 16
global.kb_name[a] = "Run"
global.kb_press_type[a] = (3 << 0)
a = (5 << 0)
global.kb_id[a] = a
global.kb_default[a] = 9
global.kb_now[a] = 9
global.kb_name[a] = "Open/close inventory"
global.kb_accept_mouse[a] = 0
global.kb_press_type[a] = (1 << 0)
a = (6 << 0)
global.kb_id[a] = a
global.kb_default[a] = 70
global.kb_now[a] = 70
global.kb_name[a] = "Interact"
global.kb_press_type[a] = (1 << 0)
a = (7 << 0)
global.kb_id[a] = a
global.kb_default[a] = 82
global.kb_now[a] = 82
global.kb_name[a] = "Reload"
global.kb_press_type[a] = (1 << 0)
a = (8 << 0)
global.kb_id[a] = a
global.kb_default[a] = 84
global.kb_now[a] = 84
global.kb_name[a] = "Torch On/Off"
global.kb_press_type[a] = (1 << 0)
a = (9 << 0)
global.kb_id[a] = a
global.kb_default[a] = 76
global.kb_now[a] = 76
global.kb_name[a] = "Laser On/Off"
global.kb_press_type[a] = (1 << 0)
a = (14 << 0)
global.kb_id[a] = a
global.kb_default[a] = 78
global.kb_now[a] = 76
global.kb_name[a] = "Headset On/Off"
global.kb_press_type[a] = (1 << 0)
a = (10 << 0)
global.kb_id[a] = a
global.kb_default[a] = 74
global.kb_now[a] = 74
global.kb_name[a] = "Open device"
global.kb_press_type[a] = (1 << 0)
a = (11 << 0)
global.kb_id[a] = a
global.kb_default[a] = 77
global.kb_now[a] = 77
global.kb_name[a] = "Open map"
global.kb_press_type[a] = (1 << 0)
a = (12 << 0)
global.kb_id[a] = a
global.kb_default[a] = 71
global.kb_now[a] = 71
global.kb_name[a] = "Throw bolt"
global.kb_press_type[a] = (1 << 0)
a = (13 << 0)
global.kb_id[a] = a
global.kb_default[a] = 66
global.kb_now[a] = 66
global.kb_name[a] = "Switch auto/semi"
global.kb_press_type[a] = (1 << 0)
a = (23 << 0)
global.kb_id[a] = a
global.kb_default[a] = 89
global.kb_now[a] = 89
global.kb_name[a] = "Change ammo"
global.kb_press_type[a] = (1 << 0)
a = (24 << 0)
global.kb_id[a] = a
global.kb_default[a] = 75
global.kb_now[a] = 75
global.kb_name[a] = "Close-up of the weapon"
global.kb_press_type[a] = (1 << 0)
a = (15 << 0)
global.kb_id[a] = a
global.kb_default[a] = 49
global.kb_now[a] = 49
global.kb_name[a] = "Quick slot 1"
global.kb_press_type[a] = (1 << 0)
a = (16 << 0)
global.kb_id[a] = a
global.kb_default[a] = 50
global.kb_now[a] = 50
global.kb_name[a] = "Quick slot 2"
global.kb_press_type[a] = (1 << 0)
a = (17 << 0)
global.kb_id[a] = a
global.kb_default[a] = 51
global.kb_now[a] = 51
global.kb_name[a] = "Quick slot 3"
global.kb_press_type[a] = (1 << 0)
a = (18 << 0)
global.kb_id[a] = a
global.kb_default[a] = 52
global.kb_now[a] = 52
global.kb_name[a] = "Quick slot 4"
global.kb_press_type[a] = (1 << 0)
a = (19 << 0)
global.kb_id[a] = a
global.kb_default[a] = 53
global.kb_now[a] = 53
global.kb_name[a] = "Quick slot 5"
global.kb_press_type[a] = (1 << 0)
a = (20 << 0)
global.kb_id[a] = a
global.kb_default[a] = 54
global.kb_now[a] = 54
global.kb_name[a] = "Quick slot 6"
global.kb_press_type[a] = (1 << 0)
a = (21 << 0)
global.kb_id[a] = a
global.kb_default[a] = 55
global.kb_now[a] = 55
global.kb_name[a] = "Quick slot 7"
global.kb_press_type[a] = (1 << 0)
a = (22 << 0)
global.kb_id[a] = a
global.kb_default[a] = 56
global.kb_now[a] = 56
global.kb_name[a] = "Quick slot 8"
global.kb_press_type[a] = (1 << 0)
ini_open("settings.ini")
for (i = 0; i < array_length_1d(global.kb_id); i++)
    global.kb_now[i] = ini_read_real("Keybinding", global.kb_name[i], global.kb_default[i])
ini_close()
tutorial_text_y = 5
tutorial_sub_page = 0
tut_page_name_x = 10
tut_page_sub_page_x = 240
tut_page_previous_x = 200
tut_page_next_x = 270
tut_page_next_w = 20
tut_page_next_y = (tutorial_text_y + 7)
var t = (0 << 0)
tut_text_cat[t] = "MOVEMENT"
i = 0
tut_image[t][i] = 1881
i++
tut_image[t][i] = 1882
i++
tut_image[t][i] = 1883
i++
t = (1 << 0)
tut_text_cat[t] = "INVENTORY"
i = 0
tut_image[t][i] = 1884
i++
tut_image[t][i] = 1885
i++
tut_image[t][i] = 1886
i++
tut_image[t][i] = 1887
i++
tut_image[t][i] = 1888
i++
tut_image[t][i] = 1889
i++
t = (2 << 0)
tut_text_cat[t] = "DEVICE"
i = 0
tut_image[t][i] = 1899
i++
tut_image[t][i] = 1900
i++
tut_image[t][i] = 1901
i++
tut_image[t][i] = 1902
i++
tut_image[t][i] = 1903
i++
tut_image[t][i] = 1904
i++
tut_image[t][i] = 1905
i++
tut_image[t][i] = 1906
i++
tut_image[t][i] = 1907
i++
tut_image[t][i] = 1908
i++
t = (3 << 0)
tut_text_cat[t] = "COMBAT"
i = 0
tut_image[t][i] = 1890
i++
tut_image[t][i] = 1891
i++
tut_image[t][i] = 1892
i++
tut_image[t][i] = 1893
i++
tut_image[t][i] = 1894
i++
tut_image[t][i] = 1895
i++
tut_image[t][i] = 1896
i++
tut_image[t][i] = 1897
i++
tut_image[t][i] = 1898
i++
t = (5 << 0)
tut_text_cat[t] = "ITEMS INFO"
i = 0
tut_image[t][i] = 1909
i++
tut_image[t][i] = 1910
i++
tut_image[t][i] = 1911
i++
tut_image[t][i] = 1912
i++
tut_image[t][i] = 1913
i++
tut_image[t][i] = 1914
i++
t = (4 << 0)
tut_text_cat[t] = "PLAYER NEEDS"
i = 0
tut_image[t][i] = 1915
i++
new_version = 0
new_version_close_x = 399
new_version_close_y = 82
new_version_close_w = 16
ini_open("settings.ini")
game_version_loaded = ini_read_string("game_version", "version", "error")
ini_write_string("game_version", "version", global.game_version)
ini_close()
if (game_version_loaded != global.game_version)
    new_version = 1
button_startx = 240
button_starty = 80
tutorial_page = 0
if (room == r_menu)
    page_state = (0 << 0)
else
    page_state = (2 << 0)
page_state_before = (0 << 0)
can_slide = 0
can_click = 1
var b = (0 << 0)
option_startx[b] = button_startx
option_starty[b] = (button_starty - 20)
option_name[b][(0 << 0)] = "NEW GAME"
option_type[b][(0 << 0)] = (0 << 0)
option_name[b][(1 << 0)] = "LOAD GAME"
option_type[b][(1 << 0)] = (0 << 0)
option_name[b][(2 << 0)] = "TUTORIAL"
option_type[b][(2 << 0)] = (0 << 0)
option_name[b][(3 << 0)] = "SETTINGS"
option_type[b][(3 << 0)] = (0 << 0)
option_name[b][(4 << 0)] = "PATCH NOTES"
option_type[b][(4 << 0)] = (0 << 0)
option_name[b][(5 << 0)] = "DATA"
option_type[b][(5 << 0)] = (0 << 0)
option_name[b][(6 << 0)] = "CREDITS"
option_type[b][(6 << 0)] = (0 << 0)
option_name[b][(7 << 0)] = "EXIT"
option_type[b][(7 << 0)] = (0 << 0)
b = (3 << 0)
option_startx[b] = button_startx
option_starty[b] = button_starty
option_name[b][(0 << 0)] = "AUDIO"
option_type[b][(0 << 0)] = (0 << 0)
option_name[b][(1 << 0)] = "GAMEPLAY"
option_type[b][(1 << 0)] = (0 << 0)
option_name[b][(2 << 0)] = "VIDEO"
option_type[b][(2 << 0)] = (0 << 0)
option_name[b][(3 << 0)] = "RESOLUTION"
option_type[b][(3 << 0)] = (0 << 0)
option_name[b][(4 << 0)] = "CONTROLS"
option_type[b][(4 << 0)] = (0 << 0)
option_name[b][(5 << 0)] = "BACK"
option_type[b][(5 << 0)] = (0 << 0)
b = (1 << 0)
option_startx[b] = button_startx
option_starty[b] = button_starty
class_startx = 240
class_starty = 210
option_name[b][(0 << 0)] = "SLOT 1"
option_type[b][(0 << 0)] = (3 << 0)
option_name[b][(1 << 0)] = "SLOT 2"
option_type[b][(1 << 0)] = (3 << 0)
option_name[b][(2 << 0)] = "SLOT 3"
option_type[b][(2 << 0)] = (3 << 0)
option_name[b][(3 << 0)] = "NEXT"
option_type[b][(3 << 0)] = (0 << 0)
option_name[b][(4 << 0)] = "BACK"
option_type[b][(4 << 0)] = (0 << 0)
b = (10 << 0)
option_startx[b] = button_startx
option_starty[b] = button_starty
class_startx = 240
class_starty = 210
option_name[b][(0 << 0)] = "SLOT 1"
option_type[b][(0 << 0)] = (0 << 0)
option_name[b][(1 << 0)] = "SLOT 2"
option_type[b][(1 << 0)] = (0 << 0)
option_name[b][(2 << 0)] = "SLOT 3"
option_type[b][(2 << 0)] = (0 << 0)
option_name[b][(3 << 0)] = "BACK"
option_type[b][(3 << 0)] = (0 << 0)
b = (9 << 0)
option_startx[b] = button_startx
option_starty[b] = button_starty
class_startx = 240
class_starty = 210
option_name[b][(0 << 0)] = "TANK"
option_type[b][(0 << 0)] = (0 << 0)
option_name[b][(1 << 0)] = "ASSAULT"
option_type[b][(1 << 0)] = (0 << 0)
option_name[b][(2 << 0)] = "SNIPER"
option_type[b][(2 << 0)] = (0 << 0)
option_name[b][(3 << 0)] = "START"
option_type[b][(3 << 0)] = (0 << 0)
option_name[b][(4 << 0)] = "BACK"
option_type[b][(4 << 0)] = (0 << 0)
b = (11 << 0)
option_startx[b] = button_startx
option_starty[b] = button_starty
class_startx = 240
class_starty = 210
b = (16 << 0)
option_startx[b] = button_startx
option_starty[b] = button_starty
class_startx = 240
class_starty = 210
option_name[b][(0 << 0)] = "DISCORD"
option_type[b][(0 << 0)] = (0 << 0)
option_name[b][(1 << 0)] = "STEAM"
option_type[b][(1 << 0)] = (0 << 0)
option_name[b][(2 << 0)] = "KICKSTARTER"
option_type[b][(2 << 0)] = (0 << 0)
option_name[b][(3 << 0)] = "BACK"
option_type[b][(3 << 0)] = (0 << 0)
b = (4 << 0)
option_startx[b] = 180
option_starty[b] = button_starty
option_name[b][(0 << 0)] = "MASTER"
option_type[b][(0 << 0)] = (1 << 0)
option_var[b][(0 << 0)] = global.volume_master
option_name[b][(1 << 0)] = "RADIATION"
option_type[b][(1 << 0)] = (1 << 0)
option_var[b][(1 << 0)] = global.volume_radiation
option_name[b][(2 << 0)] = "HEARTBEAT"
option_type[b][(2 << 0)] = (1 << 0)
option_var[b][(2 << 0)] = global.volume_heart
option_name[b][(3 << 0)] = "MAIN MENU"
option_type[b][(3 << 0)] = (1 << 0)
option_var[b][(3 << 0)] = global.volume_main_menu
option_name[b][(4 << 0)] = "BACK"
option_type[b][(4 << 0)] = (0 << 0)
b = (7 << 0)
option_startx[b] = 180
option_starty[b] = (button_starty + 20)
option_name[b][(0 << 0)] = "TOGGLE SPRINT"
option_type[b][(0 << 0)] = (2 << 0)
option_var[b][(0 << 0)] = global.toggle_sprint
option_name[b][(1 << 0)] = "BUNKER ANIMATION"
option_type[b][(1 << 0)] = (2 << 0)
option_var[b][(1 << 0)] = global.bunker_animation
option_name[b][(2 << 0)] = "ITEM OVERLAY"
option_type[b][(2 << 0)] = (1 << 0)
option_var[b][(2 << 0)] = global.hud_item_overlay
option_name[b][(3 << 0)] = "BACK"
option_type[b][(3 << 0)] = (0 << 0)
b = (6 << 0)
option_startx[b] = 180
option_starty[b] = (button_starty - 40)
option_name[b][(0 << 0)] = "GRASS AMOUNT"
option_type[b][(0 << 0)] = (1 << 0)
option_var[b][(0 << 0)] = global.erba_amount
option_name[b][(1 << 0)] = "DYNAMIC GRASS "
option_type[b][(1 << 0)] = (2 << 0)
option_var[b][(1 << 0)] = global.erba_dinamica
option_name[b][(2 << 0)] = "ENABLE FOG/RAIN "
option_type[b][(2 << 0)] = (2 << 0)
option_var[b][(2 << 0)] = global.fog_rain
option_name[b][(3 << 0)] = "LOW SPEC"
option_type[b][(3 << 0)] = (2 << 0)
option_var[b][(3 << 0)] = global.low_spec
option_name[b][(4 << 0)] = "FULLSCREEN"
option_type[b][(4 << 0)] = (2 << 0)
option_var[b][(4 << 0)] = global.fullscreen
option_name[b][(5 << 0)] = "FOG OF WAR"
option_type[b][(5 << 0)] = (2 << 0)
option_var[b][(5 << 0)] = global.fog_enable
option_name[b][(6 << 0)] = "FOG ALPHA"
option_type[b][(6 << 0)] = (1 << 0)
option_var[b][(6 << 0)] = global.fog_alpha
option_name[b][(7 << 0)] = "BACK"
option_type[b][(7 << 0)] = (0 << 0)
b = (5 << 0)
option_startx[b] = 240
option_starty[b] = (button_starty + 140)
option_name[b][(0 << 0)] = "DEFAULT"
option_type[b][(0 << 0)] = (0 << 0)
option_name[b][(1 << 0)] = "BACK"
option_type[b][(1 << 0)] = (0 << 0)
b = (8 << 0)
option_startx[b] = button_startx
option_starty[b] = button_starty
option_name[b][(0 << 0)] = "1280x720"
option_type[b][(0 << 0)] = (0 << 0)
option_name[b][(1 << 0)] = "1920x1080"
option_type[b][(1 << 0)] = (0 << 0)
option_name[b][(2 << 0)] = "2560x1440"
option_type[b][(2 << 0)] = (0 << 0)
option_name[b][(3 << 0)] = "BACK"
option_type[b][(3 << 0)] = (0 << 0)
b = (2 << 0)
option_startx[b] = button_startx
option_starty[b] = button_starty
option_name[b][(0 << 0)] = "RESUME"
option_type[b][(0 << 0)] = (0 << 0)
option_name[b][(1 << 0)] = "SETTINGS"
option_type[b][(1 << 0)] = (0 << 0)
option_name[b][(2 << 0)] = "TUTORIAL"
option_type[b][(2 << 0)] = (0 << 0)
option_name[b][(3 << 0)] = "PATCH NOTES"
option_type[b][(3 << 0)] = (0 << 0)
option_name[b][(4 << 0)] = "MAIN MENU"
option_type[b][(4 << 0)] = (0 << 0)
b = (12 << 0)
option_startx[b] = button_startx
option_starty[b] = button_starty
option_name[b][(0 << 0)] = tut_text_cat[(0 << 0)]
option_type[b][(0 << 0)] = (0 << 0)
option_name[b][(1 << 0)] = tut_text_cat[(1 << 0)]
option_type[b][(1 << 0)] = (0 << 0)
option_name[b][(3 << 0)] = tut_text_cat[(3 << 0)]
option_type[b][(3 << 0)] = (0 << 0)
option_name[b][(2 << 0)] = tut_text_cat[(2 << 0)]
option_type[b][(2 << 0)] = (0 << 0)
option_name[b][(5 << 0)] = tut_text_cat[(5 << 0)]
option_type[b][(5 << 0)] = (0 << 0)
option_name[b][(4 << 0)] = tut_text_cat[(4 << 0)]
option_type[b][(4 << 0)] = (0 << 0)
option_name[b][(6 << 0)] = "BACK"
option_type[b][(6 << 0)] = (0 << 0)
b = (14 << 0)
option_startx[b] = (button_startx - 60)
option_starty[b] = (button_starty + 30)
class_startx = 240
class_starty = 210
option_name[b][(0 << 0)] = "DATA COLLECTION"
option_type[b][(0 << 0)] = (2 << 0)
option_var[b][(0 << 0)] = global.ga_collect_data
option_name[b][(1 << 0)] = "DISCLAIMER LINK"
option_type[b][(1 << 0)] = (0 << 0)
option_name[b][(2 << 0)] = "BACK"
option_type[b][(2 << 0)] = (0 << 0)
b = (15 << 0)
option_startx[b] = 420
option_starty[b] = 250
option_name[b][(0 << 0)] = "BACK"
option_type[b][(0 << 0)] = (0 << 0)
var hh = 150
b = (13 << 0)
option_startx[b] = 448
option_starty[b] = (tutorial_text_y + 8)
option_name[b][(0 << 0)] = "BACK"
option_type[b][(0 << 0)] = (0 << 0)
control_desc_x = 169
control_desc_y = 48
control_key_x = 312
control_key_y = 48
var o = 0
global.control_description[o] = "Movement"
global.control_key[o] = "W , A , S , D"
o++
global.control_description[o] = "Open/Close inventory"
global.control_key[o] = "TAB"
o++
global.control_description[o] = "Loot/Interact"
global.control_key[o] = "F"
o++
global.control_description[o] = "Reload"
global.control_key[o] = "R"
o++
global.control_description[o] = "Quick Slot"
global.control_key[o] = "1 , 2 , 3 , 4 , 5"
o++
global.control_description[o] = "Aim with scoped weapon"
global.control_key[o] = "MOUSE RIGHT BUTTON"
o++
global.control_description[o] = "Open map"
global.control_key[o] = "M"
o++
global.control_description[o] = "Open personal device"
global.control_key[o] = "J"
o++
global.control_description[o] = "Torch"
global.control_key[o] = "T"
o++
global.control_description[o] = "Pause"
global.control_key[o] = "ESCAPE"
o++
global.control_description[o] = "Show FPS"
global.control_key[o] = "F11 (in game)"
surface_credits = -4
s_credits_w = 480
s_credits_h = 4000
credits_movement = 0
credits_y = 0
credits_speed = 0.5
credits_jump = 3
credits_text = array_create(600, 0)
credits_size = array_create(600, 0)
credits_color = array_create(600, 16777215)
credits_index = 0
var size_big = 2
var size_normal = 1
scr_credits(size_big, "Developed by CABO Studio")
scr_credits(size_normal, "")
scr_credits(size_normal, "Luca Carbonera")
scr_credits(size_normal, "")
scr_credits(size_normal, "")
scr_credits(size_big, "Publishing")
scr_credits(size_normal, "")
scr_credits(size_big, "Modern Wolf")
scr_credits(size_normal, "")
scr_credits(size_normal, "Operations Director")
scr_credits(size_normal, "Alex Nicholson")
scr_credits(size_normal, "")
scr_credits(size_normal, "Social Media Manager")
scr_credits(size_normal, "Bee Fogah")
scr_credits(size_normal, "")
scr_credits(size_normal, "Producer")
scr_credits(size_normal, "David Claesson")
scr_credits(size_normal, "")
scr_credits(size_normal, "Community & Social Media Manager")
scr_credits(size_normal, "Emma Begum")
scr_credits(size_normal, "")
scr_credits(size_normal, "Senior Community Manager")
scr_credits(size_normal, "Eric Duan")
scr_credits(size_normal, "")
scr_credits(size_normal, "Marketing Manager")
scr_credits(size_normal, "Flore de Fontaine Vive Curtaz")
scr_credits(size_normal, "")
scr_credits(size_normal, "Creative Director")
scr_credits(size_normal, "Frederikke Frydenlund")
scr_credits(size_normal, "")
scr_credits(size_normal, "Brand Manager")
scr_credits(size_normal, "George Willard")
scr_credits(size_normal, "")
scr_credits(size_normal, "Marketing Director")
scr_credits(size_normal, "Jamin Smith")
scr_credits(size_normal, "")
scr_credits(size_normal, "CEO")
scr_credits(size_normal, "Nick Bridger")
scr_credits(size_normal, "")
scr_credits(size_normal, "Marketing Artist")
scr_credits(size_normal, "Pilar Malo")
scr_credits(size_normal, "")
scr_credits(size_normal, "Associate Producer")
scr_credits(size_normal, "Tiffany Ren-Edson")
scr_credits(size_normal, "")
scr_credits(size_normal, "")
scr_credits(size_big, "Indie By Design")
scr_credits(size_normal, "")
scr_credits(size_normal, "Stace Harman")
scr_credits(size_normal, "John Robertson")
scr_credits(size_normal, "")
scr_credits(size_normal, "")
scr_credits(size_big, "Tea Imp Games")
scr_credits(size_normal, "")
scr_credits(size_normal, "Lee Kemp")
scr_credits(size_normal, "")
scr_credits(size_normal, "")
scr_credits(size_big, "Take The Potion PR")
scr_credits(size_normal, "")
scr_credits(size_normal, "Davide Pessach")
scr_credits(size_normal, "")
scr_credits(size_normal, "")
scr_credits(size_big, "Neonhive")
scr_credits(size_normal, "")
scr_credits(size_normal, "PR Manager")
scr_credits(size_normal, "Rach Macpherson")
scr_credits(size_normal, "")
scr_credits(size_normal, "PR Exec")
scr_credits(size_normal, "David Rattigan")
scr_credits(size_normal, "")
scr_credits(size_normal, "Brand Manager")
scr_credits(size_normal, "Charlotte Nangle")
scr_credits(size_normal, "")
scr_credits(size_normal, "")
scr_credits(size_big, "Masamune")
scr_credits(size_normal, "")
scr_credits(size_normal, "Renato Almeida")
scr_credits(size_normal, "")
scr_credits(size_normal, "")
scr_credits(size_big, "Trailers By")
scr_credits(size_normal, "")
scr_credits(size_normal, "Oliver Cross")
scr_credits(size_normal, "")
scr_credits(size_normal, "")
scr_credits(size_big, "Key Art By")
scr_credits(size_normal, "")
scr_credits(size_normal, "Roman Stevens")
scr_credits(size_normal, "")
scr_credits(size_normal, "")
scr_credits(size_big, "Amber Studio")
scr_credits(size_normal, "")
scr_credits(size_normal, "QA Manager")
scr_credits(size_normal, "Razvan Birceanu")
scr_credits(size_normal, "")
scr_credits(size_normal, "QA Project Manager")
scr_credits(size_normal, "Ion Georgescu")
scr_credits(size_normal, "")
scr_credits(size_normal, "QA Team Lead")
scr_credits(size_normal, "Alexandra Balaceanu")
scr_credits(size_normal, "")
scr_credits(size_normal, "QA Testers")
scr_credits(size_normal, "Alexandru Dan Ghita")
scr_credits(size_normal, "Alexandru Vlad")
scr_credits(size_normal, "Alin-Andrei Grigorita")
scr_credits(size_normal, "Andrei Catalin Chiritoiu")
scr_credits(size_normal, "Claudiu Tanasa")
scr_credits(size_normal, "Dumitrel-Vladut Anastasiei")
scr_credits(size_normal, "George Stefan Popa")
scr_credits(size_normal, "Laurentiu Placinta Salaru")
scr_credits(size_normal, "Leonard Andrei Ostafe")
scr_credits(size_normal, "Marian Alexandru Banica")
scr_credits(size_normal, "Rebecca Ioana Ilie")
scr_credits(size_normal, "Robert-Ionut Anghelache")
scr_credits(size_normal, "Valentin Cristian Stanciu")
scr_credits(size_normal, "")
scr_credits(size_normal, "")
scr_credits(size_big, "Special Thanks")
scr_credits(size_normal, "")
scr_credits(size_normal, "John Nejady")
scr_credits(size_normal, "Fernando Rizo")
scr_credits(size_normal, "Nicole Avery")
scr_credits(size_normal, "Libby Carter")
scr_credits(size_normal, "Vince Farquharson")
scr_credits(size_normal, "Richard Jolly")
scr_credits(size_normal, "Craig Fletcher")
scr_credits(size_normal, "Charlie Flain")
scr_credits(size_normal, "Phil James")
scr_credits(size_normal, "Peter Lewis")
scr_credits(size_normal, "Elaina Mcallister")
scr_credits(size_normal, "Mark Morris")
scr_credits(size_normal, "Chris Sharp")
scr_credits(size_normal, "Zoe Shepherd")
scr_credits(size_normal, "Paul Wedgwood")
scr_credits(size_normal, "Marco Frisina")
scr_credits(size_normal, "Russell Kay")
scr_credits(size_normal, "Kinga Kwapisz")
scr_credits(size_normal, "Ross Manthorp")
scr_credits(size_normal, "Jonathan Ackerly")
scr_credits(size_normal, "Gavin Smart")
scr_credits(size_normal, "")
scr_credits(size_normal, "")
scr_credits(size_big, "Discord moderation team")
scr_credits(size_normal, "")
scr_credits(size_normal, "Zorod")
scr_credits(size_normal, "shibashroom")
scr_credits(size_normal, "Sernie")
scr_credits(size_normal, "Paul07")
scr_credits(size_normal, "Lottie [Modern Wolf]")
scr_credits(size_normal, "EricD [Modern Wolf]")
scr_credits(size_normal, "Emma [Modern Wolf]")
scr_credits(size_normal, "")
scr_credits(size_normal, "")
scr_credits(size_big, "Music by")
scr_credits(size_normal, "")
scr_credits(size_normal, "kupfergruen")
scr_credits(size_normal, "")
scr_credits(size_normal, "")
scr_credits(size_big, "Kickstarter")
scr_credits(size_normal, "")
scr_credits(size_normal, "I sincerely thank all 659 people who supported the project.")
scr_credits(size_normal, "")
scr_credits(size_normal, "Special thanks go to SplatterCatGaming")
scr_credits(size_normal, "")
scr_credits(size_normal, "Tier V - Master Hunters")
scr_credits(size_normal, "Radio")
scr_credits(size_normal, "J4un7y")
scr_credits(size_normal, "")
scr_credits(size_normal, "Tier IV - Expert Hunters")
scr_credits(size_normal, "Lukyan Grevsky")
scr_credits(size_normal, "Paul Christopher Vroman")
scr_credits(size_normal, "Mal")
scr_credits(size_normal, "RetroGamer")
scr_credits(size_normal, "BrightRaven210 ")
scr_credits(size_normal, "")
scr_credits(size_normal, "Tier III - Specialist Hunters")
scr_credits(size_normal, "Jack Milton")
scr_credits(size_normal, "Marc GUILMARD")
scr_credits(size_normal, "Tom Poole")
scr_credits(size_normal, "Conor White")
scr_credits(size_normal, "William Carmichael")
scr_credits(size_normal, "Gabriel Rodriguez")
scr_credits(size_normal, "Ricardo")
scr_credits(size_normal, "Riley Haring")
scr_credits(size_normal, "")
scr_credits(size_normal, "Tier II - Skilled Hunters")
scr_credits(size_normal, "Sunderic")
scr_credits(size_normal, "Paul William Tanguay")
scr_credits(size_normal, "Christian Knoflach")
scr_credits(size_normal, "Thomas Genese")
scr_credits(size_normal, "")
scr_credits(size_normal, "Tier I - Advanced Hunters")
scr_credits(size_normal, "Josh")
scr_credits(size_normal, "David McLaughlin")
scr_credits(size_normal, "MajorOcelot_TH")
scr_credits(size_normal, "Jairred Lambert")
scr_credits(size_normal, "Dino Dan")
scr_credits(size_normal, "Sam")
scr_credits(size_normal, "Nick Barnes")
scr_credits(size_normal, "Danny Lariviere")
scr_credits(size_normal, "Josh Magrath")
scr_credits(size_normal, "Settleman")
scr_credits(size_normal, "Veratyr")
scr_credits(size_normal, "Josh Lardino")
scr_credits(size_normal, "Roman Kurdyukov")
scr_credits(size_normal, "Todd Matyas")
scr_credits(size_normal, "Seth")
scr_credits(size_normal, "Ashley Saunders Manwell Mc'Bear")
scr_credits(size_normal, "Ivaar Forkbeard")
scr_credits(size_normal, "Queen Sunshade")
scr_credits(size_normal, "Christopher Greene -Moofy-")
scr_credits(size_normal, "Alex Charles Essenmacher")
scr_credits(size_normal, "AntlerWeasel")
option_selected = -1
class_selected = -1
state_sure = 0
sure_w = 36
sure_h = 18
sure_yes_x = 210
sure_yes_y = 150
sure_no_x = 270
sure_no_y = 150
sure_hover = 0
c_hover = 6271986
slider_startx = 260
offset_slider = 10
on_w = 40
on_x = 260
off_x = (on_x + on_w)
button_w = 160
button_h = 18
button_h_sep = 24
can_press = 1
kickstarter_x = (240 - (sprite_get_width(s_kickstarter_logo) / 2))
kickstarter_y = 16
kickstarter_w = sprite_get_width(s_kickstarter_logo)
kickstarter_h = sprite_get_height(s_kickstarter_logo)
kickstarter_hover = 0
kickstarter_box_x = kickstarter_x
kickstarter_box_y = (kickstarter_y + 40)
kickstarter_box_w = kickstarter_w
kickstarter_box_h = 204
kickstarter_box_size = 0
kickstarter_box_size_increase = 17
