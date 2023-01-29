function lista_chest() //gml_Script_lista_chest
{
    var k = (0 << 0)
    global.chest_sound_open[k] = 259
    global.chest_sound_close[k] = 260
    k = (1 << 0)
    global.chest_sound_open[k] = 261
    global.chest_sound_close[k] = 262
    k = (2 << 0)
    global.chest_sound_open[k] = 257
    global.chest_sound_close[k] = 258
    k = (3 << 0)
    global.chest_sound_open[k] = 263
    global.chest_sound_close[k] = 264
    k = (4 << 0)
    global.chest_sound_open[k] = 265
    global.chest_sound_close[k] = 266
    k = (5 << 0)
    global.chest_sound_open[k] = 267
    global.chest_sound_close[k] = 268
    k = (6 << 0)
    global.chest_sound_open[k] = 269
    global.chest_sound_close[k] = 270
    k = (7 << 0)
    global.chest_sound_open[k] = 271
    global.chest_sound_close[k] = 272
    var i = 0
    a = (0 << 0)
    chest_id[a] = a
    chest_name[a] = "Ground"
    chest_sprite[a] = 1941
    chest_decay_item[a] = 0
    chest_quanti_item_max[a] = 0
    chest_quanti_item_min[a] = 0
    chest_is_drop[a] = 0
    chest_from_enemy[a] = 0
    chest_sound_type[a] = (1 << 0)
    chest_item[a][0] = (0 << 0)
    chest_item_rare[a][0] = 1
    a = (1 << 0)
    chest_id[a] = a
    chest_name[a] = "general"
    chest_sprite[a] = 1940
    chest_decay_item[a] = 0
    chest_quanti_item_max[a] = 40
    chest_quanti_item_min[a] = 25
    chest_is_drop[a] = 0
    chest_from_enemy[a] = 0
    chest_sound_type[a] = (1 << 0)
    i = 0
    chest_item[a][i] = (244 << 0)
    chest_item_rare[a][i] = 1
    i++
    chest_item[a][i] = (243 << 0)
    chest_item_rare[a][i] = 1
    i++
    chest_item[a][i] = (270 << 0)
    chest_item_rare[a][i] = 1
    i++
    chest_item[a][i] = (273 << 0)
    chest_item_rare[a][i] = 1
    i++
    chest_item[a][i] = (271 << 0)
    chest_item_rare[a][i] = 1
    i++
    chest_item[a][i] = (272 << 0)
    chest_item_rare[a][i] = 1
    i++
    chest_item[a][i] = (246 << 0)
    chest_item_rare[a][i] = 1
    i++
    chest_item[a][i] = (577 << 0)
    chest_item_rare[a][i] = 1
    i++
    chest_item[a][i] = (247 << 0)
    chest_item_rare[a][i] = 1
    i++
    chest_item[a][i] = (248 << 0)
    chest_item_rare[a][i] = 1
    i++
    chest_item[a][i] = (282 << 0)
    chest_item_rare[a][i] = 1
    i++
    chest_item[a][i] = (284 << 0)
    chest_item_rare[a][i] = 1
    i++
    chest_item[a][i] = (283 << 0)
    chest_item_rare[a][i] = 1
    i++
    chest_item[a][i] = (285 << 0)
    chest_item_rare[a][i] = 1
    i++
    chest_item[a][i] = (289 << 0)
    chest_item_rare[a][i] = 1
    i++
    chest_item[a][i] = (329 << 0)
    chest_item_rare[a][i] = 1
    i++
    chest_item[a][i] = (269 << 0)
    chest_item_rare[a][i] = 1
    i++
    chest_item[a][i] = (226 << 0)
    chest_item_rare[a][i] = 10
    i++
    chest_item[a][i] = (227 << 0)
    chest_item_rare[a][i] = 1
    i++
    chest_item[a][i] = (228 << 0)
    chest_item_rare[a][i] = 1
    i++
    chest_item[a][i] = (229 << 0)
    chest_item_rare[a][i] = 1
    a = (2 << 0)
    chest_id[a] = a
    chest_name[a] = "Your stash"
    chest_sprite[a] = 1219
    chest_decay_item[a] = 0
    chest_quanti_item_max[a] = 1
    chest_quanti_item_min[a] = 0
    chest_is_drop[a] = 0
    chest_from_enemy[a] = 0
    chest_sound_type[a] = (4 << 0)
    chest_chance_uncommon[a] = 50
    chest_chance_rare[a] = 30
    chest_chance_epic[a] = 15
    chest_chance_legendary[a] = 5
    i = 0
    chest_item[a][i] = (0 << 0)
    a = (17 << 0)
    chest_id[a] = a
    chest_name[a] = "Tool box"
    chest_sprite[a] = 1220
    chest_decay_item[a] = 1
    chest_quanti_item_max[a] = 7
    chest_quanti_item_min[a] = 5
    chest_is_drop[a] = 0
    chest_from_enemy[a] = 0
    chest_sound_type[a] = (4 << 0)
    chest_chance_uncommon[a] = 35
    chest_chance_rare[a] = 15
    chest_chance_epic[a] = 8
    chest_chance_legendary[a] = 0.6
    i = 0
    chest_item[a][i] = (282 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (286 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (285 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (289 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (284 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (283 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (287 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (330 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (294 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (288 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (489 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (291 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (290 << 0)
    chest_item_rare[a][i] = 5
    i++
    chest_item[a][i] = (292 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (295 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (293 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (296 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (297 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (299 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (301 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (302 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (311 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (349 << 0)
    chest_item_rare[a][i] = 25
    a = (18 << 0)
    chest_id[a] = a
    chest_name[a] = "electronic box"
    chest_sprite[a] = 1221
    chest_decay_item[a] = 1
    chest_quanti_item_max[a] = 9
    chest_quanti_item_min[a] = 7
    chest_is_drop[a] = 0
    chest_from_enemy[a] = 0
    chest_sound_type[a] = (4 << 0)
    chest_chance_uncommon[a] = 40
    chest_chance_rare[a] = 20
    chest_chance_epic[a] = 10
    chest_chance_legendary[a] = 0.8
    i = 0
    chest_item[a][i] = (304 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (305 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (307 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (306 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (313 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (315 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (308 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (309 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (310 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (311 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (312 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (316 << 0)
    chest_item_rare[a][i] = 5
    i++
    chest_item[a][i] = (314 << 0)
    chest_item_rare[a][i] = 5
    i++
    chest_item[a][i] = (317 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (318 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (319 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (320 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (321 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (325 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (326 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (327 << 0)
    chest_item_rare[a][i] = 40
    a = (7 << 0)
    chest_id[a] = a
    chest_name[a] = "cabinet"
    chest_sprite[a] = 1227
    chest_decay_item[a] = 1
    chest_quanti_item_max[a] = 4
    chest_quanti_item_min[a] = 2
    chest_is_drop[a] = 0
    chest_from_enemy[a] = 0
    chest_sound_type[a] = (0 << 0)
    chest_chance_uncommon[a] = 30
    chest_chance_rare[a] = 15
    chest_chance_epic[a] = 4
    chest_chance_legendary[a] = 1
    i = 0
    chest_item[a][i] = (311 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (315 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (312 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (610 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (489 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (309 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (304 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (314 << 0)
    chest_item_rare[a][i] = 5
    i++
    chest_item[a][i] = (316 << 0)
    chest_item_rare[a][i] = 5
    i++
    chest_item[a][i] = (310 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (306 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (305 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (313 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (328 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (283 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (284 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (285 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (286 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (289 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (282 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (287 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (330 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (292 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (582 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (269 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (244 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (243 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (270 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (577 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (245 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (248 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (272 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (279 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (329 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (331 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (332 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (333 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (226 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (231 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (229 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (530 << 0)
    chest_item_rare[a][i] = 5
    i++
    chest_item[a][i] = (531 << 0)
    chest_item_rare[a][i] = 5
    i++
    chest_item[a][i] = (532 << 0)
    chest_item_rare[a][i] = 5
    i++
    chest_item[a][i] = (587 << 0)
    chest_item_rare[a][i] = 5
    i++
    chest_item[a][i] = (588 << 0)
    chest_item_rare[a][i] = 5
    i++
    chest_item[a][i] = (589 << 0)
    chest_item_rare[a][i] = 5
    i++
    chest_item[a][i] = (590 << 0)
    chest_item_rare[a][i] = 5
    i++
    a = (4 << 0)
    chest_id[a] = a
    chest_name[a] = "Hidden stash"
    chest_decay_item[a] = 0
    chest_sprite[a] = 1557
    chest_quanti_item_max[a] = 9
    chest_quanti_item_min[a] = 6
    chest_is_drop[a] = 0
    chest_from_enemy[a] = 0
    chest_sound_type[a] = (1 << 0)
    chest_chance_uncommon[a] = 40
    chest_chance_rare[a] = 25
    chest_chance_epic[a] = 8
    chest_chance_legendary[a] = 1
    i = 0
    chest_item[a][i] = (1 << 0)
    chest_item_rare[a][i] = 60
    i++
    scr_loot_hidden_stash((4 << 0), 1)
    a = (8 << 0)
    chest_id[a] = a
    chest_name[a] = "Vending machine"
    chest_sprite[a] = 1564
    chest_decay_item[a] = 1
    chest_quanti_item_max[a] = 4
    chest_quanti_item_min[a] = 2
    chest_is_drop[a] = 0
    chest_from_enemy[a] = 0
    chest_sound_type[a] = (4 << 0)
    chest_chance_uncommon[a] = 40
    chest_chance_rare[a] = 20
    chest_chance_epic[a] = 10
    chest_chance_legendary[a] = 2
    i = 0
    chest_item[a][i] = (244 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (577 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (580 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (583 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (243 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (246 << 0)
    chest_item_rare[a][i] = 5
    i++
    chest_item[a][i] = (577 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (248 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (247 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (249 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (269 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (582 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (271 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (272 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (274 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (275 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (279 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (280 << 0)
    chest_item_rare[a][i] = 12
    a = (9 << 0)
    chest_id[a] = a
    chest_name[a] = "Safe"
    chest_sprite[a] = 1232
    chest_decay_item[a] = 0
    chest_quanti_item_max[a] = 6
    chest_quanti_item_min[a] = 3
    chest_is_drop[a] = 0
    chest_from_enemy[a] = 0
    chest_sound_type[a] = (5 << 0)
    chest_chance_uncommon[a] = 15
    chest_chance_rare[a] = 7
    chest_chance_epic[a] = 3
    chest_chance_legendary[a] = 0.7
    i = 0
    chest_item[a][i] = (1 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (392 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (393 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (394 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (395 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (396 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (398 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (399 << 0)
    chest_item_rare[a][i] = 5
    i++
    chest_item[a][i] = (397 << 0)
    chest_item_rare[a][i] = 5
    a = (10 << 0)
    chest_id[a] = a
    chest_name[a] = "Bag"
    chest_sprite[a] = 1230
    chest_decay_item[a] = 1
    chest_quanti_item_max[a] = 7
    chest_quanti_item_min[a] = 5
    chest_is_drop[a] = 0
    chest_from_enemy[a] = 0
    chest_sound_type[a] = (3 << 0)
    chest_chance_uncommon[a] = 40
    chest_chance_rare[a] = 25
    chest_chance_epic[a] = 12
    chest_chance_legendary[a] = 1
    i = 0
    chest_item[a][i] = (229 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (231 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (610 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (226 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (232 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (230 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (437 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (489 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (285 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (301 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (287 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (296 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (285 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (341 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (292 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (339 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (340 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (338 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (342 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (330 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (577 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (245 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (580 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (249 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (270 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (248 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (247 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (273 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (274 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (279 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (280 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (269 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (582 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (272 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (246 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (243 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (244 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (304 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (310 << 0)
    chest_item_rare[a][i] = 5
    i++
    chest_item[a][i] = (327 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (312 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (319 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (284 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (305 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (311 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (302 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (343 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (298 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (297 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (288 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (329 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (344 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (349 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (348 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (350 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (447 << 0)
    chest_item_rare[a][i] = 5
    chest_item[a][i] = (251 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (530 << 0)
    chest_item_rare[a][i] = 5
    i++
    chest_item[a][i] = (531 << 0)
    chest_item_rare[a][i] = 5
    i++
    chest_item[a][i] = (532 << 0)
    chest_item_rare[a][i] = 5
    i++
    chest_item[a][i] = (587 << 0)
    chest_item_rare[a][i] = 5
    i++
    chest_item[a][i] = (588 << 0)
    chest_item_rare[a][i] = 5
    i++
    chest_item[a][i] = (589 << 0)
    chest_item_rare[a][i] = 5
    i++
    chest_item[a][i] = (590 << 0)
    chest_item_rare[a][i] = 5
    i++
    a = (12 << 0)
    chest_id[a] = a
    chest_name[a] = "Cash register"
    chest_sprite[a] = 7
    chest_decay_item[a] = 0
    chest_quanti_item_max[a] = 2
    chest_quanti_item_min[a] = 0
    chest_is_drop[a] = 0
    chest_from_enemy[a] = 0
    chest_sound_type[a] = (7 << 0)
    chest_chance_uncommon[a] = 0
    chest_chance_rare[a] = 0
    chest_chance_epic[a] = 0
    chest_chance_legendary[a] = 0
    i = 0
    chest_item[a][i] = (1 << 0)
    chest_item_rare[a][i] = 60
    i++
    a = (13 << 0)
    chest_id[a] = a
    chest_name[a] = "library"
    chest_sprite[a] = 7
    chest_decay_item[a] = 0
    chest_quanti_item_max[a] = 2
    chest_quanti_item_min[a] = 0
    chest_is_drop[a] = 0
    chest_from_enemy[a] = 0
    chest_sound_type[a] = (1 << 0)
    chest_chance_uncommon[a] = 5
    chest_chance_rare[a] = 0
    chest_chance_epic[a] = 0
    chest_chance_legendary[a] = 0
    i = 0
    chest_item[a][i] = (339 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (449 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (447 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (448 << 0)
    chest_item_rare[a][i] = 40
    i++
    a = (6 << 0)
    chest_id[a] = a
    chest_name[a] = "PC"
    chest_sprite[a] = 1231
    chest_decay_item[a] = 1
    chest_quanti_item_max[a] = 5
    chest_quanti_item_min[a] = 3
    chest_is_drop[a] = 0
    chest_from_enemy[a] = 0
    chest_sound_type[a] = (4 << 0)
    chest_chance_uncommon[a] = 50
    chest_chance_rare[a] = 30
    chest_chance_epic[a] = 15
    chest_chance_legendary[a] = 2
    i = 0
    chest_item[a][i] = (308 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (311 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (312 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (307 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (309 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (304 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (320 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (315 << 0)
    chest_item_rare[a][i] = 60
    a = (11 << 0)
    chest_id[a] = a
    chest_name[a] = "Supermarket shelves"
    chest_sprite[a] = 7
    chest_decay_item[a] = 1
    chest_quanti_item_max[a] = 3
    chest_quanti_item_min[a] = 1
    chest_is_drop[a] = 0
    chest_from_enemy[a] = 0
    chest_sound_type[a] = (1 << 0)
    chest_chance_uncommon[a] = 35
    chest_chance_rare[a] = 17
    chest_chance_epic[a] = 8
    chest_chance_legendary[a] = 3
    i = 0
    chest_item[a][i] = (582 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (583 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (577 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (580 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (579 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (578 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (269 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (245 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (264 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (257 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (256 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (266 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (243 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (244 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (248 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (251 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (338 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (345 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (253 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (246 << 0)
    chest_item_rare[a][i] = 5
    i++
    chest_item[a][i] = (273 << 0)
    chest_item_rare[a][i] = 5
    i++
    chest_item[a][i] = (275 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (270 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (274 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (346 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (347 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (254 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (272 << 0)
    chest_item_rare[a][i] = 12
    i++
    a = (32 << 0)
    chest_id[a] = a
    chest_name[a] = "Items collected by Igor"
    chest_sprite[a] = 1230
    chest_decay_item[a] = 0
    chest_quanti_item_max[a] = 15
    chest_quanti_item_min[a] = 11
    chest_is_drop[a] = 0
    chest_from_enemy[a] = 0
    chest_sound_type[a] = (1 << 0)
    chest_chance_uncommon[a] = 60
    chest_chance_rare[a] = 25
    chest_chance_epic[a] = 10
    chest_chance_legendary[a] = 2
    i = 0
    chest_item[a][i] = (1 << 0)
    chest_item_rare[a][i] = 60
    i++
    scr_loot_hidden_stash((32 << 0), 1)
    a = (19 << 0)
    chest_id[a] = a
    chest_name[a] = "medication box"
    chest_sprite[a] = 1229
    chest_decay_item[a] = 1
    chest_quanti_item_max[a] = 7
    chest_quanti_item_min[a] = 5
    chest_is_drop[a] = 0
    chest_from_enemy[a] = 0
    chest_sound_type[a] = (3 << 0)
    chest_chance_uncommon[a] = 50
    chest_chance_rare[a] = 25
    chest_chance_epic[a] = 13
    chest_chance_legendary[a] = 1
    i = 0
    chest_item[a][i] = (492 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (231 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (610 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (437 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (609 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (437 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (226 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (227 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (228 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (229 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (230 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (232 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (448 << 0)
    chest_item_rare[a][i] = 5
    i++
    chest_item[a][i] = (340 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (341 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (431 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (432 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (433 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (434 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (435 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (436 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (611 << 0)
    chest_item_rare[a][i] = 12
    i++
    a = (20 << 0)
    chest_id[a] = a
    chest_name[a] = "attachment box"
    chest_sprite[a] = 1224
    chest_decay_item[a] = 1
    chest_quanti_item_max[a] = 7
    chest_quanti_item_min[a] = 4
    chest_is_drop[a] = 0
    chest_from_enemy[a] = 0
    chest_sound_type[a] = (4 << 0)
    chest_chance_uncommon[a] = 40
    chest_chance_rare[a] = 22
    chest_chance_epic[a] = 10
    chest_chance_legendary[a] = 2
    i = 0
    chest_item[a][i] = (110 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (111 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (112 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (113 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (114 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (115 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (116 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (117 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (118 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (119 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (120 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (121 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (122 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (123 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (124 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (125 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (126 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (127 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (128 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (130 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (131 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (108 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (109 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (132 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (133 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (134 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (135 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (136 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (137 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (138 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (139 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (140 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (141 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (142 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (143 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (144 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (145 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (146 << 0)
    chest_item_rare[a][i] = 5
    i++
    chest_item[a][i] = (147 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (148 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (149 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (150 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (151 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (152 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (153 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (154 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (155 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (156 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (157 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (158 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (159 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (160 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (161 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (162 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (163 << 0)
    chest_item_rare[a][i] = 5
    i++
    chest_item[a][i] = (164 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (165 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (166 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (167 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (168 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (92 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (93 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (94 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (95 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (96 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (97 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (98 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (99 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (101 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (102 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (105 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (106 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (107 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (208 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (210 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (211 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (212 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (529 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (528 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (527 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (526 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (525 << 0)
    chest_item_rare[a][i] = 5
    i++
    chest_item[a][i] = (524 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (523 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (535 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (536 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (537 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (615 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (614 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (616 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (617 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (612 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (613 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (594 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (593 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (595 << 0)
    chest_item_rare[a][i] = 5
    i++
    chest_item[a][i] = (596 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (184 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (185 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (186 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (187 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (188 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (189 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (190 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (191 << 0)
    chest_item_rare[a][i] = 5
    i++
    chest_item[a][i] = (193 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (194 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (195 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (197 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (202 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (203 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (201 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (196 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (198 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (199 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (200 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (209 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (207 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (204 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (205 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (206 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (210 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (212 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (211 << 0)
    chest_item_rare[a][i] = 12
    a = (21 << 0)
    chest_id[a] = a
    chest_name[a] = "weapon box tier I"
    chest_sprite[a] = 1223
    chest_decay_item[a] = 1
    chest_quanti_item_max[a] = 9
    chest_quanti_item_min[a] = 6
    chest_is_drop[a] = 0
    chest_from_enemy[a] = 0
    chest_sound_type[a] = (4 << 0)
    chest_chance_uncommon[a] = 43
    chest_chance_rare[a] = 20
    chest_chance_epic[a] = 7
    chest_chance_legendary[a] = 1
    i = 0
    chest_item[a][i] = (491 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (222 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (556 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (557 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (542 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (604 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (213 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (541 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (215 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (544 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (216 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (600 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (543 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (549 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (602 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (219 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (550 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (221 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (553 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (217 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (547 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (218 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (601 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (548 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (3 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (4 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (47 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (61 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (55 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (34 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (38 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (23 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (80 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (449 << 0)
    chest_item_rare[a][i] = 5
    a = (22 << 0)
    chest_id[a] = a
    chest_name[a] = "Weapon box tier II"
    chest_sprite[a] = 1225
    chest_decay_item[a] = 1
    chest_quanti_item_max[a] = 16
    chest_quanti_item_min[a] = 11
    chest_is_drop[a] = 0
    chest_from_enemy[a] = 0
    chest_sound_type[a] = (4 << 0)
    chest_chance_uncommon[a] = 30
    chest_chance_rare[a] = 17
    chest_chance_epic[a] = 8
    chest_chance_legendary[a] = 1
    i = 0
    chest_item[a][i] = (556 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (557 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (213 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (541 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (214 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (546 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (544 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (216 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (543 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (219 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (550 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (221 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (553 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (217 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (547 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (218 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (548 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (551 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (220 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (552 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (449 << 0)
    chest_item_rare[a][i] = 5
    a = (23 << 0)
    chest_id[a] = a
    chest_name[a] = "Weapon box tier III"
    chest_sprite[a] = 1226
    chest_decay_item[a] = 1
    chest_quanti_item_max[a] = 5
    chest_quanti_item_min[a] = 4
    chest_is_drop[a] = 0
    chest_from_enemy[a] = 0
    chest_sound_type[a] = (4 << 0)
    chest_chance_uncommon[a] = 50
    chest_chance_rare[a] = 30
    chest_chance_epic[a] = 15
    chest_chance_legendary[a] = 5
    i = 0
    chest_item[a][i] = (213 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (214 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (215 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (216 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (219 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (220 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (221 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (217 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (218 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (4 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (6 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (47 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (61 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (55 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (38 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (80 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (17 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (77 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (50 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (36 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (449 << 0)
    chest_item_rare[a][i] = 5
    a = (94 << 0)
    chest_id[a] = a
    chest_name[a] = "Forge"
    chest_sprite[a] = 1220
    chest_decay_item[a] = 0
    chest_quanti_item_max[a] = (5 * global.sk_k[(59 << 0)])
    chest_quanti_item_min[a] = (5 * global.sk_k[(59 << 0)])
    chest_is_drop[a] = 0
    chest_from_enemy[a] = 0
    chest_sound_type[a] = (4 << 0)
    chest_chance_uncommon[a] = 0
    chest_chance_rare[a] = 0
    chest_chance_epic[a] = 0
    chest_chance_legendary[a] = 0
    i = 0
    chest_item[a][i] = (489 << 0)
    chest_item_rare[a][i] = 60
    a = (93 << 0)
    chest_id[a] = a
    chest_name[a] = "Garden"
    chest_sprite[a] = 1220
    chest_decay_item[a] = 0
    chest_quanti_item_max[a] = (6 * global.sk_k[(60 << 0)])
    chest_quanti_item_min[a] = (6 * global.sk_k[(60 << 0)])
    chest_is_drop[a] = 0
    chest_from_enemy[a] = 0
    chest_sound_type[a] = (4 << 0)
    chest_chance_uncommon[a] = 50
    chest_chance_rare[a] = 0
    chest_chance_epic[a] = 0
    chest_chance_legendary[a] = 0
    i = 0
    chest_item[a][i] = (490 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (492 << 0)
    chest_item_rare[a][i] = 40
    a = (95 << 0)
    chest_id[a] = a
    chest_name[a] = "Ammo"
    chest_sprite[a] = 1220
    chest_decay_item[a] = 0
    chest_quanti_item_max[a] = (5 * global.sk_k[(62 << 0)])
    chest_quanti_item_min[a] = (5 * global.sk_k[(62 << 0)])
    chest_is_drop[a] = 0
    chest_from_enemy[a] = 0
    chest_sound_type[a] = (4 << 0)
    chest_chance_uncommon[a] = 0
    chest_chance_rare[a] = 0
    chest_chance_epic[a] = 0
    chest_chance_legendary[a] = 0
    i = 0
    chest_item[a][i] = (491 << 0)
    chest_item_rare[a][i] = 60
    a = (96 << 0)
    chest_id[a] = a
    chest_name[a] = "Scavenger"
    chest_sprite[a] = 1220
    chest_decay_item[a] = 0
    chest_quanti_item_max[a] = (20 * global.sk_k[(63 << 0)])
    chest_quanti_item_min[a] = (20 * global.sk_k[(63 << 0)])
    chest_is_drop[a] = 0
    chest_from_enemy[a] = 0
    chest_sound_type[a] = (4 << 0)
    chest_chance_uncommon[a] = 35
    chest_chance_rare[a] = 15
    chest_chance_epic[a] = 3
    chest_chance_legendary[a] = 0.2
    scr_loot_hidden_stash((96 << 0), 0)
    a = (59 << 0)
    chest_id[a] = a
    chest_name[a] = "Common weapon all"
    chest_sprite[a] = 1223
    chest_decay_item[a] = 0
    chest_quanti_item_max[a] = 40
    chest_quanti_item_min[a] = 38
    chest_is_drop[a] = 0
    chest_from_enemy[a] = 0
    chest_sound_type[a] = (4 << 0)
    chest_chance_uncommon[a] = 0
    chest_chance_rare[a] = 0
    chest_chance_epic[a] = 0
    chest_chance_legendary[a] = 0
    i = 0
    chest_item[a][i] = (222 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (213 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (214 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (215 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (216 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (219 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (220 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (221 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (217 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (218 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (3 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (4 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (6 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (47 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (61 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (55 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (58 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (50 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (34 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (38 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (36 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (17 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (19 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (21 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (22 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (23 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (80 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (74 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (77 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (83 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (79 << 0)
    chest_item_rare[a][i] = 60
    a = (60 << 0)
    chest_id[a] = a
    chest_name[a] = "pistol"
    chest_sprite[a] = 1223
    chest_decay_item[a] = 0
    chest_quanti_item_max[a] = 40
    chest_quanti_item_min[a] = 38
    chest_is_drop[a] = 0
    chest_from_enemy[a] = 0
    chest_sound_type[a] = (4 << 0)
    chest_chance_uncommon[a] = 0
    chest_chance_rare[a] = 0
    chest_chance_epic[a] = 0
    chest_chance_legendary[a] = 0
    i = 0
    chest_item[a][i] = (3 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (4 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (6 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (8 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (9 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (11 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (12 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (13 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (14 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (15 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (16 << 0)
    chest_item_rare[a][i] = 60
    a = (62 << 0)
    chest_id[a] = a
    chest_name[a] = "smg"
    chest_sprite[a] = 1223
    chest_decay_item[a] = 0
    chest_quanti_item_max[a] = 40
    chest_quanti_item_min[a] = 38
    chest_is_drop[a] = 0
    chest_from_enemy[a] = 0
    chest_sound_type[a] = (4 << 0)
    i = 0
    chest_item[a][i] = (17 << 0)
    chest_item_rare[a][i] = 1
    i++
    chest_item[a][i] = (19 << 0)
    chest_item_rare[a][i] = 1
    i++
    chest_item[a][i] = (21 << 0)
    chest_item_rare[a][i] = 1
    i++
    chest_item[a][i] = (23 << 0)
    chest_item_rare[a][i] = 1
    i++
    chest_item[a][i] = (24 << 0)
    chest_item_rare[a][i] = 1
    i++
    chest_item[a][i] = (26 << 0)
    chest_item_rare[a][i] = 1
    i++
    chest_item[a][i] = (28 << 0)
    chest_item_rare[a][i] = 1
    i++
    chest_item[a][i] = (30 << 0)
    chest_item_rare[a][i] = 1
    a = (63 << 0)
    chest_id[a] = a
    chest_name[a] = "rifle"
    chest_sprite[a] = 1223
    chest_decay_item[a] = 0
    chest_quanti_item_max[a] = 40
    chest_quanti_item_min[a] = 38
    chest_is_drop[a] = 0
    chest_from_enemy[a] = 0
    chest_sound_type[a] = (4 << 0)
    chest_chance_uncommon[a] = 0
    chest_chance_rare[a] = 0
    chest_chance_epic[a] = 0
    chest_chance_legendary[a] = 0
    i = 0
    chest_item[a][i] = (47 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (64 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (61 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (50 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (55 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (58 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (72 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (67 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (70 << 0)
    chest_item_rare[a][i] = 60
    a = (61 << 0)
    chest_id[a] = a
    chest_name[a] = "shotgun"
    chest_sprite[a] = 1223
    chest_decay_item[a] = 0
    chest_quanti_item_max[a] = 40
    chest_quanti_item_min[a] = 38
    chest_is_drop[a] = 0
    chest_from_enemy[a] = 0
    chest_sound_type[a] = (4 << 0)
    chest_chance_uncommon[a] = 0
    chest_chance_rare[a] = 0
    chest_chance_epic[a] = 0
    chest_chance_legendary[a] = 0
    i = 0
    chest_item[a][i] = (34 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (36 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (38 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (39 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (41 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (43 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (45 << 0)
    chest_item_rare[a][i] = 60
    a = (64 << 0)
    chest_id[a] = a
    chest_name[a] = "sniper"
    chest_sprite[a] = 1223
    chest_decay_item[a] = 0
    chest_quanti_item_max[a] = 40
    chest_quanti_item_min[a] = 38
    chest_is_drop[a] = 0
    chest_from_enemy[a] = 0
    chest_sound_type[a] = (4 << 0)
    chest_chance_uncommon[a] = 0
    chest_chance_rare[a] = 0
    chest_chance_epic[a] = 0
    chest_chance_legendary[a] = 0
    i = 0
    chest_item[a][i] = (74 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (77 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (87 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (80 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (83 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (84 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (89 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (86 << 0)
    chest_item_rare[a][i] = 60
    a = (65 << 0)
    chest_id[a] = a
    chest_name[a] = "ammo"
    chest_sprite[a] = 1223
    chest_decay_item[a] = 0
    chest_quanti_item_max[a] = 90
    chest_quanti_item_min[a] = 85
    chest_is_drop[a] = 0
    chest_from_enemy[a] = 0
    chest_sound_type[a] = (4 << 0)
    chest_chance_uncommon[a] = 0
    chest_chance_rare[a] = 0
    chest_chance_epic[a] = 0
    chest_chance_legendary[a] = 0
    i = 0
    chest_item[a][i] = (222 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (224 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (225 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (225 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (213 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (541 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (214 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (218 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (223 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (220 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (219 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (221 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (215 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (216 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (217 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (542 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (543 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (544 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (545 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (546 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (547 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (548 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (549 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (550 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (551 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (552 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (553 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (554 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (555 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (556 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (557 << 0)
    chest_item_rare[a][i] = 60
    a = (66 << 0)
    chest_id[a] = a
    chest_name[a] = "Weapon upgrade"
    chest_sprite[a] = 1223
    chest_decay_item[a] = 0
    chest_quanti_item_max[a] = 90
    chest_quanti_item_min[a] = 85
    chest_is_drop[a] = 0
    chest_from_enemy[a] = 0
    chest_sound_type[a] = (4 << 0)
    chest_chance_uncommon[a] = 0
    chest_chance_rare[a] = 0
    chest_chance_epic[a] = 0
    chest_chance_legendary[a] = 0
    i = 0
    chest_item[a][i] = (451 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (452 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (453 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (454 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (455 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (456 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (457 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (458 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (459 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (460 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (461 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (462 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (463 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (464 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (465 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (466 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (467 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (468 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (469 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (470 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (471 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (472 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (473 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (474 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (475 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (476 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (477 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (478 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (479 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (480 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (481 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (482 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (483 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (484 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (485 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (486 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (487 << 0)
    chest_item_rare[a][i] = 60
    a = (68 << 0)
    chest_id[a] = a
    chest_name[a] = "weapon box mod"
    chest_sprite[a] = 1223
    chest_decay_item[a] = 0
    chest_quanti_item_max[a] = 40
    chest_quanti_item_min[a] = 35
    chest_is_drop[a] = 0
    chest_from_enemy[a] = 0
    chest_sound_type[a] = (4 << 0)
    chest_chance_uncommon[a] = 0
    chest_chance_rare[a] = 0
    chest_chance_epic[a] = 0
    chest_chance_legendary[a] = 0
    i = 0
    chest_item[a][i] = (92 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (93 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (94 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (95 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (96 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (97 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (98 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (99 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (193 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (194 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (100 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (101 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (102 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (105 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (106 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (209 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (207 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (107 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (192 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (201 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (196 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (204 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (197 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (202 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (203 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (103 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (195 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (104 << 0)
    chest_item_rare[a][i] = 60
    a = (69 << 0)
    chest_id[a] = a
    chest_name[a] = "weapon box mod ak"
    chest_sprite[a] = 1223
    chest_decay_item[a] = 0
    chest_quanti_item_max[a] = 60
    chest_quanti_item_min[a] = 50
    chest_is_drop[a] = 0
    chest_from_enemy[a] = 0
    chest_sound_type[a] = (4 << 0)
    chest_chance_uncommon[a] = 0
    chest_chance_rare[a] = 0
    chest_chance_epic[a] = 0
    chest_chance_legendary[a] = 0
    i = 0
    chest_item[a][i] = (108 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (109 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (110 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (111 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (112 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (113 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (114 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (115 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (116 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (117 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (118 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (119 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (120 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (121 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (122 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (123 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (124 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (125 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (126 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (127 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (128 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (129 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (130 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (131 << 0)
    chest_item_rare[a][i] = 60
    a = (72 << 0)
    chest_id[a] = a
    chest_name[a] = "Armor"
    chest_sprite[a] = 1223
    chest_decay_item[a] = 0
    chest_quanti_item_max[a] = 40
    chest_quanti_item_min[a] = 38
    chest_is_drop[a] = 0
    chest_from_enemy[a] = 0
    chest_sound_type[a] = (4 << 0)
    chest_chance_uncommon[a] = 0
    chest_chance_rare[a] = 0
    chest_chance_epic[a] = 0
    chest_chance_legendary[a] = 0
    i = 0
    chest_item[a][i] = (413 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (414 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (412 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (416 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (417 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (415 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (418 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (419 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (411 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (422 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (423 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (424 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (425 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (426 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (427 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (420 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (421 << 0)
    chest_item_rare[a][i] = 60
    a = (70 << 0)
    chest_id[a] = a
    chest_name[a] = "book box"
    chest_sprite[a] = 1223
    chest_decay_item[a] = 0
    chest_quanti_item_max[a] = 30
    chest_quanti_item_min[a] = 28
    chest_is_drop[a] = 0
    chest_from_enemy[a] = 0
    chest_sound_type[a] = (4 << 0)
    chest_chance_uncommon[a] = 0
    chest_chance_rare[a] = 0
    chest_chance_epic[a] = 0
    chest_chance_legendary[a] = 0
    i = 0
    chest_item[a][i] = (443 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (444 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (445 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (446 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (448 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (449 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (447 << 0)
    chest_item_rare[a][i] = 60
    a = (71 << 0)
    chest_id[a] = a
    chest_name[a] = "Base upgrade box"
    chest_sprite[a] = 1223
    chest_decay_item[a] = 0
    chest_quanti_item_max[a] = 12
    chest_quanti_item_min[a] = 10
    chest_is_drop[a] = 0
    chest_from_enemy[a] = 0
    chest_sound_type[a] = (4 << 0)
    chest_chance_uncommon[a] = 0
    chest_chance_rare[a] = 0
    chest_chance_epic[a] = 0
    chest_chance_legendary[a] = 0
    i = 0
    chest_item[a][i] = (495 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (494 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (497 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (496 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (498 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (499 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (500 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (501 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (502 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (506 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (503 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (504 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (505 << 0)
    chest_item_rare[a][i] = 60
    a = (67 << 0)
    chest_id[a] = a
    chest_name[a] = "weapon_box_moddable"
    chest_sprite[a] = 1223
    chest_decay_item[a] = 0
    chest_quanti_item_max[a] = 90
    chest_quanti_item_min[a] = 85
    chest_is_drop[a] = 0
    chest_from_enemy[a] = 0
    chest_sound_type[a] = (4 << 0)
    chest_chance_uncommon[a] = 0
    chest_chance_rare[a] = 0
    chest_chance_epic[a] = 0
    chest_chance_legendary[a] = 0
    i = 0
    chest_item[a][i] = (58 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (47 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (64 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (55 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (54 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (50 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (74 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (36 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (17 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (28 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (23 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (24 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (80 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (67 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (84 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (86 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (6 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (61 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (45 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (39 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (9 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (4 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (21 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (87 << 0)
    chest_item_rare[a][i] = 60
    a = (73 << 0)
    chest_id[a] = a
    chest_name[a] = "backpack_box"
    chest_sprite[a] = 1223
    chest_decay_item[a] = 0
    chest_quanti_item_max[a] = 90
    chest_quanti_item_min[a] = 85
    chest_is_drop[a] = 0
    chest_from_enemy[a] = 0
    chest_sound_type[a] = (4 << 0)
    chest_chance_uncommon[a] = 0
    chest_chance_rare[a] = 0
    chest_chance_epic[a] = 0
    chest_chance_legendary[a] = 0
    i = 0
    chest_item[a][i] = (402 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (403 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (404 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (405 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (406 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (407 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (408 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (409 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (410 << 0)
    chest_item_rare[a][i] = 60
    a = (97 << 0)
    chest_id[a] = a
    chest_name[a] = "quest_item"
    chest_sprite[a] = 1223
    chest_decay_item[a] = 0
    chest_quanti_item_max[a] = 90
    chest_quanti_item_min[a] = 85
    chest_is_drop[a] = 0
    chest_from_enemy[a] = 0
    chest_sound_type[a] = (4 << 0)
    chest_chance_uncommon[a] = 0
    chest_chance_rare[a] = 0
    chest_chance_epic[a] = 0
    chest_chance_legendary[a] = 0
    i = 0
    chest_item[a][i] = (364 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (365 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (363 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (355 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (356 << 0)
    chest_item_rare[a][i] = 60
    a = (74 << 0)
    chest_id[a] = a
    chest_name[a] = "key_box"
    chest_sprite[a] = 1223
    chest_decay_item[a] = 0
    chest_quanti_item_max[a] = 50
    chest_quanti_item_min[a] = 40
    chest_is_drop[a] = 0
    chest_from_enemy[a] = 0
    chest_sound_type[a] = (4 << 0)
    chest_chance_uncommon[a] = 0
    chest_chance_rare[a] = 0
    chest_chance_epic[a] = 0
    chest_chance_legendary[a] = 0
    i = 0
    chest_item[a][i] = (521 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (522 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (530 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (531 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (532 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (520 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (534 << 0)
    chest_item_rare[a][i] = 60
    a = (5 << 0)
    chest_id[a] = a
    chest_name[a] = "Wood crate"
    chest_sprite[a] = 1228
    chest_decay_item[a] = 1
    chest_quanti_item_max[a] = 4
    chest_quanti_item_min[a] = 1
    chest_is_drop[a] = 0
    chest_from_enemy[a] = 0
    chest_sound_type[a] = (4 << 0)
    chest_chance_uncommon[a] = 50
    chest_chance_rare[a] = 25
    chest_chance_epic[a] = 10
    chest_chance_legendary[a] = 1
    i = 0
    chest_item[a][i] = (269 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (244 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (243 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (270 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (577 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (245 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (248 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (272 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (328 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (280 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (329 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (331 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (332 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (333 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (226 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (227 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (228 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (229 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (304 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (294 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (274 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (247 << 0)
    chest_item_rare[a][i] = 5
    i++
    chest_item[a][i] = (273 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (246 << 0)
    chest_item_rare[a][i] = 5
    i++
    chest_item[a][i] = (285 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (313 << 0)
    chest_item_rare[a][i] = 25
    a = (75 << 0)
    chest_id[a] = a
    chest_name[a] = "Air drop"
    chest_sprite[a] = 1234
    chest_decay_item[a] = 0
    chest_quanti_item_max[a] = 55
    chest_quanti_item_min[a] = 52
    chest_is_drop[a] = 0
    chest_from_enemy[a] = 0
    chest_sound_type[a] = (4 << 0)
    chest_chance_uncommon[a] = 30
    chest_chance_rare[a] = 18
    chest_chance_epic[a] = 6
    chest_chance_legendary[a] = 0.75
    i = 0
    chest_item[a][i] = (229 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (609 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (231 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (226 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (227 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (228 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (233 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (234 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (230 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (232 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (243 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (244 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (245 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (275 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (253 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (271 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (272 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (270 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (273 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (274 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (276 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (269 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (215 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (544 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (218 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (548 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (216 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (543 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (225 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (555 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (554 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (551 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (220 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (552 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (221 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (553 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (213 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (541 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (217 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (547 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (219 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (550 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (214 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (546 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (556 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (557 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (3 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (64 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (55 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (61 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (34 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (32 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (23 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (17 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (24 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (36 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (576 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (21 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (9 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (6 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (58 << 0)
    chest_item_rare[a][i] = 5
    i++
    chest_item[a][i] = (67 << 0)
    chest_item_rare[a][i] = 5
    i++
    chest_item[a][i] = (54 << 0)
    chest_item_rare[a][i] = 5
    i++
    chest_item[a][i] = (74 << 0)
    chest_item_rare[a][i] = 5
    i++
    chest_item[a][i] = (77 << 0)
    chest_item_rare[a][i] = 5
    i++
    chest_item[a][i] = (241 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (242 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (240 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (238 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (236 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (239 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (237 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (235 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (325 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (326 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (310 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (314 << 0)
    chest_item_rare[a][i] = 5
    i++
    chest_item[a][i] = (316 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (204 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (208 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (207 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (209 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (211 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (212 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (186 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (184 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (185 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (190 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (191 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (187 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (188 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (189 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (193 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (109 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (97 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (163 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (585 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (128 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (106 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (102 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (159 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (599 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (525 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (157 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (170 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (107 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (104 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (115 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (526 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (154 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (177 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (145 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (146 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (140 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (149 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (120 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (121 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (173 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (174 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (429 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (422 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (423 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (425 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (418 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (426 << 0)
    chest_item_rare[a][i] = 5
    i++
    chest_item[a][i] = (419 << 0)
    chest_item_rare[a][i] = 5
    i++
    a = (24 << 0)
    chest_id[a] = a
    chest_name[a] = "Novice Bandit"
    chest_sprite[a] = 27
    chest_decay_item[a] = 0
    chest_quanti_item_max[a] = 5
    chest_quanti_item_min[a] = 3
    chest_is_drop[a] = 1
    chest_from_enemy[a] = 1
    chest_sound_type[a] = (1 << 0)
    chest_chance_uncommon[a] = 40
    chest_chance_rare[a] = 20
    chest_chance_epic[a] = 10
    chest_chance_legendary[a] = 1
    scr_chest_loot_human_general_1(1)
    a = (25 << 0)
    chest_id[a] = a
    chest_name[a] = "Lazar"
    chest_sprite[a] = 30
    chest_decay_item[a] = 0
    chest_quanti_item_max[a] = 14
    chest_quanti_item_min[a] = 10
    chest_is_drop[a] = 1
    chest_from_enemy[a] = 1
    chest_sound_type[a] = (1 << 0)
    chest_chance_uncommon[a] = 50
    chest_chance_rare[a] = 20
    chest_chance_epic[a] = 15
    chest_chance_legendary[a] = 4
    scr_chest_loot_human_general_1(1)
    a = (26 << 0)
    chest_id[a] = a
    chest_name[a] = "Arman"
    chest_sprite[a] = 195
    chest_decay_item[a] = 0
    chest_quanti_item_max[a] = 18
    chest_quanti_item_min[a] = 15
    chest_is_drop[a] = 1
    chest_from_enemy[a] = 1
    chest_sound_type[a] = (1 << 0)
    chest_chance_uncommon[a] = 40
    chest_chance_rare[a] = 18
    chest_chance_epic[a] = 7
    chest_chance_legendary[a] = 1
    i = 0
    chest_item[a][i] = (229 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (609 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (610 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (437 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (226 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (550 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (246 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (233 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (550 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (432 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (433 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (611 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (448 << 0)
    chest_item_rare[a][i] = 5
    i++
    chest_item[a][i] = (447 << 0)
    chest_item_rare[a][i] = 5
    i++
    chest_item[a][i] = (449 << 0)
    chest_item_rare[a][i] = 5
    i++
    a = (27 << 0)
    chest_id[a] = a
    chest_name[a] = "Kibba"
    chest_sprite[a] = 198
    chest_decay_item[a] = 0
    chest_quanti_item_max[a] = 16
    chest_quanti_item_min[a] = 13
    chest_is_drop[a] = 1
    chest_from_enemy[a] = 1
    chest_sound_type[a] = (1 << 0)
    chest_chance_uncommon[a] = 45
    chest_chance_rare[a] = 15
    chest_chance_epic[a] = 7
    chest_chance_legendary[a] = 2
    i = 0
    chest_item[a][i] = (229 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (231 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (270 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (541 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (226 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (232 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (541 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (246 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (233 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (431 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (234 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (434 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (591 << 0)
    chest_item_rare[a][i] = 5
    i++
    a = (28 << 0)
    chest_id[a] = a
    chest_name[a] = "Loner"
    chest_sprite[a] = 50
    chest_decay_item[a] = 0
    chest_quanti_item_max[a] = 5
    chest_quanti_item_min[a] = 3
    chest_is_drop[a] = 1
    chest_from_enemy[a] = 1
    chest_sound_type[a] = (1 << 0)
    chest_chance_uncommon[a] = 50
    chest_chance_rare[a] = 25
    chest_chance_epic[a] = 10
    chest_chance_legendary[a] = 3
    scr_chest_loot_human_general_1(1)
    a = (29 << 0)
    chest_id[a] = a
    chest_name[a] = "Loner"
    chest_sprite[a] = 114
    chest_decay_item[a] = 0
    chest_quanti_item_max[a] = 12
    chest_quanti_item_min[a] = 5
    chest_is_drop[a] = 1
    chest_from_enemy[a] = 1
    chest_sound_type[a] = (1 << 0)
    chest_chance_uncommon[a] = 50
    chest_chance_rare[a] = 25
    chest_chance_epic[a] = 10
    chest_chance_legendary[a] = 3
    scr_chest_loot_human_general_1(1)
    a = (36 << 0)
    chest_id[a] = a
    chest_name[a] = "Green Army soldier"
    chest_sprite[a] = 62
    chest_decay_item[a] = 0
    chest_quanti_item_max[a] = 11
    chest_quanti_item_min[a] = 4
    chest_is_drop[a] = 1
    chest_from_enemy[a] = 1
    chest_sound_type[a] = (1 << 0)
    chest_chance_uncommon[a] = 50
    chest_chance_rare[a] = 25
    chest_chance_epic[a] = 10
    chest_chance_legendary[a] = 3
    scr_chest_loot_human_general_1(1)
    a = (88 << 0)
    chest_id[a] = a
    chest_name[a] = "Green Army soldier"
    chest_sprite[a] = 62
    chest_decay_item[a] = 0
    chest_quanti_item_max[a] = 8
    chest_quanti_item_min[a] = 5
    chest_is_drop[a] = 0
    chest_from_enemy[a] = 0
    chest_sound_type[a] = (1 << 0)
    chest_chance_uncommon[a] = 50
    chest_chance_rare[a] = 25
    chest_chance_epic[a] = 10
    chest_chance_legendary[a] = 3
    scr_chest_loot_human_general_1(1)
    a = (38 << 0)
    chest_id[a] = a
    chest_name[a] = "Crimson soldier"
    chest_sprite[a] = 58
    chest_decay_item[a] = 0
    chest_quanti_item_max[a] = 12
    chest_quanti_item_min[a] = 5
    chest_is_drop[a] = 1
    chest_from_enemy[a] = 1
    chest_sound_type[a] = (1 << 0)
    chest_chance_uncommon[a] = 50
    chest_chance_rare[a] = 25
    chest_chance_epic[a] = 10
    chest_chance_legendary[a] = 3
    scr_chest_loot_human_general_1(1)
    a = (30 << 0)
    chest_id[a] = a
    chest_name[a] = "Igor Kuzmin"
    chest_sprite[a] = 176
    chest_decay_item[a] = 0
    chest_quanti_item_max[a] = 5
    chest_quanti_item_min[a] = 3
    chest_is_drop[a] = 1
    chest_from_enemy[a] = 1
    chest_sound_type[a] = (1 << 0)
    chest_chance_uncommon[a] = 40
    chest_chance_rare[a] = 20
    chest_chance_epic[a] = 10
    chest_chance_legendary[a] = 1
    i = 0
    chest_item[a][i] = (1 << 0)
    chest_item_rare[a][i] = 60
    a = (31 << 0)
    chest_id[a] = a
    chest_name[a] = "Igor Kuzmin"
    chest_sprite[a] = 176
    chest_decay_item[a] = 0
    chest_quanti_item_max[a] = 3
    chest_quanti_item_min[a] = 2
    chest_is_drop[a] = 0
    chest_from_enemy[a] = 0
    chest_sound_type[a] = (1 << 0)
    chest_chance_uncommon[a] = 0
    chest_chance_rare[a] = 0
    chest_chance_epic[a] = 0
    chest_chance_legendary[a] = 0
    i = 0
    chest_item[a][i] = (373 << 0)
    chest_item_rare[a][i] = 60
    a = (33 << 0)
    chest_id[a] = a
    chest_name[a] = "Mr. Junk"
    chest_sprite[a] = 189
    chest_decay_item[a] = 0
    chest_quanti_item_max[a] = 1
    chest_quanti_item_min[a] = 1
    chest_is_drop[a] = 0
    chest_from_enemy[a] = 0
    chest_sound_type[a] = (1 << 0)
    chest_chance_uncommon[a] = 0
    chest_chance_rare[a] = 0
    chest_chance_epic[a] = 0
    chest_chance_legendary[a] = 0
    i = 0
    chest_item[a][i] = (538 << 0)
    chest_item_rare[a][i] = 60
    a = (34 << 0)
    chest_id[a] = a
    chest_name[a] = "Mr. Junk"
    chest_sprite[a] = 189
    chest_decay_item[a] = 0
    chest_quanti_item_max[a] = 3
    chest_quanti_item_min[a] = 2
    chest_is_drop[a] = 0
    chest_from_enemy[a] = 0
    chest_sound_type[a] = (1 << 0)
    chest_chance_uncommon[a] = 0
    chest_chance_rare[a] = 0
    chest_chance_epic[a] = 0
    chest_chance_legendary[a] = 0
    i = 0
    chest_item[a][i] = (373 << 0)
    chest_item_rare[a][i] = 60
    a = (35 << 0)
    chest_id[a] = a
    chest_name[a] = "Mr. Junk's treasure"
    chest_sprite[a] = 1554
    chest_decay_item[a] = 0
    chest_quanti_item_max[a] = 23
    chest_quanti_item_min[a] = 16
    chest_is_drop[a] = 0
    chest_from_enemy[a] = 0
    chest_sound_type[a] = (4 << 0)
    chest_chance_uncommon[a] = 35
    chest_chance_rare[a] = 20
    chest_chance_epic[a] = 10
    chest_chance_legendary[a] = 0.5
    i = 0
    chest_item[a][i] = (489 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (491 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (493 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (296 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (285 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (303 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (286 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (283 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (284 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (282 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (299 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (328 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (338 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (348 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (350 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (303 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (330 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (349 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (311 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (305 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (287 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (331 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (332 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (333 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (342 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (290 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (302 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (297 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (311 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (305 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (320 << 0)
    chest_item_rare[a][i] = 25
    i++
    chest_item[a][i] = (327 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (395 << 0)
    chest_item_rare[a][i] = 12
    i++
    chest_item[a][i] = (314 << 0)
    chest_item_rare[a][i] = 5
    i++
    chest_item[a][i] = (316 << 0)
    chest_item_rare[a][i] = 5
    i++
    chest_item[a][i] = (394 << 0)
    chest_item_rare[a][i] = 5
    i++
    a = (91 << 0)
    chest_id[a] = a
    chest_name[a] = "Grigoriy memorial"
    chest_sprite[a] = 1240
    chest_decay_item[a] = 0
    chest_quanti_item_max[a] = 1
    chest_quanti_item_min[a] = 1
    chest_is_drop[a] = 0
    chest_from_enemy[a] = 0
    chest_sound_type[a] = (1 << 0)
    chest_chance_uncommon[a] = 0
    chest_chance_rare[a] = 0
    chest_chance_epic[a] = 0
    chest_chance_legendary[a] = 0
    i = 0
    chest_item[a][i] = (539 << 0)
    chest_item_rare[a][i] = 60
    a = (39 << 0)
    chest_id[a] = a
    chest_name[a] = "Mercenary"
    chest_sprite[a] = 78
    chest_decay_item[a] = 0
    chest_quanti_item_max[a] = 15
    chest_quanti_item_min[a] = 5
    chest_is_drop[a] = 1
    chest_from_enemy[a] = 1
    chest_sound_type[a] = (1 << 0)
    chest_chance_uncommon[a] = 50
    chest_chance_rare[a] = 25
    chest_chance_epic[a] = 10
    chest_chance_legendary[a] = 3
    scr_chest_loot_human_general_1(1)
    a = (40 << 0)
    chest_id[a] = a
    chest_name[a] = "scientist"
    chest_sprite[a] = 69
    chest_decay_item[a] = 0
    chest_quanti_item_max[a] = 7
    chest_quanti_item_min[a] = 3
    chest_is_drop[a] = 1
    chest_from_enemy[a] = 1
    chest_sound_type[a] = (1 << 0)
    chest_chance_uncommon[a] = 50
    chest_chance_rare[a] = 25
    chest_chance_epic[a] = 10
    chest_chance_legendary[a] = 3
    scr_chest_loot_human_general_1(1)
    a = (46 << 0)
    chest_id[a] = a
    chest_name[a] = "Zombie"
    chest_sprite[a] = 89
    chest_decay_item[a] = 0
    chest_quanti_item_max[a] = 5
    chest_quanti_item_min[a] = 4
    chest_is_drop[a] = 1
    chest_from_enemy[a] = 1
    chest_sound_type[a] = (1 << 0)
    chest_chance_uncommon[a] = 50
    chest_chance_rare[a] = 25
    chest_chance_epic[a] = 10
    chest_chance_legendary[a] = 3
    scr_chest_loot_human_general_1(1)
    a = (48 << 0)
    chest_id[a] = a
    chest_name[a] = "Spider"
    chest_sprite[a] = 95
    chest_decay_item[a] = 0
    chest_quanti_item_max[a] = 3
    chest_quanti_item_min[a] = 2
    chest_is_drop[a] = 0
    chest_from_enemy[a] = 1
    chest_sound_type[a] = (2 << 0)
    chest_chance_uncommon[a] = 0
    chest_chance_rare[a] = 0
    chest_chance_epic[a] = 0
    chest_chance_legendary[a] = 0
    i = 0
    chest_item[a][i] = (380 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (381 << 0)
    chest_item_rare[a][i] = 60
    a = (55 << 0)
    chest_id[a] = a
    chest_name[a] = "Watcher"
    chest_sprite[a] = 135
    chest_decay_item[a] = 0
    chest_quanti_item_max[a] = 3
    chest_quanti_item_min[a] = 1
    chest_is_drop[a] = 0
    chest_from_enemy[a] = 1
    chest_sound_type[a] = (2 << 0)
    chest_chance_uncommon[a] = 0
    chest_chance_rare[a] = 0
    chest_chance_epic[a] = 0
    chest_chance_legendary[a] = 0
    i = 0
    chest_item[a][i] = (388 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (226 << 0)
    chest_item_rare[a][i] = 60
    a = (50 << 0)
    chest_id[a] = a
    chest_name[a] = "Devourer"
    chest_sprite[a] = 1931
    chest_decay_item[a] = 0
    chest_quanti_item_max[a] = 2
    chest_quanti_item_min[a] = 1
    chest_is_drop[a] = 0
    chest_from_enemy[a] = 1
    chest_sound_type[a] = (2 << 0)
    chest_chance_uncommon[a] = 0
    chest_chance_rare[a] = 0
    chest_chance_epic[a] = 0
    chest_chance_legendary[a] = 0
    i = 0
    chest_item[a][i] = (383 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (382 << 0)
    chest_item_rare[a][i] = 60
    a = (41 << 0)
    chest_id[a] = a
    chest_name[a] = "Wolf"
    chest_sprite[a] = 84
    chest_decay_item[a] = 0
    chest_quanti_item_max[a] = 3
    chest_quanti_item_min[a] = 2
    chest_is_drop[a] = 0
    chest_from_enemy[a] = 1
    chest_sound_type[a] = (2 << 0)
    chest_chance_uncommon[a] = 0
    chest_chance_rare[a] = 0
    chest_chance_epic[a] = 0
    chest_chance_legendary[a] = 0
    i = 0
    chest_item[a][i] = (373 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (377 << 0)
    chest_item_rare[a][i] = 60
    a = (42 << 0)
    chest_id[a] = a
    chest_name[a] = "rat"
    chest_sprite[a] = 149
    chest_decay_item[a] = 0
    chest_quanti_item_max[a] = 2
    chest_quanti_item_min[a] = 0
    chest_is_drop[a] = 0
    chest_from_enemy[a] = 1
    chest_sound_type[a] = (2 << 0)
    chest_chance_uncommon[a] = 0
    chest_chance_rare[a] = 0
    chest_chance_epic[a] = 0
    chest_chance_legendary[a] = 0
    i = 0
    chest_item[a][i] = (373 << 0)
    chest_item_rare[a][i] = 60
    a = (43 << 0)
    chest_id[a] = a
    chest_name[a] = "ghoul"
    chest_sprite[a] = 153
    chest_decay_item[a] = 0
    chest_quanti_item_max[a] = 3
    chest_quanti_item_min[a] = 1
    chest_is_drop[a] = 0
    chest_from_enemy[a] = 1
    chest_sound_type[a] = (2 << 0)
    chest_chance_uncommon[a] = 0
    chest_chance_rare[a] = 0
    chest_chance_epic[a] = 0
    chest_chance_legendary[a] = 0
    i = 0
    chest_item[a][i] = (373 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (571 << 0)
    chest_item_rare[a][i] = 60
    a = (53 << 0)
    chest_id[a] = a
    chest_name[a] = "Spine"
    chest_sprite[a] = 107
    chest_decay_item[a] = 0
    chest_quanti_item_max[a] = 2
    chest_quanti_item_min[a] = 1
    chest_is_drop[a] = 0
    chest_from_enemy[a] = 1
    chest_sound_type[a] = (2 << 0)
    chest_chance_uncommon[a] = 0
    chest_chance_rare[a] = 0
    chest_chance_epic[a] = 0
    chest_chance_legendary[a] = 0
    i = 0
    chest_item[a][i] = (386 << 0)
    chest_item_rare[a][i] = 60
    a = (44 << 0)
    chest_id[a] = a
    chest_name[a] = "Boar"
    chest_sprite[a] = 99
    chest_decay_item[a] = 0
    chest_quanti_item_max[a] = 5
    chest_quanti_item_min[a] = 2
    chest_is_drop[a] = 0
    chest_from_enemy[a] = 1
    chest_sound_type[a] = (2 << 0)
    chest_chance_uncommon[a] = 30
    chest_chance_rare[a] = 0
    chest_chance_epic[a] = 0
    chest_chance_legendary[a] = 0
    i = 0
    chest_item[a][i] = (373 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (385 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (375 << 0)
    chest_item_rare[a][i] = 60
    a = (49 << 0)
    chest_id[a] = a
    chest_name[a] = "blink"
    chest_sprite[a] = 173
    chest_decay_item[a] = 0
    chest_quanti_item_max[a] = 4
    chest_quanti_item_min[a] = 3
    chest_is_drop[a] = 0
    chest_from_enemy[a] = 1
    chest_sound_type[a] = (2 << 0)
    chest_chance_uncommon[a] = 0
    chest_chance_rare[a] = 0
    chest_chance_epic[a] = 0
    chest_chance_legendary[a] = 0
    i = 0
    chest_item[a][i] = (373 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (572 << 0)
    chest_item_rare[a][i] = 60
    a = (47 << 0)
    chest_id[a] = a
    chest_name[a] = "Big"
    chest_sprite[a] = 158
    chest_decay_item[a] = 0
    chest_quanti_item_max[a] = 8
    chest_quanti_item_min[a] = 5
    chest_is_drop[a] = 0
    chest_from_enemy[a] = 1
    chest_sound_type[a] = (2 << 0)
    chest_chance_uncommon[a] = 20
    chest_chance_rare[a] = 0
    chest_chance_epic[a] = 0
    chest_chance_legendary[a] = 0
    i = 0
    chest_item[a][i] = (373 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (382 << 0)
    chest_item_rare[a][i] = 40
    a = (45 << 0)
    chest_id[a] = a
    chest_name[a] = "Mutated Boar"
    chest_sprite[a] = 103
    chest_decay_item[a] = 0
    chest_quanti_item_max[a] = 4
    chest_quanti_item_min[a] = 1
    chest_is_drop[a] = 0
    chest_from_enemy[a] = 1
    chest_sound_type[a] = (2 << 0)
    chest_chance_uncommon[a] = 30
    chest_chance_rare[a] = 0
    chest_chance_epic[a] = 0
    chest_chance_legendary[a] = 0
    i = 0
    chest_item[a][i] = (373 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (385 << 0)
    chest_item_rare[a][i] = 40
    i++
    chest_item[a][i] = (375 << 0)
    chest_item_rare[a][i] = 40
    a = (51 << 0)
    chest_id[a] = a
    chest_name[a] = "Rabbit"
    chest_sprite[a] = 139
    chest_decay_item[a] = 0
    chest_quanti_item_max[a] = 3
    chest_quanti_item_min[a] = 1
    chest_is_drop[a] = 0
    chest_from_enemy[a] = 1
    chest_sound_type[a] = (2 << 0)
    chest_chance_uncommon[a] = 0
    chest_chance_rare[a] = 0
    chest_chance_epic[a] = 0
    chest_chance_legendary[a] = 0
    i = 0
    chest_item[a][i] = (373 << 0)
    chest_item_rare[a][i] = 60
    i++
    chest_item[a][i] = (389 << 0)
    chest_item_rare[a][i] = 60
    a = (52 << 0)
    chest_id[a] = a
    chest_name[a] = "Crow"
    chest_sprite[a] = 146
    chest_decay_item[a] = 0
    chest_quanti_item_max[a] = 1
    chest_quanti_item_min[a] = 0
    chest_is_drop[a] = 0
    chest_from_enemy[a] = 1
    chest_sound_type[a] = (2 << 0)
    chest_chance_uncommon[a] = 0
    chest_chance_rare[a] = 0
    chest_chance_epic[a] = 0
    chest_chance_legendary[a] = 0
    i = 0
    chest_item[a][i] = (373 << 0)
    chest_item_rare[a][i] = 60
    a = (58 << 0)
    chest_id[a] = a
    chest_name[a] = "Mutated plant"
    chest_sprite[a] = 1931
    chest_decay_item[a] = 0
    chest_quanti_item_max[a] = 5
    chest_quanti_item_min[a] = 3
    chest_is_drop[a] = 0
    chest_from_enemy[a] = 1
    chest_sound_type[a] = (2 << 0)
    chest_chance_uncommon[a] = 0
    chest_chance_rare[a] = 0
    chest_chance_epic[a] = 0
    chest_chance_legendary[a] = 0
    i = 0
    chest_item[a][i] = (387 << 0)
    chest_item_rare[a][i] = 60
    a = (56 << 0)
    chest_id[a] = a
    chest_name[a] = "Anomaly Electric"
    chest_sprite[a] = 1931
    chest_decay_item[a] = 0
    chest_quanti_item_max[a] = 3
    chest_quanti_item_min[a] = 1
    chest_is_drop[a] = 0
    chest_from_enemy[a] = 1
    chest_sound_type[a] = (2 << 0)
    chest_chance_uncommon[a] = 0
    chest_chance_rare[a] = 0
    chest_chance_epic[a] = 0
    chest_chance_legendary[a] = 0
    i = 0
    chest_item[a][i] = (439 << 0)
    chest_item_rare[a][i] = 60
    a = (57 << 0)
    chest_id[a] = a
    chest_name[a] = "Anomaly Fire"
    chest_sprite[a] = 1931
    chest_decay_item[a] = 0
    chest_quanti_item_max[a] = 3
    chest_quanti_item_min[a] = 1
    chest_is_drop[a] = 0
    chest_from_enemy[a] = 1
    chest_sound_type[a] = (2 << 0)
    chest_chance_uncommon[a] = 0
    chest_chance_rare[a] = 0
    chest_chance_epic[a] = 0
    chest_chance_legendary[a] = 0
    i = 0
    chest_item[a][i] = (438 << 0)
    chest_item_rare[a][i] = 60
    a = (54 << 0)
    chest_id[a] = a
    chest_name[a] = "infestation"
    chest_sprite[a] = 169
    chest_decay_item[a] = 0
    chest_quanti_item_max[a] = 5
    chest_quanti_item_min[a] = 4
    chest_is_drop[a] = 0
    chest_from_enemy[a] = 1
    chest_sound_type[a] = (2 << 0)
    chest_chance_uncommon[a] = 0
    chest_chance_rare[a] = 0
    chest_chance_epic[a] = 0
    chest_chance_legendary[a] = 0
    i = 0
    chest_item[a][i] = (373 << 0)
    chest_item_rare[a][i] = 60
    a = (76 << 0)
    chest_id[a] = a
    chest_name[a] = "dead loner"
    chest_sprite[a] = 50
    chest_decay_item[a] = 0
    chest_quanti_item_max[a] = 1
    chest_quanti_item_min[a] = 1
    chest_is_drop[a] = 0
    chest_from_enemy[a] = 0
    chest_sound_type[a] = (1 << 0)
    chest_chance_uncommon[a] = 0
    chest_chance_rare[a] = 0
    chest_chance_epic[a] = 0
    chest_chance_legendary[a] = 0
    i = 0
    chest_item[a][i] = (355 << 0)
    chest_item_rare[a][i] = 60
    a = (77 << 0)
    chest_id[a] = a
    chest_name[a] = "dead loner"
    chest_sprite[a] = 50
    chest_decay_item[a] = 0
    chest_quanti_item_max[a] = 1
    chest_quanti_item_min[a] = 1
    chest_is_drop[a] = 0
    chest_from_enemy[a] = 0
    chest_sound_type[a] = (1 << 0)
    chest_chance_uncommon[a] = 0
    chest_chance_rare[a] = 0
    chest_chance_epic[a] = 0
    chest_chance_legendary[a] = 0
    i = 0
    chest_item[a][i] = (356 << 0)
    chest_item_rare[a][i] = 60
    a = (78 << 0)
    chest_id[a] = a
    chest_name[a] = "dead loner"
    chest_sprite[a] = 50
    chest_quanti_item_max[a] = 1
    chest_quanti_item_min[a] = 1
    chest_decay_item[a] = 0
    chest_is_drop[a] = 0
    chest_from_enemy[a] = 0
    chest_sound_type[a] = (1 << 0)
    chest_chance_uncommon[a] = 0
    chest_chance_rare[a] = 0
    chest_chance_epic[a] = 0
    chest_chance_legendary[a] = 0
    i = 0
    chest_item[a][i] = (357 << 0)
    chest_item_rare[a][i] = 60
    a = (79 << 0)
    chest_id[a] = a
    chest_name[a] = "dead loner"
    chest_sprite[a] = 50
    chest_decay_item[a] = 0
    chest_quanti_item_max[a] = 1
    chest_quanti_item_min[a] = 1
    chest_is_drop[a] = 0
    chest_from_enemy[a] = 0
    chest_sound_type[a] = (1 << 0)
    chest_chance_uncommon[a] = 0
    chest_chance_rare[a] = 0
    chest_chance_epic[a] = 0
    chest_chance_legendary[a] = 0
    i = 0
    chest_item[a][i] = (358 << 0)
    chest_item_rare[a][i] = 60
    a = (80 << 0)
    chest_id[a] = a
    chest_name[a] = "dead scientist"
    chest_sprite[a] = 66
    chest_decay_item[a] = 0
    chest_quanti_item_max[a] = 1
    chest_quanti_item_min[a] = 1
    chest_is_drop[a] = 0
    chest_from_enemy[a] = 0
    chest_sound_type[a] = (1 << 0)
    chest_chance_uncommon[a] = 0
    chest_chance_rare[a] = 0
    chest_chance_epic[a] = 0
    chest_chance_legendary[a] = 0
    i = 0
    chest_item[a][i] = (359 << 0)
    chest_item_rare[a][i] = 60
    a = (81 << 0)
    chest_id[a] = a
    chest_name[a] = "dead scientist"
    chest_sprite[a] = 66
    chest_decay_item[a] = 0
    chest_quanti_item_max[a] = 1
    chest_quanti_item_min[a] = 1
    chest_is_drop[a] = 0
    chest_from_enemy[a] = 0
    chest_sound_type[a] = (1 << 0)
    chest_chance_uncommon[a] = 0
    chest_chance_rare[a] = 0
    chest_chance_epic[a] = 0
    chest_chance_legendary[a] = 0
    i = 0
    chest_item[a][i] = (360 << 0)
    chest_item_rare[a][i] = 60
    a = (82 << 0)
    chest_id[a] = a
    chest_name[a] = "dead scientist"
    chest_sprite[a] = 66
    chest_decay_item[a] = 0
    chest_quanti_item_max[a] = 1
    chest_quanti_item_min[a] = 1
    chest_is_drop[a] = 0
    chest_from_enemy[a] = 0
    chest_sound_type[a] = (1 << 0)
    chest_chance_uncommon[a] = 0
    chest_chance_rare[a] = 0
    chest_chance_epic[a] = 0
    chest_chance_legendary[a] = 0
    i = 0
    chest_item[a][i] = (361 << 0)
    chest_item_rare[a][i] = 60
    a = (83 << 0)
    chest_id[a] = a
    chest_name[a] = "dead scientist"
    chest_sprite[a] = 66
    chest_decay_item[a] = 0
    chest_quanti_item_max[a] = 1
    chest_quanti_item_min[a] = 1
    chest_is_drop[a] = 0
    chest_from_enemy[a] = 0
    chest_sound_type[a] = (1 << 0)
    chest_chance_uncommon[a] = 0
    chest_chance_rare[a] = 0
    chest_chance_epic[a] = 0
    chest_chance_legendary[a] = 0
    i = 0
    chest_item[a][i] = (362 << 0)
    chest_item_rare[a][i] = 60
    a = (76 << 0)
    chest_id[a] = a
    chest_name[a] = "dead loner"
    chest_sprite[a] = 50
    chest_decay_item[a] = 0
    chest_quanti_item_max[a] = 1
    chest_quanti_item_min[a] = 1
    chest_is_drop[a] = 0
    chest_from_enemy[a] = 0
    chest_sound_type[a] = (1 << 0)
    chest_chance_uncommon[a] = 0
    chest_chance_rare[a] = 0
    chest_chance_epic[a] = 0
    chest_chance_legendary[a] = 0
    i = 0
    chest_item[a][i] = (355 << 0)
    chest_item_rare[a][i] = 60
    a = (77 << 0)
    chest_id[a] = a
    chest_name[a] = "dead loner"
    chest_sprite[a] = 50
    chest_decay_item[a] = 0
    chest_quanti_item_max[a] = 1
    chest_quanti_item_min[a] = 1
    chest_is_drop[a] = 0
    chest_from_enemy[a] = 0
    chest_sound_type[a] = (1 << 0)
    chest_chance_uncommon[a] = 0
    chest_chance_rare[a] = 0
    chest_chance_epic[a] = 0
    chest_chance_legendary[a] = 0
    i = 0
    chest_item[a][i] = (356 << 0)
    chest_item_rare[a][i] = 60
    a = (78 << 0)
    chest_id[a] = a
    chest_name[a] = "dead loner"
    chest_sprite[a] = 50
    chest_decay_item[a] = 0
    chest_quanti_item_max[a] = 1
    chest_quanti_item_min[a] = 1
    chest_is_drop[a] = 0
    chest_from_enemy[a] = 0
    chest_sound_type[a] = (1 << 0)
    chest_chance_uncommon[a] = 0
    chest_chance_rare[a] = 0
    chest_chance_epic[a] = 0
    chest_chance_legendary[a] = 0
    i = 0
    chest_item[a][i] = (357 << 0)
    chest_item_rare[a][i] = 60
    a = (84 << 0)
    chest_id[a] = a
    chest_name[a] = "dead abitant"
    chest_sprite[a] = 50
    chest_decay_item[a] = 0
    chest_quanti_item_max[a] = 1
    chest_quanti_item_min[a] = 1
    chest_is_drop[a] = 0
    chest_from_enemy[a] = 0
    chest_sound_type[a] = (1 << 0)
    chest_chance_uncommon[a] = 0
    chest_chance_rare[a] = 0
    chest_chance_epic[a] = 0
    chest_chance_legendary[a] = 0
    i = 0
    chest_item[a][i] = (363 << 0)
    chest_item_rare[a][i] = 60
    a = (85 << 0)
    chest_id[a] = a
    chest_name[a] = "safe"
    chest_sprite[a] = 1232
    chest_decay_item[a] = 0
    chest_quanti_item_max[a] = 1
    chest_quanti_item_min[a] = 1
    chest_is_drop[a] = 0
    chest_from_enemy[a] = 0
    chest_sound_type[a] = (5 << 0)
    chest_chance_uncommon[a] = 0
    chest_chance_rare[a] = 0
    chest_chance_epic[a] = 0
    chest_chance_legendary[a] = 0
    i = 0
    chest_item[a][i] = (364 << 0)
    chest_item_rare[a][i] = 60
    a = (86 << 0)
    chest_id[a] = a
    chest_name[a] = "strange machinery"
    chest_sprite[a] = 1931
    chest_decay_item[a] = 0
    chest_quanti_item_max[a] = 1
    chest_quanti_item_min[a] = 1
    chest_is_drop[a] = 0
    chest_from_enemy[a] = 0
    chest_sound_type[a] = (4 << 0)
    chest_chance_uncommon[a] = 0
    chest_chance_rare[a] = 0
    chest_chance_epic[a] = 0
    chest_chance_legendary[a] = 0
    i = 0
    chest_item[a][i] = (366 << 0)
    chest_item_rare[a][i] = 60
    a = (87 << 0)
    chest_id[a] = a
    chest_name[a] = "flight recorder"
    chest_sprite[a] = 1236
    chest_decay_item[a] = 0
    chest_quanti_item_max[a] = 1
    chest_quanti_item_min[a] = 1
    chest_is_drop[a] = 0
    chest_from_enemy[a] = 0
    chest_sound_type[a] = (4 << 0)
    chest_chance_uncommon[a] = 0
    chest_chance_rare[a] = 0
    chest_chance_epic[a] = 0
    chest_chance_legendary[a] = 0
    i = 0
    chest_item[a][i] = (533 << 0)
    chest_item_rare[a][i] = 60
    a = (90 << 0)
    chest_id[a] = a
    chest_name[a] = "unknown bag"
    chest_sprite[a] = 1230
    chest_decay_item[a] = 0
    chest_quanti_item_max[a] = 1
    chest_quanti_item_min[a] = 1
    chest_is_drop[a] = 0
    chest_from_enemy[a] = 0
    chest_sound_type[a] = (3 << 0)
    chest_chance_uncommon[a] = 0
    chest_chance_rare[a] = 0
    chest_chance_epic[a] = 0
    chest_chance_legendary[a] = 0
    i = 0
    chest_item[a][i] = (534 << 0)
    chest_item_rare[a][i] = 60
    a = (89 << 0)
    chest_id[a] = a
    chest_name[a] = "secret chest"
    chest_sprite[a] = 1230
    chest_decay_item[a] = 0
    chest_quanti_item_max[a] = 1
    chest_quanti_item_min[a] = 1
    chest_is_drop[a] = 0
    chest_from_enemy[a] = 0
    chest_sound_type[a] = (3 << 0)
    chest_chance_uncommon[a] = 0
    chest_chance_rare[a] = 0
    chest_chance_epic[a] = 0
    chest_chance_legendary[a] = 0
    i = 0
    chest_item[a][i] = (573 << 0)
    chest_item_rare[a][i] = 60
    a = (92 << 0)
    chest_id[a] = a
    chest_name[a] = "Secret safe"
    chest_sprite[a] = 1232
    chest_decay_item[a] = 0
    chest_quanti_item_max[a] = 1
    chest_quanti_item_min[a] = 1
    chest_is_drop[a] = 0
    chest_from_enemy[a] = 0
    chest_sound_type[a] = (5 << 0)
    chest_chance_uncommon[a] = 0
    chest_chance_rare[a] = 0
    chest_chance_epic[a] = 0
    chest_chance_legendary[a] = 0
    i = 0
    chest_item[a][i] = (574 << 0)
    chest_item_rare[a][i] = 60
    a = (98 << 0)
    chest_id[a] = a
    chest_name[a] = "Marat Loginov"
    chest_sprite[a] = 75
    chest_decay_item[a] = 0
    chest_quanti_item_max[a] = 1
    chest_quanti_item_min[a] = 1
    chest_is_drop[a] = 0
    chest_from_enemy[a] = 0
    chest_sound_type[a] = (1 << 0)
    chest_chance_uncommon[a] = 0
    chest_chance_rare[a] = 0
    chest_chance_epic[a] = 0
    chest_chance_legendary[a] = 0
    i = 0
    chest_item[a][i] = (575 << 0)
    chest_item_rare[a][i] = 60
    a = (14 << 0)
    chest_id[a] = a
    chest_name[a] = "fire crystal"
    chest_sprite[a] = 1237
    chest_decay_item[a] = 0
    chest_quanti_item_max[a] = 2
    chest_quanti_item_min[a] = 1
    chest_is_drop[a] = 0
    chest_from_enemy[a] = 0
    chest_sound_type[a] = (6 << 0)
    chest_chance_uncommon[a] = 0
    chest_chance_rare[a] = 0
    chest_chance_epic[a] = 0
    chest_chance_legendary[a] = 0
    i = 0
    chest_item[a][i] = (438 << 0)
    chest_item_rare[a][i] = 60
    a = (15 << 0)
    chest_id[a] = a
    chest_name[a] = "Chemical crystal"
    chest_sprite[a] = 1238
    chest_decay_item[a] = 0
    chest_quanti_item_max[a] = 2
    chest_quanti_item_min[a] = 1
    chest_is_drop[a] = 0
    chest_from_enemy[a] = 0
    chest_sound_type[a] = (6 << 0)
    chest_chance_uncommon[a] = 0
    chest_chance_rare[a] = 0
    chest_chance_epic[a] = 0
    chest_chance_legendary[a] = 0
    i = 0
    chest_item[a][i] = (440 << 0)
    chest_item_rare[a][i] = 60
    a = (16 << 0)
    chest_id[a] = a
    chest_name[a] = "Electric crystal"
    chest_sprite[a] = 1239
    chest_decay_item[a] = 0
    chest_quanti_item_max[a] = 2
    chest_quanti_item_min[a] = 1
    chest_is_drop[a] = 0
    chest_from_enemy[a] = 0
    chest_sound_type[a] = (6 << 0)
    chest_chance_uncommon[a] = 0
    chest_chance_rare[a] = 0
    chest_chance_epic[a] = 0
    chest_chance_legendary[a] = 0
    i = 0
    chest_item[a][i] = (439 << 0)
    chest_item_rare[a][i] = 60
    return;
}

