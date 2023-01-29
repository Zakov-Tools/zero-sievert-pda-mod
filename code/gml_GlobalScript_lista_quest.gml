function lista_quest() //gml_Script_lista_quest
{
    thank_for_help = "Thank you for your help"
    quest_completed = "Quest completed! Return to gain your reward!"
    global.list_q_weapon_dur = ds_list_create()
    global.list_q_weapon_x = ds_list_create()
    global.list_q_weapon_y = ds_list_create()
    global.list_quest_before_map_npc_name = ds_list_create()
    global.list_quest_before_map_quest_id = ds_list_create()
    global.list_quest_before_map_quest_premio = ds_list_create()
    var j = 0
    rew_money[j] = 1500
    rew_exp[j] = 35
    rew_rep[j] = 3
    j++
    rew_money[j] = 2500
    rew_exp[j] = 50
    rew_rep[j] = 4
    j++
    rew_money[j] = 3500
    rew_exp[j] = 65
    rew_rep[j] = 5
    j++
    rew_money[j] = 4500
    rew_exp[j] = 80
    rew_rep[j] = 6
    j++
    rew_money[j] = 6000
    rew_exp[j] = 100
    rew_rep[j] = 7
    var a = (1 << 0)
    var i = 0
    global.q_reward_id[a][i] = (231 << 0)
    global.q_reward_qnt[a][i] = 1
    i++
    global.q_reward_id[a][i] = (229 << 0)
    global.q_reward_qnt[a][i] = 3
    i++
    global.q_reward_id[a][i] = (230 << 0)
    global.q_reward_qnt[a][i] = 2
    i++
    a = (2 << 0)
    i = 0
    global.q_reward_id[a][i] = (231 << 0)
    global.q_reward_qnt[a][i] = 2
    i++
    global.q_reward_id[a][i] = (229 << 0)
    global.q_reward_qnt[a][i] = 4
    i++
    global.q_reward_id[a][i] = (226 << 0)
    global.q_reward_qnt[a][i] = 1
    i++
    global.q_reward_id[a][i] = (232 << 0)
    global.q_reward_qnt[a][i] = 2
    i++
    global.q_reward_id[a][i] = (233 << 0)
    global.q_reward_qnt[a][i] = 1
    i++
    global.q_reward_id[a][i] = (230 << 0)
    global.q_reward_qnt[a][i] = 2
    i++
    a = (3 << 0)
    i = 0
    global.q_reward_id[a][i] = (231 << 0)
    global.q_reward_qnt[a][i] = 4
    i++
    global.q_reward_id[a][i] = (229 << 0)
    global.q_reward_qnt[a][i] = 5
    i++
    global.q_reward_id[a][i] = (226 << 0)
    global.q_reward_qnt[a][i] = 2
    i++
    global.q_reward_id[a][i] = (227 << 0)
    global.q_reward_qnt[a][i] = 1
    i++
    global.q_reward_id[a][i] = (232 << 0)
    global.q_reward_qnt[a][i] = 3
    i++
    global.q_reward_id[a][i] = (233 << 0)
    global.q_reward_qnt[a][i] = 2
    i++
    global.q_reward_id[a][i] = (234 << 0)
    global.q_reward_qnt[a][i] = 1
    i++
    global.q_reward_id[a][i] = (230 << 0)
    global.q_reward_qnt[a][i] = 2
    i++
    a = (4 << 0)
    i = 0
    global.q_reward_id[a][i] = (222 << 0)
    global.q_reward_qnt[a][i] = 20
    i++
    global.q_reward_id[a][i] = (215 << 0)
    global.q_reward_qnt[a][i] = 50
    i++
    global.q_reward_id[a][i] = (216 << 0)
    global.q_reward_qnt[a][i] = 50
    i++
    global.q_reward_id[a][i] = (223 << 0)
    global.q_reward_qnt[a][i] = 50
    i++
    global.q_reward_id[a][i] = (225 << 0)
    global.q_reward_qnt[a][i] = 40
    i++
    global.q_reward_id[a][i] = (218 << 0)
    global.q_reward_qnt[a][i] = 40
    i++
    global.q_reward_id[a][i] = (545 << 0)
    global.q_reward_qnt[a][i] = 40
    i++
    global.q_reward_id[a][i] = (542 << 0)
    global.q_reward_qnt[a][i] = 40
    i++
    global.q_reward_id[a][i] = (549 << 0)
    global.q_reward_qnt[a][i] = 40
    i++
    global.q_reward_id[a][i] = (551 << 0)
    global.q_reward_qnt[a][i] = 20
    i++
    global.q_reward_id[a][i] = (217 << 0)
    global.q_reward_qnt[a][i] = 30
    i++
    global.q_reward_id[a][i] = (221 << 0)
    global.q_reward_qnt[a][i] = 15
    i++
    a = (5 << 0)
    i = 0
    global.q_reward_id[a][i] = (222 << 0)
    global.q_reward_qnt[a][i] = 20
    i++
    global.q_reward_id[a][i] = (556 << 0)
    global.q_reward_qnt[a][i] = 15
    i++
    global.q_reward_id[a][i] = (215 << 0)
    global.q_reward_qnt[a][i] = 70
    i++
    global.q_reward_id[a][i] = (544 << 0)
    global.q_reward_qnt[a][i] = 30
    i++
    global.q_reward_id[a][i] = (216 << 0)
    global.q_reward_qnt[a][i] = 70
    i++
    global.q_reward_id[a][i] = (543 << 0)
    global.q_reward_qnt[a][i] = 30
    i++
    global.q_reward_id[a][i] = (223 << 0)
    global.q_reward_qnt[a][i] = 70
    i++
    global.q_reward_id[a][i] = (554 << 0)
    global.q_reward_qnt[a][i] = 40
    i++
    global.q_reward_id[a][i] = (225 << 0)
    global.q_reward_qnt[a][i] = 50
    i++
    global.q_reward_id[a][i] = (555 << 0)
    global.q_reward_qnt[a][i] = 20
    i++
    global.q_reward_id[a][i] = (218 << 0)
    global.q_reward_qnt[a][i] = 50
    i++
    global.q_reward_id[a][i] = (548 << 0)
    global.q_reward_qnt[a][i] = 20
    i++
    global.q_reward_id[a][i] = (545 << 0)
    global.q_reward_qnt[a][i] = 60
    i++
    global.q_reward_id[a][i] = (214 << 0)
    global.q_reward_qnt[a][i] = 30
    i++
    global.q_reward_id[a][i] = (542 << 0)
    global.q_reward_qnt[a][i] = 60
    i++
    global.q_reward_id[a][i] = (213 << 0)
    global.q_reward_qnt[a][i] = 30
    i++
    global.q_reward_id[a][i] = (549 << 0)
    global.q_reward_qnt[a][i] = 50
    i++
    global.q_reward_id[a][i] = (219 << 0)
    global.q_reward_qnt[a][i] = 30
    i++
    global.q_reward_id[a][i] = (551 << 0)
    global.q_reward_qnt[a][i] = 30
    i++
    global.q_reward_id[a][i] = (220 << 0)
    global.q_reward_qnt[a][i] = 15
    i++
    global.q_reward_id[a][i] = (217 << 0)
    global.q_reward_qnt[a][i] = 40
    i++
    global.q_reward_id[a][i] = (221 << 0)
    global.q_reward_qnt[a][i] = 20
    i++
    a = (6 << 0)
    i = 0
    global.q_reward_id[a][i] = (222 << 0)
    global.q_reward_qnt[a][i] = 30
    i++
    global.q_reward_id[a][i] = (556 << 0)
    global.q_reward_qnt[a][i] = 20
    i++
    global.q_reward_id[a][i] = (557 << 0)
    global.q_reward_qnt[a][i] = 15
    i++
    global.q_reward_id[a][i] = (215 << 0)
    global.q_reward_qnt[a][i] = 80
    i++
    global.q_reward_id[a][i] = (544 << 0)
    global.q_reward_qnt[a][i] = 50
    i++
    global.q_reward_id[a][i] = (216 << 0)
    global.q_reward_qnt[a][i] = 80
    i++
    global.q_reward_id[a][i] = (543 << 0)
    global.q_reward_qnt[a][i] = 40
    i++
    global.q_reward_id[a][i] = (223 << 0)
    global.q_reward_qnt[a][i] = 80
    i++
    global.q_reward_id[a][i] = (554 << 0)
    global.q_reward_qnt[a][i] = 50
    i++
    global.q_reward_id[a][i] = (225 << 0)
    global.q_reward_qnt[a][i] = 70
    i++
    global.q_reward_id[a][i] = (555 << 0)
    global.q_reward_qnt[a][i] = 40
    i++
    global.q_reward_id[a][i] = (218 << 0)
    global.q_reward_qnt[a][i] = 70
    i++
    global.q_reward_id[a][i] = (548 << 0)
    global.q_reward_qnt[a][i] = 40
    i++
    global.q_reward_id[a][i] = (545 << 0)
    global.q_reward_qnt[a][i] = 80
    i++
    global.q_reward_id[a][i] = (214 << 0)
    global.q_reward_qnt[a][i] = 50
    i++
    global.q_reward_id[a][i] = (546 << 0)
    global.q_reward_qnt[a][i] = 25
    i++
    global.q_reward_id[a][i] = (542 << 0)
    global.q_reward_qnt[a][i] = 80
    i++
    global.q_reward_id[a][i] = (213 << 0)
    global.q_reward_qnt[a][i] = 50
    i++
    global.q_reward_id[a][i] = (541 << 0)
    global.q_reward_qnt[a][i] = 40
    i++
    global.q_reward_id[a][i] = (549 << 0)
    global.q_reward_qnt[a][i] = 80
    i++
    global.q_reward_id[a][i] = (219 << 0)
    global.q_reward_qnt[a][i] = 40
    i++
    global.q_reward_id[a][i] = (550 << 0)
    global.q_reward_qnt[a][i] = 20
    i++
    global.q_reward_id[a][i] = (551 << 0)
    global.q_reward_qnt[a][i] = 40
    i++
    global.q_reward_id[a][i] = (220 << 0)
    global.q_reward_qnt[a][i] = 25
    i++
    global.q_reward_id[a][i] = (552 << 0)
    global.q_reward_qnt[a][i] = 10
    i++
    global.q_reward_id[a][i] = (217 << 0)
    global.q_reward_qnt[a][i] = 50
    i++
    global.q_reward_id[a][i] = (547 << 0)
    global.q_reward_qnt[a][i] = 30
    i++
    global.q_reward_id[a][i] = (221 << 0)
    global.q_reward_qnt[a][i] = 25
    i++
    global.q_reward_id[a][i] = (553 << 0)
    global.q_reward_qnt[a][i] = 10
    i++
    a = (7 << 0)
    i = 0
    global.q_reward_id[a][i] = (253 << 0)
    global.q_reward_qnt[a][i] = 2
    i++
    global.q_reward_id[a][i] = (249 << 0)
    global.q_reward_qnt[a][i] = 2
    i++
    global.q_reward_id[a][i] = (269 << 0)
    global.q_reward_qnt[a][i] = 2
    i++
    global.q_reward_id[a][i] = (270 << 0)
    global.q_reward_qnt[a][i] = 1
    i++
    global.q_reward_id[a][i] = (250 << 0)
    global.q_reward_qnt[a][i] = 1
    i++
    global.q_reward_id[a][i] = (373 << 0)
    global.q_reward_qnt[a][i] = 2
    a = (8 << 0)
    i = 0
    global.q_reward_id[a][i] = (246 << 0)
    global.q_reward_qnt[a][i] = 1
    i++
    global.q_reward_id[a][i] = (248 << 0)
    global.q_reward_qnt[a][i] = 2
    i++
    global.q_reward_id[a][i] = (251 << 0)
    global.q_reward_qnt[a][i] = 1
    i++
    global.q_reward_id[a][i] = (274 << 0)
    global.q_reward_qnt[a][i] = 1
    i++
    a = (23 << 0)
    i = 0
    global.q_reward_id[a][i] = (241 << 0)
    global.q_reward_qnt[a][i] = 1
    i++
    global.q_reward_id[a][i] = (240 << 0)
    global.q_reward_qnt[a][i] = 1
    i++
    global.q_reward_id[a][i] = (238 << 0)
    global.q_reward_qnt[a][i] = 1
    i++
    global.q_reward_id[a][i] = (236 << 0)
    global.q_reward_qnt[a][i] = 1
    a = (24 << 0)
    i = 0
    global.q_reward_id[a][i] = (242 << 0)
    global.q_reward_qnt[a][i] = 1
    i++
    global.q_reward_id[a][i] = (239 << 0)
    global.q_reward_qnt[a][i] = 1
    i++
    global.q_reward_id[a][i] = (237 << 0)
    global.q_reward_qnt[a][i] = 1
    i++
    global.q_reward_id[a][i] = (235 << 0)
    global.q_reward_qnt[a][i] = 1
    a = (25 << 0)
    i = 0
    global.q_reward_id[a][i] = (241 << 0)
    global.q_reward_qnt[a][i] = 3
    i++
    global.q_reward_id[a][i] = (240 << 0)
    global.q_reward_qnt[a][i] = 3
    i++
    global.q_reward_id[a][i] = (238 << 0)
    global.q_reward_qnt[a][i] = 3
    i++
    global.q_reward_id[a][i] = (236 << 0)
    global.q_reward_qnt[a][i] = 3
    a = (31 << 0)
    i = 0
    global.q_reward_id[a][i] = (242 << 0)
    global.q_reward_qnt[a][i] = 2
    i++
    global.q_reward_id[a][i] = (239 << 0)
    global.q_reward_qnt[a][i] = 2
    i++
    global.q_reward_id[a][i] = (237 << 0)
    global.q_reward_qnt[a][i] = 2
    i++
    global.q_reward_id[a][i] = (235 << 0)
    global.q_reward_qnt[a][i] = 1
    a = (9 << 0)
    i = 0
    global.q_reward_id[a][i] = (47 << 0)
    global.q_reward_qnt[a][i] = 1
    i++
    global.q_reward_id[a][i] = (55 << 0)
    global.q_reward_qnt[a][i] = 1
    i++
    global.q_reward_id[a][i] = (38 << 0)
    global.q_reward_qnt[a][i] = 1
    a = (11 << 0)
    i = 0
    global.q_reward_id[a][i] = (34 << 0)
    global.q_reward_qnt[a][i] = 1
    i++
    global.q_reward_id[a][i] = (4 << 0)
    global.q_reward_qnt[a][i] = 1
    i++
    global.q_reward_id[a][i] = (23 << 0)
    global.q_reward_qnt[a][i] = 1
    i++
    global.q_reward_id[a][i] = (64 << 0)
    global.q_reward_qnt[a][i] = 1
    i++
    global.q_reward_id[a][i] = (55 << 0)
    global.q_reward_qnt[a][i] = 1
    a = (12 << 0)
    i = 0
    global.q_reward_id[a][i] = (47 << 0)
    global.q_reward_qnt[a][i] = 1
    i++
    global.q_reward_id[a][i] = (38 << 0)
    global.q_reward_qnt[a][i] = 1
    i++
    global.q_reward_id[a][i] = (80 << 0)
    global.q_reward_qnt[a][i] = 1
    i++
    global.q_reward_id[a][i] = (32 << 0)
    global.q_reward_qnt[a][i] = 1
    i++
    global.q_reward_id[a][i] = (28 << 0)
    global.q_reward_qnt[a][i] = 1
    a = (13 << 0)
    i = 0
    global.q_reward_id[a][i] = (61 << 0)
    global.q_reward_qnt[a][i] = 1
    i++
    global.q_reward_id[a][i] = (54 << 0)
    global.q_reward_qnt[a][i] = 1
    i++
    global.q_reward_id[a][i] = (21 << 0)
    global.q_reward_qnt[a][i] = 1
    i++
    global.q_reward_id[a][i] = (87 << 0)
    global.q_reward_qnt[a][i] = 1
    i++
    a = (14 << 0)
    i = 0
    global.q_reward_id[a][i] = (58 << 0)
    global.q_reward_qnt[a][i] = 1
    i++
    global.q_reward_id[a][i] = (50 << 0)
    global.q_reward_qnt[a][i] = 1
    i++
    global.q_reward_id[a][i] = (86 << 0)
    global.q_reward_qnt[a][i] = 1
    i++
    global.q_reward_id[a][i] = (77 << 0)
    global.q_reward_qnt[a][i] = 1
    i++
    a = (15 << 0)
    i = 0
    global.q_reward_id[a][i] = (36 << 0)
    global.q_reward_qnt[a][i] = 1
    i++
    a = (21 << 0)
    i = 0
    global.q_reward_id[a][i] = (281 << 0)
    global.q_reward_qnt[a][i] = 1
    i++
    a = (10 << 0)
    i = 0
    global.q_reward_id[a][i] = (448 << 0)
    global.q_reward_qnt[a][i] = 1
    i++
    global.q_reward_id[a][i] = (449 << 0)
    global.q_reward_qnt[a][i] = 1
    i++
    global.q_reward_id[a][i] = (447 << 0)
    global.q_reward_qnt[a][i] = 1
    a = (16 << 0)
    i = 0
    global.q_reward_id[a][i] = (231 << 0)
    global.q_reward_qnt[a][i] = 5
    i++
    global.q_reward_id[a][i] = (234 << 0)
    global.q_reward_qnt[a][i] = 2
    i++
    global.q_reward_id[a][i] = (222 << 0)
    global.q_reward_qnt[a][i] = 40
    i++
    global.q_reward_id[a][i] = (213 << 0)
    global.q_reward_qnt[a][i] = 150
    i++
    global.q_reward_id[a][i] = (219 << 0)
    global.q_reward_qnt[a][i] = 120
    i++
    global.q_reward_id[a][i] = (215 << 0)
    global.q_reward_qnt[a][i] = 200
    i++
    global.q_reward_id[a][i] = (223 << 0)
    global.q_reward_qnt[a][i] = 150
    i++
    global.q_reward_id[a][i] = (218 << 0)
    global.q_reward_qnt[a][i] = 150
    a = (17 << 0)
    i = 0
    global.q_reward_id[a][i] = (38 << 0)
    global.q_reward_qnt[a][i] = 1
    i++
    global.q_reward_id[a][i] = (240 << 0)
    global.q_reward_qnt[a][i] = 3
    i++
    global.q_reward_id[a][i] = (238 << 0)
    global.q_reward_qnt[a][i] = 3
    i++
    global.q_reward_id[a][i] = (236 << 0)
    global.q_reward_qnt[a][i] = 2
    i++
    global.q_reward_id[a][i] = (241 << 0)
    global.q_reward_qnt[a][i] = 3
    a = (18 << 0)
    i = 0
    global.q_reward_id[a][i] = (119 << 0)
    global.q_reward_qnt[a][i] = 1
    i++
    global.q_reward_id[a][i] = (113 << 0)
    global.q_reward_qnt[a][i] = 1
    i++
    global.q_reward_id[a][i] = (133 << 0)
    global.q_reward_qnt[a][i] = 1
    i++
    global.q_reward_id[a][i] = (183 << 0)
    global.q_reward_qnt[a][i] = 1
    i++
    global.q_reward_id[a][i] = (130 << 0)
    global.q_reward_qnt[a][i] = 1
    i++
    global.q_reward_id[a][i] = (154 << 0)
    global.q_reward_qnt[a][i] = 1
    i++
    global.q_reward_id[a][i] = (157 << 0)
    global.q_reward_qnt[a][i] = 1
    i++
    global.q_reward_id[a][i] = (210 << 0)
    global.q_reward_qnt[a][i] = 1
    i++
    global.q_reward_id[a][i] = (196 << 0)
    global.q_reward_qnt[a][i] = 1
    i++
    global.q_reward_id[a][i] = (202 << 0)
    global.q_reward_qnt[a][i] = 1
    i++
    global.q_reward_id[a][i] = (203 << 0)
    global.q_reward_qnt[a][i] = 1
    i++
    global.q_reward_id[a][i] = (206 << 0)
    global.q_reward_qnt[a][i] = 1
    i++
    global.q_reward_id[a][i] = (205 << 0)
    global.q_reward_qnt[a][i] = 1
    i++
    a = (19 << 0)
    i = 0
    global.q_reward_id[a][i] = (187 << 0)
    global.q_reward_qnt[a][i] = 1
    i++
    global.q_reward_id[a][i] = (184 << 0)
    global.q_reward_qnt[a][i] = 1
    i++
    global.q_reward_id[a][i] = (190 << 0)
    global.q_reward_qnt[a][i] = 1
    i++
    global.q_reward_id[a][i] = (192 << 0)
    global.q_reward_qnt[a][i] = 1
    a = (20 << 0)
    i = 0
    global.q_reward_id[a][i] = (208 << 0)
    global.q_reward_qnt[a][i] = 1
    i++
    global.q_reward_id[a][i] = (207 << 0)
    global.q_reward_qnt[a][i] = 1
    i++
    global.q_reward_id[a][i] = (211 << 0)
    global.q_reward_qnt[a][i] = 1
    a = (22 << 0)
    i = 0
    global.q_reward_id[a][i] = (120 << 0)
    global.q_reward_qnt[a][i] = 1
    i++
    global.q_reward_id[a][i] = (130 << 0)
    global.q_reward_qnt[a][i] = 1
    i++
    global.q_reward_id[a][i] = (113 << 0)
    global.q_reward_qnt[a][i] = 1
    i++
    global.q_reward_id[a][i] = (135 << 0)
    global.q_reward_qnt[a][i] = 1
    i++
    global.q_reward_id[a][i] = (150 << 0)
    global.q_reward_qnt[a][i] = 1
    i++
    global.q_reward_id[a][i] = (188 << 0)
    global.q_reward_qnt[a][i] = 1
    i++
    global.q_reward_id[a][i] = (185 << 0)
    global.q_reward_qnt[a][i] = 1
    i++
    global.q_reward_id[a][i] = (133 << 0)
    global.q_reward_qnt[a][i] = 1
    i++
    a = (26 << 0)
    i = 0
    global.q_reward_id[a][i] = (422 << 0)
    global.q_reward_qnt[a][i] = 1
    i++
    global.q_reward_id[a][i] = (429 << 0)
    global.q_reward_qnt[a][i] = 1
    i++
    a = (27 << 0)
    i = 0
    global.q_reward_id[a][i] = (429 << 0)
    global.q_reward_qnt[a][i] = 1
    i++
    global.q_reward_id[a][i] = (411 << 0)
    global.q_reward_qnt[a][i] = 1
    i++
    a = (28 << 0)
    i = 0
    global.q_reward_id[a][i] = (412 << 0)
    global.q_reward_qnt[a][i] = 1
    i++
    a = (29 << 0)
    i = 0
    global.q_reward_id[a][i] = (418 << 0)
    global.q_reward_qnt[a][i] = 1
    i++
    a = (30 << 0)
    i = 0
    global.q_reward_id[a][i] = (424 << 0)
    global.q_reward_qnt[a][i] = 1
    i++
    a = (32 << 0)
    i = 0
    global.q_reward_id[a][i] = (426 << 0)
    global.q_reward_qnt[a][i] = 1
    i++
    a = (33 << 0)
    i = 0
    global.q_reward_id[a][i] = (566 << 0)
    global.q_reward_qnt[a][i] = 1
    i++
    a = (34 << 0)
    i = 0
    global.q_reward_id[a][i] = (570 << 0)
    global.q_reward_qnt[a][i] = 1
    i++
    a = (35 << 0)
    i = 0
    global.q_reward_id[a][i] = (567 << 0)
    global.q_reward_qnt[a][i] = 1
    i++
    a = (36 << 0)
    i = 0
    global.q_reward_id[a][i] = (568 << 0)
    global.q_reward_qnt[a][i] = 1
    i++
    a = (37 << 0)
    i = 0
    global.q_reward_id[a][i] = (569 << 0)
    global.q_reward_qnt[a][i] = 1
    i++
    a = (38 << 0)
    i = 0
    global.q_reward_id[a][i] = (597 << 0)
    global.q_reward_qnt[a][i] = 1
    i++
    a = (0 << 0)
    global.list_reward_quest[a] = ds_list_create()
    repeat (4)
        ds_list_add(global.list_reward_quest[a], (4 << 0))
    repeat (4)
        ds_list_add(global.list_reward_quest[a], (1 << 0))
    repeat (2)
        ds_list_add(global.list_reward_quest[a], (7 << 0))
    repeat (2)
        ds_list_add(global.list_reward_quest[a], (23 << 0))
    repeat (2)
        ds_list_add(global.list_reward_quest[a], (18 << 0))
    repeat (1)
        ds_list_add(global.list_reward_quest[a], (5 << 0))
    repeat (1)
        ds_list_add(global.list_reward_quest[a], (2 << 0))
    a = (1 << 0)
    global.list_reward_quest[a] = ds_list_create()
    repeat (4)
        ds_list_add(global.list_reward_quest[a], (5 << 0))
    repeat (4)
        ds_list_add(global.list_reward_quest[a], (2 << 0))
    repeat (2)
        ds_list_add(global.list_reward_quest[a], (8 << 0))
    repeat (2)
        ds_list_add(global.list_reward_quest[a], (23 << 0))
    repeat (2)
        ds_list_add(global.list_reward_quest[a], (18 << 0))
    repeat (1)
        ds_list_add(global.list_reward_quest[a], (6 << 0))
    repeat (1)
        ds_list_add(global.list_reward_quest[a], (3 << 0))
    repeat (1)
        ds_list_add(global.list_reward_quest[a], (24 << 0))
    a = (4 << 0)
    global.list_reward_quest[a] = ds_list_create()
    repeat (1)
        ds_list_add(global.list_reward_quest[a], (10 << 0))
    a = (5 << 0)
    global.list_reward_quest[a] = ds_list_create()
    repeat (1)
        ds_list_add(global.list_reward_quest[a], (11 << 0))
    a = (6 << 0)
    global.list_reward_quest[a] = ds_list_create()
    repeat (1)
        ds_list_add(global.list_reward_quest[a], (12 << 0))
    a = (7 << 0)
    global.list_reward_quest[a] = ds_list_create()
    repeat (1)
        ds_list_add(global.list_reward_quest[a], (13 << 0))
    a = (8 << 0)
    global.list_reward_quest[a] = ds_list_create()
    repeat (1)
        ds_list_add(global.list_reward_quest[a], (14 << 0))
    a = (19 << 0)
    global.list_reward_quest[a] = ds_list_create()
    repeat (1)
        ds_list_add(global.list_reward_quest[a], (21 << 0))
    a = (10 << 0)
    global.list_reward_quest[a] = ds_list_create()
    repeat (1)
        ds_list_add(global.list_reward_quest[a], (16 << 0))
    a = (13 << 0)
    global.list_reward_quest[a] = ds_list_create()
    repeat (1)
        ds_list_add(global.list_reward_quest[a], (17 << 0))
    a = (3 << 0)
    global.list_reward_quest[a] = ds_list_create()
    repeat (1)
        ds_list_add(global.list_reward_quest[a], (22 << 0))
    a = (9 << 0)
    global.list_reward_quest[a] = ds_list_create()
    repeat (1)
        ds_list_add(global.list_reward_quest[a], (15 << 0))
    a = (14 << 0)
    global.list_reward_quest[a] = ds_list_create()
    repeat (1)
        ds_list_add(global.list_reward_quest[a], (26 << 0))
    a = (15 << 0)
    global.list_reward_quest[a] = ds_list_create()
    repeat (1)
        ds_list_add(global.list_reward_quest[a], (27 << 0))
    a = (16 << 0)
    global.list_reward_quest[a] = ds_list_create()
    repeat (1)
        ds_list_add(global.list_reward_quest[a], (28 << 0))
    a = (17 << 0)
    global.list_reward_quest[a] = ds_list_create()
    repeat (1)
        ds_list_add(global.list_reward_quest[a], (29 << 0))
    a = (18 << 0)
    global.list_reward_quest[a] = ds_list_create()
    repeat (1)
        ds_list_add(global.list_reward_quest[a], (30 << 0))
    a = (12 << 0)
    global.list_reward_quest[a] = ds_list_create()
    repeat (1)
        ds_list_add(global.list_reward_quest[a], (31 << 0))
    a = (11 << 0)
    global.list_reward_quest[a] = ds_list_create()
    repeat (1)
        ds_list_add(global.list_reward_quest[a], (25 << 0))
    a = (21 << 0)
    global.list_reward_quest[a] = ds_list_create()
    repeat (1)
        ds_list_add(global.list_reward_quest[a], (20 << 0))
    a = (22 << 0)
    global.list_reward_quest[a] = ds_list_create()
    repeat (1)
        ds_list_add(global.list_reward_quest[a], (32 << 0))
    a = (23 << 0)
    global.list_reward_quest[a] = ds_list_create()
    repeat (1)
        ds_list_add(global.list_reward_quest[a], (33 << 0))
    a = (24 << 0)
    global.list_reward_quest[a] = ds_list_create()
    repeat (1)
        ds_list_add(global.list_reward_quest[a], (34 << 0))
    a = (25 << 0)
    global.list_reward_quest[a] = ds_list_create()
    repeat (1)
        ds_list_add(global.list_reward_quest[a], (35 << 0))
    a = (26 << 0)
    global.list_reward_quest[a] = ds_list_create()
    repeat (1)
        ds_list_add(global.list_reward_quest[a], (36 << 0))
    a = (27 << 0)
    global.list_reward_quest[a] = ds_list_create()
    repeat (1)
        ds_list_add(global.list_reward_quest[a], (37 << 0))
    a = (28 << 0)
    global.list_reward_quest[a] = ds_list_create()
    repeat (1)
        ds_list_add(global.list_reward_quest[a], (38 << 0))
    for (i = 0; i < (173 << 0); i++)
    {
        for (j = 0; j < 7; j++)
        {
            global.quest_marker[i][j] = 0
            global.quest_marker_sub[i][j] = -1
            global.quest_text_obj[i][j] = ""
        }
    }
    a = (1 << 0)
    i = 0
    global.quest_id[a] = a
    global.quest_name[a] = "Kill Lazar"
    global.quest_type[a] = (0 << 0)
    global.quest_is_unique[a] = 1
    global.quest_unique_done[a] = 0
    global.quest_obj_to_kill[a][0] = 204
    global.quest_stage_completed[a] = 2
    global.quest_amount_now[a] = 0
    global.quest_amount_max[a] = 1
    global.quest_reward[a] = 6500
    global.quest_exp[a] = 50
    global.quest_liv_min[a] = 1
    global.quest_rep[a] = rew_rep[1]
    global.quest_reward_arr[a] = (14 << 0)
    global.quest_text[a][0] = "Are you ready for some real action? You have to kill Lazar, the leader of the forest bandits.\nHe is located in the police station of the village, maybe you have already met him during one of your hunts.\nPrepare yourself well, he is always surrounded by his guards.\nIt won't be easy to kill him, but afterwards you'll be able to freely enter the police station and take what you want."
    global.quest_text[a][1] = "Kill Lazar"
    global.quest_text[a][2] = quest_completed
    global.quest_text[a][3] = thank_for_help
    global.quest_kill_map[a] = -1
    a = (2 << 0)
    i = 0
    global.quest_id[a] = a
    global.quest_name[a] = "First steps p.1"
    global.quest_is_unique[a] = 1
    global.quest_unique_done[a] = 0
    global.quest_stage_completed[a] = 2
    global.quest_reward[a] = rew_money[0]
    global.quest_exp[a] = rew_exp[1]
    global.quest_rep[a] = rew_rep[0]
    global.quest_liv_min[a] = 1
    global.quest_reward_arr[a] = (4 << 0)
    global.quest_text[a][0] = "Hey stranger! Welcome to the ZERO Sievert bunker.\nI don't know how you got here and frankly I don't care.\nIt's nothing personal, it's just that we see a lot of new faces here and only a few of them come back, so I won't waste my time remembering yours for now.\nFirst let's see what you can do, I'll give you a simple job: go to the forest and survive.\nGood luck!"
    global.quest_text[a][1] = "Kill 5 bandits in the forest"
    global.quest_text[a][2] = quest_completed
    global.quest_text[a][3] = thank_for_help
    scr_quest_create_survive_map(a, 0, 1, (1 << 0))
    a = (3 << 0)
    i = 0
    global.quest_id[a] = a
    global.quest_name[a] = "First steps p.2"
    global.quest_is_unique[a] = 1
    global.quest_unique_done[a] = 0
    global.quest_stage_completed[a] = 2
    global.quest_reward[a] = rew_money[0]
    global.quest_exp[a] = rew_exp[1]
    global.quest_rep[a] = rew_rep[0]
    global.quest_liv_min[a] = 1
    global.quest_reward_arr[a] = (5 << 0)
    global.quest_text[a][0] = "Are you still alive? Fantastic!\nLooks like you have potential but it's still too early to tell, let's see how you do in combat.\nIf you survive I'll alert the Green Army that a new Hunter has arrived. I'll make sure you can get into their bunker area."
    global.quest_text[a][1] = "Survive the forest 2 times"
    global.quest_text[a][2] = quest_completed
    global.quest_text[a][3] = thank_for_help
    scr_quest_create_kill(a, 0, 5, "Bandits", (1 << 0), (5 << 0), (6 << 0), (1 << 0), (3 << 0))
    scr_quest_create_kill(a, 1, 5, -1, (1 << 0), (25 << 0))
    a = (4 << 0)
    i = 0
    global.quest_id[a] = a
    global.quest_name[a] = "Valuable item"
    global.quest_is_unique[a] = 1
    global.quest_unique_done[a] = 0
    global.quest_stage_completed[a] = 2
    global.quest_reward[a] = rew_money[0]
    global.quest_exp[a] = rew_exp[1]
    global.quest_rep[a] = rew_rep[0]
    global.quest_liv_min[a] = 1
    global.quest_reward_arr[a] = (11 << 0)
    global.quest_text[a][0] = "Very good! The Green Army grants you access to their bunker area. You should go and talk to them, they can sell you new equipment and give you some work to do.\nOkay, back to us! So... When the bandits took over the village in the forest, an old friend of mine left behind an item that is considered very valuable these days.\nThe item should be inside a bag in the southern part of the village, go there and retrieve it."
    global.quest_text[a][1] = "Retrieve the valuable item"
    global.quest_text[a][2] = quest_completed
    global.quest_text[a][3] = thank_for_help
    scr_quest_create_collect(a, 0, 1, (573 << 0))
    global.quest_text_obj[a][0] = "Retrieve the valuable item"
    a = (5 << 0)
    i = 0
    global.quest_id[a] = a
    global.quest_name[a] = "Smoking kills p.1"
    global.quest_is_unique[a] = 1
    global.quest_unique_done[a] = 0
    global.quest_stage_completed[a] = 2
    global.quest_reward[a] = rew_money[0]
    global.quest_exp[a] = rew_exp[1]
    global.quest_rep[a] = rew_rep[0]
    global.quest_liv_min[a] = 1
    global.quest_reward_arr[a] = (10 << 0)
    global.quest_text[a][0] = "Yeah, I know. Smoking kills, but I don't know how long we're going to survive here anyway, so you might as well indulge a bit, right?\nI need a lot of cigarettes to build up a stock. \nIf you find any blue ones don't sell them, just keep them. I'll need them later on."
    global.quest_text[a][1] = "Find 10 red cigarette"
    global.quest_text[a][2] = quest_completed
    global.quest_text[a][3] = thank_for_help
    scr_quest_create_collect(a, 0, 8, (279 << 0))
    scr_quest_create_collect(a, 1, 10, (328 << 0))
    scr_quest_create_collect(a, 2, 3, (329 << 0))
    scr_quest_create_collect(a, 3, 2, (342 << 0))
    a = (6 << 0)
    i = 0
    global.quest_id[a] = a
    global.quest_name[a] = "Smoking kills p.2"
    global.quest_is_unique[a] = 1
    global.quest_unique_done[a] = 0
    global.quest_stage_completed[a] = 2
    global.quest_reward[a] = rew_money[4]
    global.quest_exp[a] = rew_exp[4]
    global.quest_rep[a] = rew_rep[0]
    global.quest_liv_min[a] = 1
    global.quest_reward_arr[a] = (4 << 0)
    global.quest_text[a][0] = "Ok hunter, now if by chance you could also bring me some blue ones it would be great!.\nThey are of a much higher quality."
    global.quest_text[a][1] = "Find 5 blue cigarette"
    global.quest_text[a][2] = quest_completed
    global.quest_text[a][3] = thank_for_help
    scr_quest_create_collect(a, 0, 8, (280 << 0))
    scr_quest_create_collect(a, 1, 1, (395 << 0))
    a = (7 << 0)
    i = 0
    global.quest_id[a] = a
    global.quest_name[a] = "The lost convoy"
    global.quest_is_unique[a] = 1
    global.quest_unique_done[a] = 0
    global.quest_stage_completed[a] = 2
    global.quest_reward[a] = rew_money[0]
    global.quest_exp[a] = rew_exp[1]
    global.quest_rep[a] = rew_rep[0]
    global.quest_liv_min[a] = 1
    global.quest_reward_arr[a] = (0 << 0)
    global.quest_text[a][0] = "We lost contact with a convoy carrying supplies for the bunker.\nWhen the transmission stopped it was in the forest, go there and find out what happened."
    global.quest_text[a][1] = "Find 5 blue cigarette"
    global.quest_text[a][2] = quest_completed
    global.quest_text[a][3] = thank_for_help
    scr_quest_create_approach(a, 0, 877, 80, (1 << 0))
    global.quest_marker[a][0] = 1
    global.quest_marker_sub[a][0] = 13
    global.quest_text_obj[a][0] = "Find the lost convoy"
    a = (8 << 0)
    i = 0
    global.quest_id[a] = a
    global.quest_name[a] = "Vendetta"
    global.quest_is_unique[a] = 1
    global.quest_unique_done[a] = 0
    global.quest_stage_completed[a] = 2
    global.quest_reward[a] = rew_money[3]
    global.quest_exp[a] = rew_exp[2]
    global.quest_rep[a] = rew_rep[0]
    global.quest_liv_min[a] = 1
    global.quest_reward_arr[a] = (5 << 0)
    global.quest_text[a][0] = "Damn it! Was it the bandits then? I'm not surprised, they’re always causing a trouble.\nIt's time for revenge, kill as many bandits as you can, Hunter."
    global.quest_text[a][1] = "Survive the forest 2 times"
    global.quest_text[a][2] = quest_completed
    global.quest_text[a][3] = thank_for_help
    scr_quest_create_kill(a, 0, 20, "Bandits", -1, (5 << 0), (6 << 0), (1 << 0), (3 << 0))
    a = (9 << 0)
    i = 0
    global.quest_id[a] = a
    global.quest_name[a] = "Survivalist: Forest p.1"
    global.quest_is_unique[a] = 1
    global.quest_unique_done[a] = 0
    global.quest_stage_completed[a] = 2
    global.quest_reward[a] = rew_money[2]
    global.quest_exp[a] = rew_exp[2]
    global.quest_rep[a] = rew_rep[0]
    global.quest_liv_min[a] = 1
    global.quest_reward_arr[a] = (1 << 0)
    global.quest_text[a][0] = "I see that you are becoming familiar with the hunts.\nLet's see what you are capable of, I am ready to pay you well if you can survive in these conditions.\nGood luck!"
    global.quest_text[a][1] = "Survive the forest 2 times"
    global.quest_text[a][2] = quest_completed
    global.quest_text[a][3] = thank_for_help
    scr_quest_create_survive_min_exp(a, 0, 1, (1 << 0), 200)
    scr_quest_create_survive_min_roubles(a, 1, 1, (1 << 0), 8000)
    a = (10 << 0)
    i = 0
    global.quest_id[a] = a
    global.quest_name[a] = "Survivalist: Forest p.2"
    global.quest_is_unique[a] = 1
    global.quest_unique_done[a] = 0
    global.quest_stage_completed[a] = 2
    global.quest_reward[a] = rew_money[2]
    global.quest_exp[a] = rew_exp[4]
    global.quest_rep[a] = rew_rep[0]
    global.quest_liv_min[a] = 1
    global.quest_reward_arr[a] = (19 << 0)
    global.quest_text[a][0] = "Not bad Hunter, let's see if you can now beat my record in the forest"
    global.quest_text[a][1] = "Survive the forest 2 times"
    global.quest_text[a][2] = quest_completed
    global.quest_text[a][3] = thank_for_help
    scr_quest_create_survive_min_exp(a, 0, 1, (1 << 0), 350)
    scr_quest_create_survive_min_roubles(a, 1, 1, (1 << 0), 15000)
    a = (11 << 0)
    i = 0
    global.quest_id[a] = a
    global.quest_name[a] = "Supply p.1"
    global.quest_is_unique[a] = 1
    global.quest_unique_done[a] = 0
    global.quest_stage_completed[a] = 2
    global.quest_reward[a] = rew_money[1]
    global.quest_exp[a] = rew_exp[1]
    global.quest_rep[a] = rew_rep[0]
    global.quest_liv_min[a] = 1
    global.quest_reward_arr[a] = (0 << 0)
    global.quest_text[a][0] = "Hey Hunter!\nRecently, few supplies have arrived and people still need to eat.\nWe could use some help replenishing our supplies."
    global.quest_text[a][1] = "Find 10 bread"
    global.quest_text[a][2] = quest_completed
    global.quest_text[a][3] = thank_for_help
    scr_quest_create_collect(a, 0, 5, (245 << 0))
    scr_quest_create_collect(a, 1, 5, (269 << 0))
    scr_quest_create_collect(a, 2, 1, (246 << 0))
    a = (12 << 0)
    i = 0
    global.quest_id[a] = a
    global.quest_name[a] = "Supply p.2"
    global.quest_is_unique[a] = 1
    global.quest_unique_done[a] = 0
    global.quest_stage_completed[a] = 2
    global.quest_reward[a] = rew_money[2]
    global.quest_exp[a] = rew_exp[2]
    global.quest_rep[a] = rew_rep[0]
    global.quest_liv_min[a] = 1
    global.quest_reward_arr[a] = (1 << 0)
    global.quest_text[a][0] = "Great!\nNow that we're settled on the essentials, I'd like you to bring me something more lasting food, like canned food."
    global.quest_text[a][1] = "Find 3 generic chocolate"
    global.quest_text[a][2] = quest_completed
    global.quest_text[a][3] = thank_for_help
    scr_quest_create_collect(a, 0, 8, (243 << 0))
    scr_quest_create_collect(a, 1, 8, (244 << 0))
    scr_quest_create_collect(a, 2, 3, (251 << 0))
    a = (13 << 0)
    i = 0
    global.quest_id[a] = a
    global.quest_name[a] = "Chocolate for everyone"
    global.quest_is_unique[a] = 1
    global.quest_unique_done[a] = 0
    global.quest_stage_completed[a] = 2
    global.quest_reward[a] = rew_money[4]
    global.quest_exp[a] = rew_exp[2]
    global.quest_rep[a] = rew_rep[0]
    global.quest_liv_min[a] = 1
    global.quest_reward_arr[a] = (1 << 0)
    global.quest_text[a][0] = "Chocolate is becoming a luxury good now, bring me some. I will pay you well"
    global.quest_text[a][1] = "Find 3 generic chocolate"
    global.quest_text[a][2] = quest_completed
    global.quest_text[a][3] = thank_for_help
    scr_quest_create_collect(a, 0, 8, (248 << 0))
    scr_quest_create_collect(a, 1, 4, (247 << 0))
    a = (15 << 0)
    i = 0
    global.quest_id[a] = a
    global.quest_name[a] = "No more barks"
    global.quest_is_unique[a] = 1
    global.quest_unique_done[a] = 0
    global.quest_stage_completed[a] = 2
    global.quest_reward[a] = rew_money[2]
    global.quest_exp[a] = rew_exp[1]
    global.quest_rep[a] = rew_rep[0]
    global.quest_liv_min[a] = 1
    global.quest_reward_arr[a] = (0 << 0)
    global.quest_text[a][0] = "Have you heard the latest news? A group of Hunters have been attacked by a pack of wolves, their numbers have increased a lot lately and this is causing us problems in moving around the area.\nSomeone's got to do the dirty work.\nIf you want the job, it's yours."
    global.quest_text[a][1] = "Kill 15 wolfs"
    global.quest_text[a][2] = quest_completed
    global.quest_text[a][3] = thank_for_help
    scr_quest_create_kill(a, 0, 15, -1, (1 << 0), (25 << 0))
    a = (17 << 0)
    i = 0
    global.quest_id[a] = a
    global.quest_name[a] = "Cutlery"
    global.quest_is_unique[a] = 1
    global.quest_unique_done[a] = 0
    global.quest_stage_completed[a] = 2
    global.quest_reward[a] = rew_money[0]
    global.quest_exp[a] = rew_exp[0]
    global.quest_rep[a] = rew_rep[0]
    global.quest_liv_min[a] = 1
    global.quest_reward_arr[a] = (1 << 0)
    global.quest_text[a][0] = "Hey Hunter!\nI have a very simple but boring job to do. \nThese animals that live here keep stealing my cutlery once they finish eating, assholes. I'd like to see them run a bar in this place without going crazy.\nAnyway, I need forks, knives and spoons.\nBring them to me."
    global.quest_text[a][1] = "Find 8 forks"
    global.quest_text[a][2] = quest_completed
    global.quest_text[a][3] = thank_for_help
    scr_quest_create_collect(a, 0, 8, (331 << 0))
    scr_quest_create_collect(a, 1, 8, (332 << 0))
    scr_quest_create_collect(a, 2, 8, (333 << 0))
    a = (14 << 0)
    i = 0
    global.quest_id[a] = a
    global.quest_name[a] = "What's on the flash drive?"
    global.quest_is_unique[a] = 1
    global.quest_unique_done[a] = 0
    global.quest_stage_completed[a] = 2
    global.quest_reward[a] = rew_money[0]
    global.quest_exp[a] = rew_exp[0]
    global.quest_rep[a] = rew_rep[0]
    global.quest_liv_min[a] = 1
    global.quest_reward_arr[a] = (1 << 0)
    global.quest_text[a][0] = "Hunter! Last night I had the strangest dream!\nI don't know for what reason but I had to find two flash drives and take them to a strange guy with a beanie. The crazy thing was that I couldn't find these flash drives anywhere, ANYWHERE!\nCan you imagine what that feels like? To have to find two flash drives but not be able to do it?\nWell, you'll figure it out for yourself. Find two and bring them to me"
    global.quest_text[a][1] = "Find 8 forks"
    global.quest_text[a][2] = quest_completed
    global.quest_text[a][3] = thank_for_help
    scr_quest_create_collect(a, 0, 2, (312 << 0))
    a = (18 << 0)
    i = 0
    global.quest_id[a] = a
    global.quest_name[a] = "What's cooking?"
    global.quest_is_unique[a] = 1
    global.quest_unique_done[a] = 0
    global.quest_stage_completed[a] = 2
    global.quest_reward[a] = rew_money[2]
    global.quest_exp[a] = rew_exp[2]
    global.quest_rep[a] = rew_rep[0]
    global.quest_liv_min[a] = 1
    global.quest_reward_arr[a] = (1 << 0)
    global.quest_text[a][0] = "Are you up for a simple job? I need a few things for my kitchen."
    global.quest_text[a][1] = "Find 2 cooking pot"
    global.quest_text[a][2] = quest_completed
    global.quest_text[a][3] = thank_for_help
    scr_quest_create_collect(a, 0, 4, (349 << 0))
    scr_quest_create_collect(a, 1, 30, (346 << 0))
    scr_quest_create_collect(a, 2, 30, (347 << 0))
    a = (16 << 0)
    i = 0
    global.quest_id[a] = a
    global.quest_name[a] = "New arrivals"
    global.quest_is_unique[a] = 1
    global.quest_unique_done[a] = 0
    global.quest_stage_completed[a] = 2
    global.quest_reward[a] = rew_money[2]
    global.quest_exp[a] = rew_exp[1]
    global.quest_rep[a] = rew_rep[0]
    global.quest_liv_min[a] = 1
    global.quest_reward_arr[a] = (15 << 0)
    global.quest_text[a][0] = "Very interesting. From the flash drives you brought me I found out that there is a lot of movement in the port area of the industrial zone, go there and find out what it is all about."
    global.quest_text[a][1] = "Find 2 cooking pot"
    global.quest_text[a][2] = quest_completed
    global.quest_text[a][3] = thank_for_help
    scr_quest_create_approach(a, 0, 878, 96, (3 << 0))
    global.quest_text_obj[a][0] = "Investigate the port area of the industrial map"
    a = (19 << 0)
    i = 0
    global.quest_id[a] = a
    global.quest_name[a] = "The lost backpack"
    global.quest_is_unique[a] = 1
    global.quest_unique_done[a] = 0
    global.quest_stage_completed[a] = 2
    global.quest_reward[a] = rew_money[2]
    global.quest_exp[a] = rew_exp[1]
    global.quest_rep[a] = rew_rep[0]
    global.quest_liv_min[a] = 1
    global.quest_reward_arr[a] = (1 << 0)
    global.quest_text[a][0] = "We lost contact with two hunters. It appears they were attacked in the forest.\nFrom the latest transmissions it seems that one stayed in the forest and the other escaped towards the makeshift camp.\nIn any case I doubt they are still alive, search for their bodies and bring me their equipment before the bandits arrive."
    global.quest_text[a][1] = "Find 2 cooking pot"
    global.quest_text[a][2] = quest_completed
    global.quest_text[a][3] = thank_for_help
    scr_quest_create_retrieve(a, 0, (355 << 0), 167, (1 << 0))
    global.quest_marker[a][0] = 1
    global.quest_marker_sub[a][0] = 12
    global.quest_text_obj[a][0] = "Retrieve the equipment in the forest"
    scr_quest_create_retrieve(a, 1, (356 << 0), 168, (2 << 0))
    global.quest_marker[a][1] = 1
    global.quest_marker_sub[a][1] = 12
    global.quest_text_obj[a][1] = "Retrieve the equipment in the makeshift camp"
    a = (20 << 0)
    i = 0
    global.quest_id[a] = a
    global.quest_name[a] = "Survivalist: Makeshift camp p.1"
    global.quest_is_unique[a] = 1
    global.quest_unique_done[a] = 0
    global.quest_stage_completed[a] = 2
    global.quest_reward[a] = rew_money[0]
    global.quest_exp[a] = rew_exp[1]
    global.quest_rep[a] = rew_rep[0]
    global.quest_liv_min[a] = 1
    global.quest_reward_arr[a] = (6 << 0)
    global.quest_text[a][0] = "Ready to test your limits again? Are you up for it?"
    global.quest_text[a][1] = "Survive the forest 2 times"
    global.quest_text[a][2] = quest_completed
    global.quest_text[a][3] = thank_for_help
    scr_quest_create_survive_min_exp(a, 0, 1, (2 << 0), 250)
    scr_quest_create_survive_min_roubles(a, 1, 1, (2 << 0), 8000)
    a = (21 << 0)
    i = 0
    global.quest_id[a] = a
    global.quest_name[a] = "Survivalist: Makeshift camp p.2"
    global.quest_is_unique[a] = 1
    global.quest_unique_done[a] = 0
    global.quest_stage_completed[a] = 2
    global.quest_reward[a] = rew_money[0]
    global.quest_exp[a] = rew_exp[1]
    global.quest_rep[a] = rew_rep[0]
    global.quest_liv_min[a] = 1
    global.quest_reward_arr[a] = (3 << 0)
    global.quest_text[a][0] = "I don't think you can make it this time."
    global.quest_text[a][1] = "Survive the forest 2 times"
    global.quest_text[a][2] = quest_completed
    global.quest_text[a][3] = thank_for_help
    scr_quest_create_survive_min_exp(a, 0, 1, (2 << 0), 400)
    scr_quest_create_survive_min_roubles(a, 1, 1, (2 << 0), 16000)
    a = (89 << 0)
    i = 0
    global.quest_id[a] = a
    global.quest_name[a] = "Documents p.1"
    global.quest_is_unique[a] = 1
    global.quest_unique_done[a] = 0
    global.quest_stage_completed[a] = 2
    global.quest_reward[a] = rew_money[1]
    global.quest_exp[a] = rew_exp[2]
    global.quest_rep[a] = rew_rep[0]
    global.quest_liv_min[a] = 1
    global.quest_reward_arr[a] = (1 << 0)
    global.quest_text[a][0] = "One of our hunters and my personal friend was on a special mission, trying to find the location of valuable documents.\nWe lost his contact when he entered the makeshift camp, fortunately we still have his last detected position.\nGo to the makeshift camp and find out what happened to him.\nI hope he is still alive..."
    global.quest_text[a][1] = "Find the missing Hunter"
    global.quest_text[a][2] = quest_completed
    global.quest_text[a][3] = thank_for_help
    scr_quest_create_approach(a, 0, 871, 16, (2 << 0))
    global.quest_marker[a][0] = 1
    global.quest_marker_sub[a][0] = 0
    global.quest_text_obj[a][0] = "Find the missing Hunter"
    a = (90 << 0)
    i = 0
    global.quest_id[a] = a
    global.quest_name[a] = "Documents p.2"
    global.quest_is_unique[a] = 1
    global.quest_unique_done[a] = 0
    global.quest_stage_completed[a] = 2
    global.quest_reward[a] = rew_money[2]
    global.quest_exp[a] = rew_exp[3]
    global.quest_rep[a] = rew_rep[2]
    global.quest_liv_min[a] = 1
    global.quest_reward_arr[a] = (4 << 0)
    global.quest_text[a][0] = "So he's dead... May he rest in peace.\nThe good news is that he found the location of the documents, from his notes it seems they are in the police station in the forest village.\nThe bad news is that you'll have to fight your way in, as you know there are much more organised bandits stationed there.\nThe documents should be inside a safe, when you're inside the station try looking around.\nGood luck Hunter!"
    global.quest_text[a][1] = "Retrieve the documents"
    global.quest_text[a][2] = quest_completed
    global.quest_text[a][3] = thank_for_help
    scr_quest_create_collect(a, 0, 1, (574 << 0))
    global.quest_text_obj[a][0] = "Retrieve the documents"
    a = (24 << 0)
    i = 0
    global.quest_id[a] = a
    global.quest_name[a] = "Makeshift camp"
    global.quest_is_unique[a] = 1
    global.quest_unique_done[a] = 0
    global.quest_stage_completed[a] = 2
    global.quest_reward[a] = rew_money[0]
    global.quest_exp[a] = rew_exp[1]
    global.quest_rep[a] = rew_rep[0]
    global.quest_liv_min[a] = 1
    global.quest_reward_arr[a] = (4 << 0)
    global.quest_text[a][0] = "We detected movement in the makeshift camp by bandits, do some hunting and get rid of them."
    global.quest_text[a][1] = "Kill 5 bandits in the forest"
    global.quest_text[a][2] = quest_completed
    global.quest_text[a][3] = thank_for_help
    scr_quest_create_survive_map(a, 0, 3, (2 << 0))
    scr_quest_create_kill(a, 1, 15, "Bandits", (2 << 0), (5 << 0), (6 << 0), (1 << 0), (3 << 0))
    a = (25 << 0)
    i = 0
    global.quest_id[a] = a
    global.quest_name[a] = "The missing group p.1"
    global.quest_is_unique[a] = 1
    global.quest_unique_done[a] = 0
    global.quest_stage_completed[a] = 2
    global.quest_reward[a] = rew_money[1]
    global.quest_exp[a] = rew_exp[1]
    global.quest_rep[a] = rew_rep[0]
    global.quest_liv_min[a] = 1
    global.quest_reward_arr[a] = (1 << 0)
    global.quest_text[a][0] = "Hey Hunter!\nI finished analyzing the documents. There are many drawings of a strange purple crystal, from the directions it seems to be in the swamp.\nThe documents don't seem to contain any trace of scientific data and I don't know what it could be, I sent a team to the swamp to check it out but I lost their contact.\nWe know their last location but I have a bad feeling. When you lose contact with someone out there you already know what happened....\nGo to the swamp and head for their last known position, maybe you can find out more."
    global.quest_text[a][1] = "Find the missing group"
    global.quest_text[a][2] = quest_completed
    global.quest_text[a][3] = thank_for_help
    scr_quest_create_approach(a, 0, 872, 16, (4 << 0))
    global.quest_marker[a][0] = 1
    global.quest_marker_sub[a][0] = 11
    global.quest_text_obj[a][0] = "Find the missing group"
    a = (26 << 0)
    i = 0
    global.quest_id[a] = a
    global.quest_name[a] = "The missing group p.2"
    global.quest_is_unique[a] = 1
    global.quest_unique_done[a] = 0
    global.quest_stage_completed[a] = 2
    global.quest_reward[a] = rew_money[3]
    global.quest_exp[a] = rew_exp[4]
    global.quest_rep[a] = rew_rep[1]
    global.quest_liv_min[a] = 1
    global.quest_reward_arr[a] = (8 << 0)
    global.quest_text[a][0] = "Damn it!\nA few reports have come in from scouts saying they've seen an incredible beast, or rather, they said they've seen their companion torn to pieces by this beast.\nThe group seems to have come into contact with it.\nMost likely it will still be in the swamp, I am not asking you to take this huge risk but if you do, the pay will be very high.\nGood luck Hunter!"
    global.quest_text[a][1] = "Kill the monster"
    global.quest_text[a][2] = quest_completed
    global.quest_text[a][3] = thank_for_help
    scr_quest_create_contract(a, 0, 210, (4 << 0))
    a = (27 << 0)
    i = 0
    global.quest_id[a] = a
    global.quest_name[a] = "Stylish one"
    global.quest_is_unique[a] = 1
    global.quest_unique_done[a] = 0
    global.quest_stage_completed[a] = 2
    global.quest_reward[a] = 10000
    global.quest_exp[a] = 250
    global.quest_rep[a] = rew_rep[0]
    global.quest_liv_min[a] = 1
    global.quest_reward_arr[a] = (28 << 0)
    global.quest_text[a][0] = "Have you been to the mall yet? In any case, you must know about the guy who hangs around inside, a very tough guy.\nAnyway, his armour is of incredible quality. If you kill him a few times, I'll give you one."
    global.quest_text[a][1] = "Survive the forest 2 times"
    global.quest_text[a][2] = quest_completed
    global.quest_text[a][3] = thank_for_help
    scr_quest_create_kill(a, 0, 15, -1, (6 << 0), (8 << 0))
    a = (28 << 0)
    i = 0
    global.quest_id[a] = a
    global.quest_name[a] = "Secret documents"
    global.quest_is_unique[a] = 1
    global.quest_unique_done[a] = 0
    global.quest_stage_completed[a] = 2
    global.quest_reward[a] = rew_money[0]
    global.quest_exp[a] = rew_exp[0]
    global.quest_rep[a] = rew_rep[1]
    global.quest_liv_min[a] = 1
    global.quest_reward_arr[a] = (23 << 0)
    global.quest_text[a][0] = "Hey! The bartender told me about you. Sounds like you have potential. Well, let's see what you're capable of.\nA while ago, bandits occupied the village in the middle of the forest, it seems they are more organised and stronger than the usual bandits so you'll have to be careful.\nWhat I want you to do is retrieve some documents from a corpse in the village, it should be in the north area, outside a house.\nWe don't know the exact location so I can't put it on the map, you'll have to look for it yourself.\nGood luck!"
    global.quest_text[a][1] = "Retrieve documents located in the village"
    global.quest_text[a][2] = quest_completed
    global.quest_text[a][3] = thank_for_help
    scr_quest_create_collect(a, 0, 1, (363 << 0))
    global.quest_text_obj[a][0] = "Retrieve the documents"
    a = (29 << 0)
    i = 0
    global.quest_id[a] = a
    global.quest_name[a] = "The old man"
    global.quest_is_unique[a] = 1
    global.quest_unique_done[a] = 0
    global.quest_stage_completed[a] = 2
    global.quest_reward[a] = 15000
    global.quest_exp[a] = rew_exp[4]
    global.quest_rep[a] = rew_rep[0]
    global.quest_liv_min[a] = 1
    global.quest_reward_arr[a] = (19 << 0)
    global.quest_text[a][0] = "This is more of a personal favour than a real job.\nAfter the explosion at the nuclear power plant, we were instructed to evacuate all the surrounding areas.\nWhen we arrived at the forest my men came across an old man, I think his name was Igor.\nThe fact is that the old man did not want to leave his home and threatened my men, he was very angry. \nWe have a few men stationed in the forest and I would not want Igor to interfere with our operations, so I ask you to take care of him, it should not be a problem, he is old and weak now."
    global.quest_text[a][1] = "Kill Igor"
    global.quest_text[a][2] = quest_completed
    global.quest_text[a][3] = thank_for_help
    scr_quest_create_contract(a, 0, 730, (1 << 0))
    global.quest_text_obj[a][0] = "Eliminate Igor"
    a = (30 << 0)
    i = 0
    global.quest_id[a] = a
    global.quest_name[a] = "Sawmill p.1"
    global.quest_is_unique[a] = 1
    global.quest_unique_done[a] = 0
    global.quest_stage_completed[a] = 2
    global.quest_reward[a] = rew_money[0]
    global.quest_exp[a] = rew_exp[0]
    global.quest_rep[a] = rew_rep[0]
    global.quest_liv_min[a] = 1
    global.quest_reward_arr[a] = (0 << 0)
    global.quest_text[a][0] = "Since you were successful with the last mission, I want to offer you a similar job.\nThis time the destination is the sawmill in the forest. Unfortunately we don't know the exact location but you should be able to find it by looking at the map, it should be a grey rectangle.\nThere's no need to fight, you just need to do a survey. Just approach the sawmill to complete the mission."
    global.quest_text[a][1] = "Approach the sawmill"
    global.quest_text[a][2] = quest_completed
    global.quest_text[a][3] = thank_for_help
    scr_quest_create_approach(a, 0, 873, 460, (1 << 0))
    global.quest_text_obj[a][0] = "Find the sawmill"
    a = (31 << 0)
    i = 0
    global.quest_id[a] = a
    global.quest_name[a] = "Sawmill p.2"
    global.quest_is_unique[a] = 1
    global.quest_unique_done[a] = 0
    global.quest_stage_completed[a] = 2
    global.quest_reward[a] = 3500
    global.quest_exp[a] = 110
    global.quest_rep[a] = rew_rep[1]
    global.quest_liv_min[a] = 1
    global.quest_reward_arr[a] = (5 << 0)
    global.quest_text[a][0] = "Ok looks like the sawmill is currently occupied by the bandits. I'll explain what you have to do.\nInside there is a safe with a USB stick, it should contain valuable information for the Green Army, all you have to do is retrieve it.\nObviously this involves killing some bandits. Be careful Hunter, you might find a lot of them."
    global.quest_text[a][1] = "Find the USB drive in the sawmill"
    global.quest_text[a][2] = quest_completed
    global.quest_text[a][3] = thank_for_help
    scr_quest_create_collect(a, 0, 1, (364 << 0))
    a = (34 << 0)
    i = 0
    global.quest_id[a] = a
    global.quest_name[a] = "Ghoul destroyer p.1"
    global.quest_is_unique[a] = 1
    global.quest_unique_done[a] = 0
    global.quest_stage_completed[a] = 2
    global.quest_reward[a] = rew_money[0]
    global.quest_exp[a] = rew_exp[1]
    global.quest_rep[a] = rew_rep[0]
    global.quest_liv_min[a] = 1
    global.quest_reward_arr[a] = (11 << 0)
    global.quest_text[a][0] = "Hey Hunter!\nAre you up for a simple quest? You have to eliminate a few ghouls, nothing easier."
    global.quest_text[a][1] = "Kill 40 Ghouls"
    global.quest_text[a][2] = quest_completed
    global.quest_text[a][3] = thank_for_help
    scr_quest_create_kill(a, 0, 12, -1, -1, (34 << 0))
    a = (35 << 0)
    i = 0
    global.quest_id[a] = a
    global.quest_name[a] = "Ghoul destroyer p.2"
    global.quest_is_unique[a] = 1
    global.quest_unique_done[a] = 0
    global.quest_stage_completed[a] = 2
    global.quest_reward[a] = rew_money[3]
    global.quest_exp[a] = rew_exp[4]
    global.quest_rep[a] = rew_rep[0]
    global.quest_liv_min[a] = 1
    global.quest_reward_arr[a] = (9 << 0)
    global.quest_text[a][0] = "If you liked the last work you will also like this one.\nThere is always a need to eliminate threats in the area.\nIt's an optional job but the rewards will be high."
    global.quest_text[a][1] = "Kill 40 Ghouls"
    global.quest_text[a][2] = quest_completed
    global.quest_text[a][3] = thank_for_help
    scr_quest_create_kill(a, 0, 40, -1, -1, (34 << 0))
    a = (32 << 0)
    i = 0
    global.quest_id[a] = a
    global.quest_name[a] = "Equipment p.1"
    global.quest_is_unique[a] = 1
    global.quest_unique_done[a] = 0
    global.quest_stage_completed[a] = 2
    global.quest_reward[a] = rew_money[0]
    global.quest_exp[a] = rew_exp[1]
    global.quest_rep[a] = rew_rep[0]
    global.quest_liv_min[a] = 1
    global.quest_reward_arr[a] = (1 << 0)
    global.quest_text[a][0] = "Hey Hunter! We are preparing for an important mission and need all the equipment we can get.\nI want you to bring me some scrap ammo and scrap weapon so that my men can get ready."
    global.quest_text[a][1] = "Find 250 scrap ammo"
    global.quest_text[a][2] = quest_completed
    global.quest_text[a][3] = thank_for_help
    scr_quest_create_collect(a, 0, 250, (491 << 0))
    scr_quest_create_collect(a, 1, 180, (493 << 0))
    a = (33 << 0)
    i = 0
    global.quest_id[a] = a
    global.quest_name[a] = "Equipment p.2"
    global.quest_is_unique[a] = 1
    global.quest_unique_done[a] = 0
    global.quest_stage_completed[a] = 2
    global.quest_reward[a] = rew_money[3]
    global.quest_exp[a] = rew_exp[2]
    global.quest_rep[a] = rew_rep[0]
    global.quest_liv_min[a] = 1
    global.quest_reward_arr[a] = (4 << 0)
    global.quest_text[a][0] = "You seem to be almost as good at retrieving objects as a dog.\nIf you find good quality ammunition, don't sell it, bring it to me."
    global.quest_text[a][1] = "Find 250 scrap ammo"
    global.quest_text[a][2] = quest_completed
    global.quest_text[a][3] = thank_for_help
    scr_quest_create_collect(a, 0, 45, (541 << 0))
    scr_quest_create_collect(a, 1, 20, (553 << 0))
    scr_quest_create_collect(a, 2, 30, (217 << 0))
    a = (36 << 0)
    i = 0
    global.quest_id[a] = a
    global.quest_name[a] = "The Lair"
    global.quest_is_unique[a] = 1
    global.quest_unique_done[a] = 0
    global.quest_stage_completed[a] = 2
    global.quest_reward[a] = rew_money[0]
    global.quest_exp[a] = rew_exp[0]
    global.quest_rep[a] = rew_rep[0]
    global.quest_liv_min[a] = 1
    global.quest_reward_arr[a] = (1 << 0)
    global.quest_text[a][0] = "We believe that there is a Ghoul's lair hidden somewhere in the forest, unfortunately we have no idea where it is so I sent explorers into the forest to find it.\nThe more people who look for it, the sooner we can find it, right?\nSo I'm asking you to go into the forest and look for it, you'll have to explore the area to find it.\nWhen you find it, approach the entrance to inspect it and then come back to report."
    global.quest_text[a][1] = "Find the Ghoul's lair in the forest"
    global.quest_text[a][2] = quest_completed
    global.quest_text[a][3] = thank_for_help
    scr_quest_create_approach(a, 0, 874, 64, (1 << 0))
    global.quest_text_obj[a][0] = "Find the Ghoul's lair"
    a = (37 << 0)
    i = 0
    global.quest_id[a] = a
    global.quest_name[a] = "Destroy the Ghoul's lair"
    global.quest_is_unique[a] = 1
    global.quest_unique_done[a] = 0
    global.quest_stage_completed[a] = 2
    global.quest_reward[a] = rew_money[3]
    global.quest_exp[a] = 110
    global.quest_rep[a] = rew_rep[1]
    global.quest_liv_min[a] = 1
    global.quest_reward_arr[a] = (6 << 0)
    global.quest_text[a][0] = "Bad news, Hunter.\nWe sent a team to destroy the Ghouls' lair, but we lost contact with them.\nLast we heard, they managed to plant the explosive charges but then something went wrong.\nThere was no explosion, so it didn't end well for them...\nYou seem like a capable guy, so I want to put you in charge of this job.\nBuy some dynamite from our merchant and sneak into the lair, I don't know what you'll find in there so be careful.\nRemember, once you've planted the dynamite, you've got one minute to get out of there.\nGood luck, Hunter!"
    global.quest_text[a][1] = "Destroy the ghoul's lair"
    global.quest_text[a][2] = quest_completed
    global.quest_text[a][3] = thank_for_help
    scr_quest_create_interact_with_obj(a, 0, 880, 32, (365 << 0), "Place dynamite", (28 << 0), (29 << 0))
    global.quest_text_obj[a][0] = "Destroy the Ghoul's lair"
    global.quest_marker[a][0] = 1
    global.quest_marker_sub[a][0] = 3
    a = (38 << 0)
    i = 0
    global.quest_id[a] = a
    global.quest_name[a] = "Cleaning p.1"
    global.quest_is_unique[a] = 1
    global.quest_unique_done[a] = 0
    global.quest_stage_completed[a] = 2
    global.quest_reward[a] = rew_money[3]
    global.quest_exp[a] = rew_exp[4]
    global.quest_rep[a] = rew_rep[0]
    global.quest_liv_min[a] = 1
    global.quest_reward_arr[a] = (1 << 0)
    global.quest_text[a][0] = "More and more people want to become Hunters, and while this helps us from one point of view because we have fresh meat to send on suicide missions, on the other hand these Hunters raid the terriotory in search of fortune.\nGet rid of them but be careful, the same mission will be given to the other Hunters..."
    global.quest_text[a][1] = "Kill 15 bandits in the forest"
    global.quest_text[a][2] = quest_completed
    global.quest_text[a][3] = thank_for_help
    scr_quest_create_kill(a, 0, 10, "Hunters", -1, (11 << 0), (12 << 0))
    a = (40 << 0)
    i = 0
    global.quest_id[a] = a
    global.quest_name[a] = "More bandits"
    global.quest_is_unique[a] = 1
    global.quest_unique_done[a] = 0
    global.quest_stage_completed[a] = 2
    global.quest_reward[a] = rew_money[3]
    global.quest_exp[a] = rew_exp[2]
    global.quest_rep[a] = rew_rep[0]
    global.quest_liv_min[a] = 1
    global.quest_reward_arr[a] = (1 << 0)
    global.quest_text[a][0] = "Hey Hunter!\nWe have started a cleaning process, we are trying to eliminate the bandits in the area.\nI thought you might be interested in such a job, are you up for it?"
    global.quest_text[a][1] = "Kill 15 bandits in the makeshift camp"
    global.quest_text[a][2] = quest_completed
    global.quest_text[a][3] = thank_for_help
    scr_quest_create_kill(a, 0, 25, "Bandits", -1, (5 << 0), (6 << 0), (1 << 0), (3 << 0))
    a = (39 << 0)
    i = 0
    global.quest_id[a] = a
    global.quest_name[a] = "Cleaning p.2"
    global.quest_is_unique[a] = 1
    global.quest_unique_done[a] = 0
    global.quest_stage_completed[a] = 2
    global.quest_reward[a] = 6500
    global.quest_exp[a] = 150
    global.quest_liv_min[a] = 1
    global.quest_rep[a] = rew_rep[1]
    global.quest_reward_arr[a] = (7 << 0)
    global.quest_text[a][0] = "Are you ready for some real action? You have to kill Lazar, the leader of the forest bandits.\nHe is located in the police station of the village, maybe you have already met him during one of your hunts.\nPrepare yourself well, he is always surrounded by his guards.\nIt won't be easy to kill him, but afterwards you'll be able to freely enter the police station and take what you want."
    global.quest_text[a][1] = "Kill Lazar"
    global.quest_text[a][2] = quest_completed
    global.quest_text[a][3] = thank_for_help
    scr_quest_create_kill(a, 0, 1, -1, -1, (5 << 0))
    a = (41 << 0)
    i = 0
    global.quest_id[a] = a
    global.quest_name[a] = "Mark a working truck"
    global.quest_is_unique[a] = 1
    global.quest_unique_done[a] = 0
    global.quest_stage_completed[a] = 2
    global.quest_reward[a] = rew_money[2]
    global.quest_exp[a] = rew_exp[0]
    global.quest_rep[a] = rew_rep[0]
    global.quest_liv_min[a] = 1
    global.quest_reward_arr[a] = (1 << 0)
    global.quest_text[a][0] = "We have noticed that there is a fair amount of trucks in the makeshift camp.\nWe could really use some. Go to the makeshift camp and find a working one, they are located in the road.\nWhen you have found it, place a GPS tracker which you can buy from our merchant, then my men will do the rest."
    global.quest_text[a][1] = "Find and mark a working truck"
    global.quest_text[a][2] = quest_completed
    global.quest_text[a][3] = thank_for_help
    scr_quest_create_place_marker(a, 0, 632, (2 << 0))
    global.quest_marker[a][0] = 1
    global.quest_marker_sub[a][0] = 13
    global.quest_text_obj[a][0] = "Find and mark a working truck"
    a = (42 << 0)
    i = 0
    global.quest_id[a] = a
    global.quest_name[a] = "Always in the way"
    global.quest_is_unique[a] = 1
    global.quest_unique_done[a] = 0
    global.quest_stage_completed[a] = 2
    global.quest_reward[a] = rew_money[2]
    global.quest_exp[a] = rew_exp[4]
    global.quest_rep[a] = rew_rep[0]
    global.quest_liv_min[a] = 1
    global.quest_reward_arr[a] = (1 << 0)
    global.quest_text[a][0] = "Did you enjoy eliminating the Hunters?\nI hope so since I have another mission for you, this time I want you to eliminate them in the makeshift camp.\nGood luck!"
    global.quest_text[a][1] = "Kill 15 bandits in the forest"
    global.quest_text[a][2] = quest_completed
    global.quest_text[a][3] = thank_for_help
    global.quest_kill_map[a] = (1 << 0)
    scr_quest_create_kill(a, 0, 6, "Hunters", (2 << 0), (11 << 0), (12 << 0))
    a = (43 << 0)
    i = 0
    global.quest_id[a] = a
    global.quest_name[a] = "Motel p.1"
    global.quest_is_unique[a] = 1
    global.quest_unique_done[a] = 0
    global.quest_stage_completed[a] = 2
    global.quest_reward[a] = rew_money[0]
    global.quest_exp[a] = rew_exp[0]
    global.quest_rep[a] = rew_rep[0]
    global.quest_liv_min[a] = 1
    global.quest_reward_arr[a] = (1 << 0)
    global.quest_text[a][0] = "Hey Hunter!\nWe know that in the makeshift camp there is an old motel.\nIt should be abandoned by now but I want to make sure. You need to go there and check it out, check the entrance and see if there is a way in.\nUnfortunately we don't know the exact location but it should be easy to spot from the map once you get there, it should be a paved area."
    global.quest_text[a][1] = "Find the motel"
    global.quest_text[a][2] = quest_completed
    global.quest_text[a][3] = thank_for_help
    scr_quest_create_approach(a, 0, 875, 64, (2 << 0))
    global.quest_text_obj[a][0] = "Find the entrance of the Motel"
    a = (44 << 0)
    i = 0
    global.quest_id[a] = a
    global.quest_name[a] = "Motel p.2"
    global.quest_is_unique[a] = 1
    global.quest_unique_done[a] = 0
    global.quest_stage_completed[a] = 2
    global.quest_reward[a] = 3500
    global.quest_exp[a] = 200
    global.quest_liv_min[a] = 1
    global.quest_rep[a] = rew_rep[1]
    global.quest_reward_arr[a] = (4 << 0)
    global.quest_text[a][0] = "Well Hunter, like you said the motel entrance is blocked by cars.\nI told my men to remove them and move in. They didn't find anything good. Looks like a Ghoul infestation there.\nThey saw a strange lump of flesh from which those filthy creatures seem to be emerging.\nBe careful though, we don't know how many there are."
    global.quest_text[a][1] = "Motel infestation"
    global.quest_text[a][2] = quest_completed
    global.quest_text[a][3] = thank_for_help
    scr_quest_create_contract(a, 0, 212, (2 << 0))
    global.quest_marker[a][0] = 1
    global.quest_marker_sub[a][0] = 3
    global.quest_text_obj[a][0] = "Eliminate the infestation"
    a = (45 << 0)
    i = 0
    global.quest_id[a] = a
    global.quest_name[a] = "Weird phenomena p.1"
    global.quest_is_unique[a] = 1
    global.quest_unique_done[a] = 0
    global.quest_stage_completed[a] = 2
    global.quest_reward[a] = 3000
    global.quest_exp[a] = 50
    global.quest_rep[a] = rew_rep[1]
    global.quest_liv_min[a] = 1
    global.quest_reward_arr[a] = (1 << 0)
    global.quest_text[a][0] = "You must have noticed those bodies at the entrance to the bunker, we don't know what's going on yet.\nSome of ours helicopters crashed in the vicinity of the swamp, no call for help or malfunction, just crashed for no apparent reason.\nWhen they recovered the first bodies, we realised that something very strange was happening in that area.\nDid you see the condition of the bodies? My God, I've never seen anything like it.\nThe last helicopter crashed recently, the rescue operation is dangerous because it is in the middle of the swamp, inaccessible to vehicles.\nYou have to go there and see if you can recover the flight recorder of the helicopter, for the crew I don't think there is much left to do..."
    global.quest_text[a][1] = "Retrieve the flight recorder"
    global.quest_text[a][2] = quest_completed
    global.quest_text[a][3] = thank_for_help
    scr_quest_create_collect(a, 0, 1, (533 << 0))
    global.quest_marker[a][0] = 1
    global.quest_marker_sub[a][0] = 13
    global.quest_text_obj[a][0] = "Recover the flight recorder"
    a = (46 << 0)
    i = 0
    global.quest_id[a] = a
    global.quest_name[a] = "Preparing for battle"
    global.quest_is_unique[a] = 1
    global.quest_unique_done[a] = 0
    global.quest_stage_completed[a] = 2
    global.quest_reward[a] = rew_money[3]
    global.quest_exp[a] = rew_exp[2]
    global.quest_rep[a] = rew_rep[0]
    global.quest_liv_min[a] = 1
    global.quest_reward_arr[a] = (12 << 0)
    global.quest_text[a][0] = "From the helicopter's black box we were able to discover that the crew had spotted a strange purple crystal in the swamp.\nShortly thereafter, there appears to have been an unusual burst of radiation.\nThe crystal appears to be in the swamp village, which is bad news because that place is infested with Ghouls and we blocked the entrance some time ago.\nI'll try to put together a team to exterminate the village, but we need a lot of resources to do it.\nFor now, we're gathering as many resources as you can.\nYou need to do your part too, Hunter.\nOh! And don't forget the Vodka!"
    global.quest_text[a][1] = "Find 250 scrap ammo"
    global.quest_text[a][2] = quest_completed
    global.quest_text[a][3] = thank_for_help
    scr_quest_create_collect(a, 0, 200, (491 << 0))
    scr_quest_create_collect(a, 1, 150, (493 << 0))
    scr_quest_create_collect(a, 2, 8, (229 << 0))
    scr_quest_create_collect(a, 3, 5, (231 << 0))
    scr_quest_create_collect(a, 4, 6, (270 << 0))
    a = (47 << 0)
    i = 0
    global.quest_id[a] = a
    global.quest_name[a] = "Clear the Swamp"
    global.quest_is_unique[a] = 1
    global.quest_unique_done[a] = 0
    global.quest_stage_completed[a] = 2
    global.quest_reward[a] = 6000
    global.quest_exp[a] = 220
    global.quest_rep[a] = rew_rep[1]
    global.quest_liv_min[a] = 1
    global.quest_reward_arr[a] = (8 << 0)
    global.quest_text[a][0] = "Here's the plan, Hunter.\nEntering the village with all those Ghouls would be a certain death sentence.\nThe village has only one entrance so we will try to lure them out with a very bright light, so it will have to be done at night.\nGet into the swamp from 10pm to 3am, my men will be waiting for you.\nIt is advisable to bring an automatic weapon or a shotgun with a large magazine so that you have to reload as little as possible.\nOne last thing, in the chaos of battle try not to shoot my men, understand?"
    global.quest_text[a][1] = "Clear the swamp"
    global.quest_text[a][2] = quest_completed
    global.quest_text[a][3] = thank_for_help
    global.quest_type[a][0] = (20 << 0)
    global.quest_amount_now[a][0] = 0
    global.quest_amount_max[a][0] = 1
    global.quest_text_obj[a][0] = "Clear the Swamp"
    global.quest_marker[a][0] = 1
    global.quest_marker_sub[a][0] = 3
    a = (94 << 0)
    i = 0
    global.quest_id[a] = a
    global.quest_name[a] = "Inspect the village"
    global.quest_is_unique[a] = 1
    global.quest_unique_done[a] = 0
    global.quest_stage_completed[a] = 2
    global.quest_reward[a] = 6000
    global.quest_exp[a] = 220
    global.quest_rep[a] = rew_rep[1]
    global.quest_liv_min[a] = 1
    global.quest_reward_arr[a] = (21 << 0)
    global.quest_text[a][0] = "Haha! Great, Hunter!\nThe plan worked like a charm! Now all we have to do is explore the village and find the purple crystal.\nThere should be a few Ghouls left in the village, I don't think that will be a problem for you."
    global.quest_text[a][1] = "Inspect the swamp village"
    global.quest_text[a][2] = quest_completed
    global.quest_text[a][3] = thank_for_help
    global.quest_type[a][0] = (21 << 0)
    global.quest_amount_now[a][0] = 0
    global.quest_amount_max[a][0] = 1
    global.quest_text_obj[a][0] = "Inspect the village"
    global.quest_marker[a][0] = 1
    global.quest_marker_sub[a][0] = 12
    a = (50 << 0)
    i = 0
    global.quest_id[a] = a
    global.quest_name[a] = "Radioactive meat"
    global.quest_is_unique[a] = 1
    global.quest_unique_done[a] = 0
    global.quest_stage_completed[a] = 2
    global.quest_reward[a] = rew_money[0]
    global.quest_exp[a] = rew_exp[0]
    global.quest_rep[a] = rew_rep[0]
    global.quest_liv_min[a] = 1
    global.quest_reward_arr[a] = (0 << 0)
    global.quest_text[a][0] = "You're new here, huh?\nWell, I'm always looking for someone to help me with my research.\nDon't worry, I'll pay you for every job you do.\nGood! I need some raw meat to conduct experiments, I want to see how radiation has affected the local fauna."
    global.quest_text[a][1] = "Find 10 raw meat"
    global.quest_text[a][2] = quest_completed
    global.quest_text[a][3] = thank_for_help
    scr_quest_create_collect(a, 0, 12, (373 << 0))
    a = (51 << 0)
    i = 0
    global.quest_id[a] = a
    global.quest_name[a] = "Strange crystal p.1"
    global.quest_is_unique[a] = 1
    global.quest_unique_done[a] = 0
    global.quest_stage_completed[a] = 2
    global.quest_reward[a] = rew_money[1]
    global.quest_exp[a] = rew_exp[0]
    global.quest_rep[a] = rew_rep[0]
    global.quest_liv_min[a] = 1
    global.quest_reward_arr[a] = (0 << 0)
    global.quest_text[a][0] = "I don't know how much you have explored but you may have come across strange crystals, they are found near the anomalies.\nWe don't know what they are yet but they seem to be a result of the strange radiation emanating from the nuclear power station.\nGetting hold of some of the crystals would be great, I can't wait to examine them!\nFire crystals are the most common in the forest, so start by bringing me those."
    global.quest_text[a][1] = "Find 3 fire crystal"
    global.quest_text[a][2] = quest_completed
    global.quest_text[a][3] = thank_for_help
    scr_quest_create_collect(a, 0, 4, (438 << 0))
    a = (52 << 0)
    i = 0
    global.quest_id[a] = a
    global.quest_name[a] = "Strange crystal p.2"
    global.quest_is_unique[a] = 1
    global.quest_unique_done[a] = 0
    global.quest_stage_completed[a] = 2
    global.quest_reward[a] = rew_money[3]
    global.quest_exp[a] = rew_exp[3]
    global.quest_rep[a] = rew_rep[0]
    global.quest_liv_min[a] = 1
    global.quest_reward_arr[a] = (19 << 0)
    global.quest_text[a][0] = "Great! Hope you didn't get burned, Hunter! HAHA!\nBring me more crystals, I will pay you!"
    global.quest_text[a][1] = "Find 3 chemical crystal"
    global.quest_text[a][2] = quest_completed
    global.quest_text[a][3] = thank_for_help
    scr_quest_create_collect(a, 0, 4, (440 << 0))
    scr_quest_create_collect(a, 1, 6, (438 << 0))
    scr_quest_create_collect(a, 2, 2, (439 << 0))
    a = (55 << 0)
    i = 0
    global.quest_id[a] = a
    global.quest_name[a] = "Pelts p.1"
    global.quest_is_unique[a] = 1
    global.quest_unique_done[a] = 0
    global.quest_stage_completed[a] = 2
    global.quest_reward[a] = rew_money[0]
    global.quest_exp[a] = rew_exp[0]
    global.quest_rep[a] = rew_rep[0]
    global.quest_liv_min[a] = 1
    global.quest_reward_arr[a] = (0 << 0)
    global.quest_text[a][0] = "Hey Hunter!\nI have a number of very simple jobs to complete.\nI need furs, external radiation is absorbed by the surface layer of the skin and it's a great material for research.\nStart by bringing me some rabbit furs, they are very common on all maps."
    global.quest_text[a][1] = "Find 5 rabbit pelts"
    global.quest_text[a][2] = quest_completed
    global.quest_text[a][3] = thank_for_help
    scr_quest_create_collect(a, 0, 10, (389 << 0))
    a = (56 << 0)
    i = 0
    global.quest_id[a] = a
    global.quest_name[a] = "Pelts p.2"
    global.quest_is_unique[a] = 1
    global.quest_unique_done[a] = 0
    global.quest_stage_completed[a] = 2
    global.quest_reward[a] = rew_money[2]
    global.quest_exp[a] = rew_exp[2]
    global.quest_rep[a] = rew_rep[0]
    global.quest_liv_min[a] = 1
    global.quest_reward_arr[a] = (1 << 0)
    global.quest_text[a][0] = "Good! Now you need to fight a bit.\nIf you find a wolf alone and see it running away it will most likely be going to its pack nearby so always move carefully."
    global.quest_text[a][1] = "Find 10 wolf pelts"
    global.quest_text[a][2] = quest_completed
    global.quest_text[a][3] = thank_for_help
    scr_quest_create_collect(a, 0, 8, (377 << 0))
    scr_quest_create_collect(a, 1, 6, (375 << 0))
    a = (53 << 0)
    i = 0
    global.quest_id[a] = a
    global.quest_name[a] = "no data"
    global.quest_is_unique[a] = 1
    global.quest_unique_done[a] = 0
    global.quest_stage_completed[a] = 2
    global.quest_reward[a] = rew_money[0]
    global.quest_exp[a] = rew_exp[1]
    global.quest_rep[a] = rew_rep[0]
    global.quest_liv_min[a] = 1
    global.quest_reward_arr[a] = (0 << 0)
    global.quest_text[a][0] = "I sent one of my scientists into the forest to study the anomalies, but I haven't heard from him for several hours.\nThis doesn't look good, go check it out. His position will be marked on the map.\nIf he is dead, retrieve the analyser from his body."
    global.quest_text[a][1] = "Retrieve the analyzer"
    global.quest_text[a][2] = quest_completed
    global.quest_text[a][3] = thank_for_help
    scr_quest_create_retrieve_analyzer(a, 0, (359 << 0), 171, (1 << 0))
    global.quest_text_obj[a][0] = "Retrieve the analyzer"
    global.quest_marker[a][0] = 1
    global.quest_marker_sub[a][0] = 13
    a = (57 << 0)
    i = 0
    global.quest_id[a] = a
    global.quest_name[a] = "Body parts p.1"
    global.quest_is_unique[a] = 1
    global.quest_unique_done[a] = 0
    global.quest_stage_completed[a] = 2
    global.quest_reward[a] = rew_money[2]
    global.quest_exp[a] = rew_exp[2]
    global.quest_rep[a] = rew_rep[0]
    global.quest_liv_min[a] = 1
    global.quest_reward_arr[a] = (0 << 0)
    global.quest_text[a][0] = "OK Hunter! The meat samples you brought me showed genetic mutations caused by radiation.\nI need to know more, I need you to bring me body parts of Boars and Ghouls."
    global.quest_text[a][1] = "Find 5 boar fang"
    global.quest_text[a][2] = quest_completed
    global.quest_text[a][3] = thank_for_help
    scr_quest_create_collect(a, 0, 8, (385 << 0))
    scr_quest_create_collect(a, 1, 12, (571 << 0))
    a = (58 << 0)
    i = 0
    global.quest_id[a] = a
    global.quest_name[a] = "Body parts p.2"
    global.quest_is_unique[a] = 1
    global.quest_unique_done[a] = 0
    global.quest_stage_completed[a] = 2
    global.quest_reward[a] = rew_money[3]
    global.quest_exp[a] = rew_exp[4]
    global.quest_rep[a] = rew_rep[0]
    global.quest_liv_min[a] = 1
    global.quest_reward_arr[a] = (14 << 0)
    global.quest_text[a][0] = "Good! Would you be willing to go into more advanced areas?\nI need spider and blink parts, you can find them in the industrial zone but more easily in the swamp"
    global.quest_text[a][1] = "Find 8 Ghoul tentacles"
    global.quest_text[a][2] = quest_completed
    global.quest_text[a][3] = thank_for_help
    scr_quest_create_collect(a, 0, 5, (381 << 0))
    scr_quest_create_collect(a, 1, 5, (380 << 0))
    scr_quest_create_collect(a, 2, 10, (572 << 0))
    a = (54 << 0)
    i = 0
    global.quest_id[a] = a
    global.quest_name[a] = "Movies"
    global.quest_is_unique[a] = 1
    global.quest_unique_done[a] = 0
    global.quest_stage_completed[a] = 2
    global.quest_reward[a] = rew_money[3]
    global.quest_exp[a] = rew_exp[2]
    global.quest_rep[a] = rew_rep[0]
    global.quest_liv_min[a] = 1
    global.quest_reward_arr[a] = (1 << 0)
    global.quest_text[a][0] = "Hey Hunter!\nSome Hunters managed to get some films on DVD but when we moved here no one thought to bring DVD players or other means of entertainment...\nRetrieve some items for me and I will be able to provide some entertainment for these miserable people"
    global.quest_text[a][1] = "Find 8 Ghoul tentacles"
    global.quest_text[a][2] = quest_completed
    global.quest_text[a][3] = thank_for_help
    scr_quest_create_collect(a, 0, 4, (327 << 0))
    scr_quest_create_collect(a, 1, 5, (317 << 0))
    scr_quest_create_collect(a, 2, 5, (321 << 0))
    a = (59 << 0)
    i = 0
    global.quest_id[a] = a
    global.quest_name[a] = "The radio tower"
    global.quest_is_unique[a] = 1
    global.quest_unique_done[a] = 0
    global.quest_stage_completed[a] = 2
    global.quest_reward[a] = rew_money[1]
    global.quest_exp[a] = rew_exp[2]
    global.quest_rep[a] = rew_rep[0]
    global.quest_liv_min[a] = 1
    global.quest_reward_arr[a] = (1 << 0)
    global.quest_text[a][0] = "It is time to repair the radio tower in the makeshift camp.\nFirst of all, I would ask you to inspect the radio station. You've probably already noticed all those strange electrical anomalies in the area.\nThe good news is that they can apparently be killed, but that doesn't concern you right now.\nWhat you need to do is find the location of the radio station, which should be easy to find on the map as it is a paved area, and inspect the entrance.\nSee if those strange anomalies are still there."
    global.quest_text[a][1] = "Locate the radio tower"
    global.quest_text[a][2] = quest_completed
    global.quest_text[a][3] = thank_for_help
    scr_quest_create_approach(a, 0, 876, 40, (2 << 0))
    global.quest_text_obj[a][0] = "Locate the radio tower"
    a = (60 << 0)
    i = 0
    global.quest_id[a] = a
    global.quest_name[a] = "Necessary components"
    global.quest_is_unique[a] = 1
    global.quest_unique_done[a] = 0
    global.quest_stage_completed[a] = 2
    global.quest_reward[a] = rew_money[2]
    global.quest_exp[a] = rew_exp[3]
    global.quest_rep[a] = rew_rep[0]
    global.quest_liv_min[a] = 1
    global.quest_reward_arr[a] = (1 << 0)
    global.quest_text[a][0] = "We need some electronic equipment so try to accumulate as much as possible.\nFor now we are still inspecting the antenna but we have already noticed that some of the electrical wires are damaged and we need to replace them, so bring me some new ones."
    global.quest_text[a][1] = "Find 8 wires"
    global.quest_text[a][2] = quest_completed
    global.quest_text[a][3] = thank_for_help
    scr_quest_create_collect(a, 0, 10, (311 << 0))
    scr_quest_create_collect(a, 1, 6, (309 << 0))
    scr_quest_create_collect(a, 2, 5, (315 << 0))
    a = (61 << 0)
    i = 0
    global.quest_id[a] = a
    global.quest_name[a] = "Upgrade"
    global.quest_is_unique[a] = 1
    global.quest_unique_done[a] = 0
    global.quest_stage_completed[a] = 2
    global.quest_reward[a] = rew_money[4]
    global.quest_exp[a] = rew_exp[4]
    global.quest_rep[a] = rew_rep[0]
    global.quest_liv_min[a] = 1
    global.quest_reward_arr[a] = (0 << 0)
    global.quest_text[a][0] = "Are you in for a hunt for electrical components?\nWe are thinking of upgrading my station and need parts"
    global.quest_text[a][1] = "Find 8 wires"
    global.quest_text[a][2] = quest_completed
    global.quest_text[a][3] = thank_for_help
    scr_quest_create_collect(a, 0, 3, (307 << 0))
    scr_quest_create_collect(a, 1, 1, (325 << 0))
    scr_quest_create_collect(a, 2, 1, (326 << 0))
    scr_quest_create_collect(a, 3, 8, (305 << 0))
    a = (62 << 0)
    i = 0
    global.quest_id[a] = a
    global.quest_name[a] = "Fix the radio tower"
    global.quest_is_unique[a] = 1
    global.quest_unique_done[a] = 0
    global.quest_stage_completed[a] = 2
    global.quest_reward[a] = 3000
    global.quest_exp[a] = 50
    global.quest_rep[a] = rew_rep[1]
    global.quest_liv_min[a] = 1
    global.quest_reward_arr[a] = (4 << 0)
    global.quest_text[a][0] = "Looks like those anomalies are still in the radio station.\nWell, Hunter, you're going to have to fight your way through.\nWhat you need to do is repair the radio tower outside, it's the red and white one with horizontal stripes.\nDon't forget to buy the repair kit from me!"
    global.quest_text[a][1] = "Fix the radio tower"
    global.quest_text[a][2] = quest_completed
    global.quest_text[a][3] = thank_for_help
    scr_quest_create_interact_with_obj(a, 0, 646, 16, (300 << 0), "Fix", (20 << 0), -1)
    global.quest_text_obj[a][0] = "Fix the radio tower"
    global.quest_marker[a][0] = 1
    global.quest_marker_sub[a][0] = 3
    a = (63 << 0)
    i = 0
    global.quest_id[a] = a
    global.quest_name[a] = "Medikit"
    global.quest_is_unique[a] = 1
    global.quest_unique_done[a] = 0
    global.quest_stage_completed[a] = 2
    global.quest_reward[a] = rew_money[3]
    global.quest_exp[a] = rew_exp[2]
    global.quest_rep[a] = rew_rep[0]
    global.quest_liv_min[a] = 1
    global.quest_reward_arr[a] = (19 << 0)
    global.quest_text[a][0] = "Hey Hunter!\nI'm running low on medikits, so try to get some during your hunts.\nDon't worry, I'll pay you."
    global.quest_text[a][1] = "Find 15 scrap med"
    global.quest_text[a][2] = quest_completed
    global.quest_text[a][3] = thank_for_help
    scr_quest_create_collect(a, 0, 20, (492 << 0))
    scr_quest_create_collect(a, 1, 4, (232 << 0))
    scr_quest_create_collect(a, 2, 4, (227 << 0))
    scr_quest_create_collect(a, 3, 2, (228 << 0))
    a = (64 << 0)
    i = 0
    global.quest_id[a] = a
    global.quest_name[a] = "Tons of meds!"
    global.quest_type[a] = (1 << 0)
    global.quest_is_unique[a] = 1
    global.quest_unique_done[a] = 0
    global.quest_stage_completed[a] = 2
    global.quest_reward[a] = rew_money[3]
    global.quest_exp[a] = rew_exp[4]
    global.quest_rep[a] = rew_rep[0]
    global.quest_liv_min[a] = 1
    global.quest_reward_arr[a] = (4 << 0)
    global.quest_text[a][0] = "Listen, Hunter, there's always a need for medikits here so if you want to bring me more I'll make sure I pay you well."
    global.quest_text[a][1] = "Find 50 scrap med"
    global.quest_text[a][2] = quest_completed
    global.quest_text[a][3] = thank_for_help
    scr_quest_create_collect(a, 0, 50, (492 << 0))
    a = (65 << 0)
    i = 0
    global.quest_id[a] = a
    global.quest_name[a] = "Radiation effect"
    global.quest_is_unique[a] = 1
    global.quest_unique_done[a] = 0
    global.quest_stage_completed[a] = 2
    global.quest_reward[a] = rew_money[2]
    global.quest_exp[a] = rew_exp[4]
    global.quest_rep[a] = rew_rep[0]
    global.quest_liv_min[a] = 1
    global.quest_reward_arr[a] = (18 << 0)
    global.quest_text[a][0] = "I would like to examine the effect of radiation on the human body.\nTo do this I need someone who is willing to absorb a large amount of radiation and report the symptoms to me.\nDon't make that face, Hunter. I'm not asking you to do it but if you want to get paid for a simple job here it is.\nYou need to reach the orange radiation level."
    global.quest_text[a][1] = "Reach orange lvl of radiation"
    global.quest_text[a][2] = quest_completed
    global.quest_text[a][3] = thank_for_help
    global.quest_type[a][0] = (17 << 0)
    global.quest_amount_now[a][0] = 0
    global.quest_amount_max[a][0] = 1
    global.quest_text_obj[a][0] = "Reach orange level of radiation"
    a = (66 << 0)
    i = 0
    global.quest_id[a] = a
    global.quest_name[a] = "Laboratory p.1"
    global.quest_is_unique[a] = 1
    global.quest_unique_done[a] = 0
    global.quest_stage_completed[a] = 2
    global.quest_reward[a] = rew_money[1]
    global.quest_exp[a] = rew_exp[3]
    global.quest_rep[a] = rew_rep[0]
    global.quest_liv_min[a] = 1
    global.quest_reward_arr[a] = (1 << 0)
    global.quest_text[a][0] = "When you went to the radio station you must have noticed the building there, maybe you even tried to go inside.\nWord on the street is that it was an old lab for the Crimson Corporation.\nThe entrance is locked and you need a key card to get in, unfortunately none of us here have one and I don't think the Crimson Corporation will give us one.\nSo I sent my man, Marat Loginov, to look for the key. He seems to have found a damaged one but we may be able to fix it or make a copy.\nMy man is operating in the industrial zone, he has a small base in the north-west, among the abandoned wagons. I haven't heard from him in days, but that's not unusual.\nGo to the industrial area, find him and bring me the key."
    global.quest_text[a][1] = "Find the laboratory key"
    global.quest_text[a][2] = quest_completed
    global.quest_text[a][3] = thank_for_help
    scr_quest_create_collect(a, 0, 1, (575 << 0))
    global.quest_text_obj[a][0] = "Retrieve the laboratory key"
    a = (67 << 0)
    i = 0
    global.quest_id[a] = a
    global.quest_name[a] = "Laboratory p.2"
    global.quest_type[a] = (1 << 0)
    global.quest_is_unique[a] = 1
    global.quest_unique_done[a] = 0
    global.quest_id_to_collect[a] = (307 << 0)
    global.quest_stage_completed[a] = 2
    global.quest_amount_now[a] = 0
    global.quest_amount_max[a] = 3
    global.quest_reward[a] = rew_money[4]
    global.quest_exp[a] = rew_exp[3]
    global.quest_rep[a] = rew_rep[0]
    global.quest_liv_min[a] = 1
    global.quest_reward_arr[a] = (1 << 0)
    global.quest_text[a][0] = "So Marat is dead? Man, he was good at his job.\nFortunately, it appears the key you recovered is in good condition. \nNot good enough to use, but we can make a copy.\nAt the moment we don't have the necessary equipment but if you bring me some items we can repair it."
    global.quest_text[a][1] = "Find 3 CPUs"
    global.quest_text[a][2] = quest_completed
    global.quest_text[a][3] = thank_for_help
    scr_quest_create_collect(a, 0, 6, (311 << 0))
    scr_quest_create_collect(a, 1, 4, (307 << 0))
    scr_quest_create_collect(a, 2, 5, (310 << 0))
    scr_quest_create_collect(a, 3, 3, (309 << 0))
    scr_quest_create_collect(a, 4, 2, (325 << 0))
    a = (68 << 0)
    i = 0
    global.quest_id[a] = a
    global.quest_name[a] = "Laboratory p.3"
    global.quest_is_unique[a] = 1
    global.quest_unique_done[a] = 0
    global.quest_stage_completed[a] = 2
    global.quest_reward[a] = 10000
    global.quest_exp[a] = 300
    global.quest_rep[a] = rew_rep[1]
    global.quest_liv_min[a] = 1
    global.quest_reward_arr[a] = (12 << 0)
    global.quest_text[a][0] = "Great, Hunter!\nNow I can make a copy of the key card for the lab.\nIt will take me a while but I think I will be done by tomorrow morning and you can purchase it from me.\nOnce you've got the key you'll have to make your way to the lab and enter.\nNo one knows what's in there, so be careful. I also suggest you bring a torch because it will be pitch black.\nOnce inside explore it well and try to recover some samples, even I do not know what to look for but I'm sure you'll understand once you find it.\nGood luck, Hunter!"
    global.quest_text[a][1] = "Explore the laboratory"
    global.quest_text[a][2] = quest_completed
    global.quest_text[a][3] = thank_for_help
    scr_quest_create_collect(a, 0, 1, (366 << 0))
    global.quest_text_obj[a][0] = "Find evidence in the laboratory"
    a = (69 << 0)
    i = 0
    global.quest_id[a] = a
    global.quest_name[a] = "Eyes everywhere"
    global.quest_is_unique[a] = 1
    global.quest_unique_done[a] = 0
    global.quest_stage_completed[a] = 2
    global.quest_reward[a] = 7500
    global.quest_exp[a] = 100
    global.quest_rep[a] = rew_rep[1]
    global.quest_liv_min[a] = 1
    global.quest_reward_arr[a] = (4 << 0)
    global.quest_text[a][0] = "So you want to do some missions for crimson Corporation?\nOK, let's start with something simple. As you know our relationship with the green army is not good, so we need to know what their intentions are.\nBuy a CCTV camera from me and place it in the Green Army headquarters in the ZERO Sievert bunker.\nPlace it in the bookshelf, it should be fine there."
    global.quest_text[a][1] = "Place the CCTV camera"
    global.quest_text[a][2] = quest_completed
    global.quest_text[a][3] = thank_for_help
    scr_quest_create_interact_with_obj(a, 0, 879, 10, (367 << 0), "Place camera", (30 << 0), -1)
    global.quest_text_obj[a][0] = "Place the CCTV camera"
    a = (70 << 0)
    i = 0
    global.quest_id[a] = a
    global.quest_name[a] = "Cleanup"
    global.quest_is_unique[a] = 1
    global.quest_unique_done[a] = 0
    global.quest_stage_completed[a] = 2
    global.quest_reward[a] = 10000
    global.quest_exp[a] = 125
    global.quest_rep[a] = rew_rep[1]
    global.quest_liv_min[a] = 1
    global.quest_reward_arr[a] = (4 << 0)
    global.quest_text[a][0] = "Nice job with the CCTV camera hunter! Thanks to you we know their movements in Zakov.\nNow it's time to do some cleanup eheh.\nKill 15 soldiers of the Green Army. Soldiers patrol the forest and makeshift camps, there are not many of them and unfortunately we do not know their exact location so you will have to find them yourself.\nIf you complete this mission for us, you won't have to pay to enter."
    global.quest_text[a][1] = "Kill 15 Green Army soldiers"
    global.quest_text[a][2] = quest_completed
    global.quest_text[a][3] = thank_for_help
    scr_quest_create_kill(a, 0, 15, "Green Army", -1, (13 << 0))
    a = (72 << 0)
    i = 0
    global.quest_id[a] = a
    global.quest_name[a] = "Materials"
    global.quest_is_unique[a] = 1
    global.quest_unique_done[a] = 0
    global.quest_stage_completed[a] = 2
    global.quest_reward[a] = rew_money[0]
    global.quest_exp[a] = rew_exp[0]
    global.quest_rep[a] = rew_rep[0]
    global.quest_liv_min[a] = 1
    global.quest_reward_arr[a] = (0 << 0)
    global.quest_text[a][0] = "Hey Hunter!\nI can't take you past the makeshift camp because some sections of the railway have to be repaired.\nWe're working on it but if you want to help, it would be quicker.\nBring me these items and we will repair the section."
    global.quest_text[a][1] = "Collect 40 scrap material"
    global.quest_text[a][2] = quest_completed
    global.quest_text[a][3] = thank_for_help
    scr_quest_create_collect(a, 0, 40, (489 << 0))
    scr_quest_create_collect(a, 1, 20, (296 << 0))
    scr_quest_create_collect(a, 2, 20, (285 << 0))
    scr_quest_create_collect(a, 3, 1, (284 << 0))
    scr_quest_create_collect(a, 4, 1, (282 << 0))
    scr_quest_create_collect(a, 5, 1, (299 << 0))
    a = (71 << 0)
    i = 0
    global.quest_id[a] = a
    global.quest_name[a] = "Meat for Igor"
    global.quest_is_unique[a] = 1
    global.quest_unique_done[a] = 0
    global.quest_stage_completed[a] = 2
    global.quest_reward[a] = 2500
    global.quest_exp[a] = 40
    global.quest_rep[a] = rew_rep[1]
    global.quest_liv_min[a] = 1
    global.quest_reward_arr[a] = (0 << 0)
    global.quest_text[a][0] = "Would you bring me 10 pieces of raw meat?\nYou'd be doing me a big favour."
    global.quest_text[a][1] = "Collect 10 raw meat"
    global.quest_text[a][2] = quest_completed
    global.quest_text[a][3] = thank_for_help
    scr_quest_create_collect(a, 0, 10, (373 << 0))
    a = (172 << 0)
    i = 0
    global.quest_id[a] = a
    global.quest_name[a] = "Grigory's ring"
    global.quest_is_unique[a] = 1
    global.quest_unique_done[a] = 0
    global.quest_stage_completed[a] = 2
    global.quest_reward[a] = 0
    global.quest_exp[a] = 120
    global.quest_rep[a] = rew_rep[1]
    global.quest_liv_min[a] = 1
    global.quest_reward_arr[a] = (22 << 0)
    global.quest_text[a][0] = "Oh! Oh! Can you do something for Mr. Junk?\nNow that Grigoriy has come back to life he would love to get his ring back.\nMr. Junk hid it in the swamp before he came to this place.\nIf you do this for Mr. Junk then he will sell you some of his treasure.\nNo! No! No! Mr. Junk loves his treasure...\nOh! Oh! But it's more important to make Grigoriy happy.\nYes! Yes! Yes!\nYou bring Mr. Junk the ring and he'll sell you some of his treasure.\nMr. Junk will also give you this costume he found"
    global.quest_text[a][1] = "Retrieve Grigoriy's ring"
    global.quest_text[a][2] = quest_completed
    global.quest_text[a][3] = thank_for_help
    scr_quest_create_collect(a, 0, 1, (539 << 0))
    scr_load_unique_quest()
    return;
}

