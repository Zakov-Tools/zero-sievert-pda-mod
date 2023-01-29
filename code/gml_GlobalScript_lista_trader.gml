function lista_trader() //gml_Script_lista_trader
{
    ini_open(global.save_general)
    global.trader_money_all_max = 15000
    global.trader_money_all = ini_read_real("traders", "money", global.trader_money_all_max)
    ini_close()
    a = (1 << 0)
    id_trader[a] = a
    trader_name[a] = "General Artemovich"
    trader_faction[a] = (2 << 0)
    trader_money[a] = global.trader_money_all
    var i = 0
    trader_item[a][i] = (365 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 1
    trader_page[a][i] = 0
    i++
    trader_item[a][i] = (323 << 0)
    trader_qnt[a][i] = 4
    trader_liv[a][i] = 1
    trader_page[a][i] = 0
    i++
    trader_item[a][i] = (222 << 0)
    trader_qnt[a][i] = 30
    trader_liv[a][i] = 1
    trader_page[a][i] = 0
    i++
    trader_item[a][i] = (556 << 0)
    trader_qnt[a][i] = 25
    trader_liv[a][i] = 1
    trader_page[a][i] = 0
    i++
    trader_item[a][i] = (557 << 0)
    trader_qnt[a][i] = 25
    trader_liv[a][i] = 3
    trader_page[a][i] = 0
    i++
    trader_item[a][i] = (213 << 0)
    trader_qnt[a][i] = 60
    trader_liv[a][i] = 1
    trader_page[a][i] = 0
    i++
    trader_item[a][i] = (604 << 0)
    trader_qnt[a][i] = 60
    trader_liv[a][i] = 1
    trader_page[a][i] = 0
    i++
    trader_item[a][i] = (542 << 0)
    trader_qnt[a][i] = 120
    trader_liv[a][i] = 1
    trader_page[a][i] = 0
    i++
    trader_item[a][i] = (541 << 0)
    trader_qnt[a][i] = 80
    trader_liv[a][i] = 3
    trader_page[a][i] = 0
    i++
    trader_item[a][i] = (545 << 0)
    trader_qnt[a][i] = 100
    trader_liv[a][i] = 1
    trader_page[a][i] = 0
    i++
    trader_item[a][i] = (603 << 0)
    trader_qnt[a][i] = 100
    trader_liv[a][i] = 1
    trader_page[a][i] = 0
    i++
    trader_item[a][i] = (214 << 0)
    trader_qnt[a][i] = 100
    trader_liv[a][i] = 2
    trader_page[a][i] = 0
    i++
    trader_item[a][i] = (215 << 0)
    trader_qnt[a][i] = 200
    trader_liv[a][i] = 1
    trader_page[a][i] = 0
    i++
    trader_item[a][i] = (544 << 0)
    trader_qnt[a][i] = 150
    trader_liv[a][i] = 2
    trader_page[a][i] = 0
    i++
    trader_item[a][i] = (223 << 0)
    trader_qnt[a][i] = 200
    trader_liv[a][i] = 1
    trader_page[a][i] = 0
    i++
    trader_item[a][i] = (554 << 0)
    trader_qnt[a][i] = 150
    trader_liv[a][i] = 2
    trader_page[a][i] = 0
    i++
    trader_item[a][i] = (545 << 0)
    trader_qnt[a][i] = 120
    trader_liv[a][i] = 2
    trader_page[a][i] = 0
    i++
    trader_item[a][i] = (214 << 0)
    trader_qnt[a][i] = 80
    trader_liv[a][i] = 3
    trader_page[a][i] = 0
    i++
    trader_item[a][i] = (219 << 0)
    trader_qnt[a][i] = 60
    trader_liv[a][i] = 2
    trader_page[a][i] = 0
    i++
    trader_item[a][i] = (549 << 0)
    trader_qnt[a][i] = 60
    trader_liv[a][i] = 1
    trader_page[a][i] = 0
    i++
    trader_item[a][i] = (602 << 0)
    trader_qnt[a][i] = 60
    trader_liv[a][i] = 1
    trader_page[a][i] = 0
    i++
    trader_item[a][i] = (550 << 0)
    trader_qnt[a][i] = 60
    trader_liv[a][i] = 4
    trader_page[a][i] = 0
    i++
    trader_item[a][i] = (221 << 0)
    trader_qnt[a][i] = 50
    trader_liv[a][i] = 1
    trader_page[a][i] = 0
    i++
    trader_item[a][i] = (553 << 0)
    trader_qnt[a][i] = 25
    trader_liv[a][i] = 4
    trader_page[a][i] = 0
    i++
    trader_item[a][i] = (218 << 0)
    trader_qnt[a][i] = 200
    trader_liv[a][i] = 1
    trader_page[a][i] = 0
    i++
    trader_item[a][i] = (601 << 0)
    trader_qnt[a][i] = 200
    trader_liv[a][i] = 1
    trader_page[a][i] = 0
    i++
    trader_item[a][i] = (548 << 0)
    trader_qnt[a][i] = 100
    trader_liv[a][i] = 3
    trader_page[a][i] = 0
    i++
    trader_item[a][i] = (217 << 0)
    trader_qnt[a][i] = 150
    trader_liv[a][i] = 2
    trader_page[a][i] = 0
    i++
    trader_item[a][i] = (547 << 0)
    trader_qnt[a][i] = 100
    trader_liv[a][i] = 4
    trader_page[a][i] = 0
    i++
    trader_item[a][i] = (61 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 2
    trader_page[a][i] = 1
    i++
    trader_item[a][i] = (87 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 2
    trader_page[a][i] = 1
    i++
    trader_item[a][i] = (21 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 2
    trader_page[a][i] = 1
    i++
    trader_item[a][i] = (36 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 2
    trader_page[a][i] = 1
    i++
    trader_item[a][i] = (6 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 2
    trader_page[a][i] = 1
    i++
    trader_item[a][i] = (652 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 3
    trader_page[a][i] = 1
    i++
    trader_item[a][i] = (54 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 3
    trader_page[a][i] = 1
    i++
    trader_item[a][i] = (77 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 3
    trader_page[a][i] = 1
    i++
    trader_item[a][i] = (45 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 4
    trader_page[a][i] = 1
    i++
    trader_item[a][i] = (633 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 5
    trader_page[a][i] = 1
    i++
    trader_item[a][i] = (108 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 1
    i++
    trader_item[a][i] = (110 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 1
    i++
    trader_item[a][i] = (111 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 1
    i++
    trader_item[a][i] = (112 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 1
    trader_page[a][i] = 2
    i++
    trader_item[a][i] = (116 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 1
    i++
    trader_item[a][i] = (117 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 1
    i++
    trader_item[a][i] = (118 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 1
    trader_page[a][i] = 2
    i++
    trader_item[a][i] = (122 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 1
    i++
    trader_item[a][i] = (123 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 1
    trader_page[a][i] = 2
    i++
    trader_item[a][i] = (126 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 1
    i++
    trader_item[a][i] = (127 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 1
    trader_page[a][i] = 2
    i++
    trader_item[a][i] = (205 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 1
    trader_page[a][i] = 2
    i++
    trader_item[a][i] = (206 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 1
    trader_page[a][i] = 2
    i++
    trader_item[a][i] = (169 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 1
    trader_page[a][i] = 2
    i++
    trader_item[a][i] = (130 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 1
    trader_page[a][i] = 2
    i++
    trader_item[a][i] = (182 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 1
    trader_page[a][i] = 2
    i++
    trader_item[a][i] = (133 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 2
    trader_page[a][i] = 2
    i++
    trader_item[a][i] = (135 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 2
    trader_page[a][i] = 2
    i++
    trader_item[a][i] = (113 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 2
    trader_page[a][i] = 2
    i++
    trader_item[a][i] = (183 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 1
    trader_page[a][i] = 2
    i++
    trader_item[a][i] = (119 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 2
    trader_page[a][i] = 2
    i++
    trader_item[a][i] = (188 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 2
    trader_page[a][i] = 2
    i++
    trader_item[a][i] = (195 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 2
    trader_page[a][i] = 2
    i++
    trader_item[a][i] = (171 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 2
    trader_page[a][i] = 2
    i++
    trader_item[a][i] = (172 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 2
    trader_page[a][i] = 2
    i++
    trader_item[a][i] = (176 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 2
    trader_page[a][i] = 2
    i++
    trader_item[a][i] = (108 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 1
    trader_page[a][i] = 2
    i++
    trader_item[a][i] = (109 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 3
    trader_page[a][i] = 2
    i++
    trader_item[a][i] = (131 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 3
    trader_page[a][i] = 2
    i++
    trader_item[a][i] = (184 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 3
    trader_page[a][i] = 2
    i++
    trader_item[a][i] = (190 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 3
    trader_page[a][i] = 2
    i++
    trader_item[a][i] = (185 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 3
    trader_page[a][i] = 2
    i++
    trader_item[a][i] = (198 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 3
    trader_page[a][i] = 2
    i++
    trader_item[a][i] = (196 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 3
    trader_page[a][i] = 2
    i++
    trader_item[a][i] = (202 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 2
    trader_page[a][i] = 2
    i++
    trader_item[a][i] = (535 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 3
    trader_page[a][i] = 2
    i++
    trader_item[a][i] = (139 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 4
    trader_page[a][i] = 2
    i++
    trader_item[a][i] = (187 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 4
    trader_page[a][i] = 2
    i++
    trader_item[a][i] = (115 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 4
    trader_page[a][i] = 2
    i++
    trader_item[a][i] = (170 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 4
    trader_page[a][i] = 2
    i++
    trader_item[a][i] = (173 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 4
    trader_page[a][i] = 2
    i++
    trader_item[a][i] = (174 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 5
    trader_page[a][i] = 2
    i++
    trader_item[a][i] = (177 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 4
    trader_page[a][i] = 2
    i++
    trader_item[a][i] = (526 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 5
    trader_page[a][i] = 2
    i++
    trader_item[a][i] = (525 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 5
    trader_page[a][i] = 2
    i++
    trader_item[a][i] = (634 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 4
    trader_page[a][i] = 2
    i++
    trader_item[a][i] = (635 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 5
    trader_page[a][i] = 2
    i++
    trader_item[a][i] = (637 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 3
    trader_page[a][i] = 2
    i++
    trader_item[a][i] = (639 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 2
    trader_page[a][i] = 2
    i++
    trader_item[a][i] = (640 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 4
    trader_page[a][i] = 2
    i++
    trader_item[a][i] = (638 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 4
    trader_page[a][i] = 2
    i++
    trader_item[a][i] = (650 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 2
    trader_page[a][i] = 2
    i++
    trader_item[a][i] = (585 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 5
    trader_page[a][i] = 2
    i++
    trader_item[a][i] = (653 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 2
    trader_page[a][i] = 2
    i++
    trader_item[a][i] = (654 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 2
    trader_page[a][i] = 2
    i++
    trader_item[a][i] = (636 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 4
    trader_page[a][i] = 2
    i++
    trader_item[a][i] = (651 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 2
    trader_page[a][i] = 2
    i++
    trader_item[a][i] = (656 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 2
    trader_page[a][i] = 2
    i++
    trader_item[a][i] = (660 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 2
    trader_page[a][i] = 2
    i++
    trader_item[a][i] = (661 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 2
    trader_page[a][i] = 2
    i++
    trader_item[a][i] = (659 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 3
    trader_page[a][i] = 2
    i++
    trader_item[a][i] = (412 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 2
    trader_page[a][i] = 3
    i++
    trader_item[a][i] = (567 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 2
    trader_page[a][i] = 3
    i++
    trader_item[a][i] = (413 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 3
    trader_page[a][i] = 3
    i++
    trader_item[a][i] = (568 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 3
    trader_page[a][i] = 3
    i++
    trader_item[a][i] = (414 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 4
    trader_page[a][i] = 3
    i++
    trader_item[a][i] = (569 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 4
    trader_page[a][i] = 3
    i++
    trader_item[a][i] = (606 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 2
    trader_page[a][i] = 3
    i++
    scr_assegna_item_a_pagina_trader(a)
    a = (3 << 0)
    id_trader[a] = a
    trader_name[a] = "General Artemovich"
    trader_faction[a] = (2 << 0)
    trader_money[a] = 8000
    i = 0
    a = (2 << 0)
    id_trader[a] = a
    trader_name[a] = "Riley Evans"
    trader_faction[a] = (3 << 0)
    trader_money[a] = 20000
    i = 0
    trader_item[a][i] = (222 << 0)
    trader_qnt[a][i] = 100
    trader_liv[a][i] = 1
    trader_page[a][i] = 1
    i++
    trader_item[a][i] = (214 << 0)
    trader_qnt[a][i] = 500
    trader_liv[a][i] = 1
    trader_page[a][i] = 1
    i++
    trader_item[a][i] = (220 << 0)
    trader_qnt[a][i] = 150
    trader_liv[a][i] = 1
    trader_page[a][i] = 1
    i++
    trader_item[a][i] = (216 << 0)
    trader_qnt[a][i] = 300
    trader_liv[a][i] = 1
    trader_page[a][i] = 1
    i++
    trader_item[a][i] = (8 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 1
    trader_page[a][i] = 1
    i++
    trader_item[a][i] = (9 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 2
    trader_page[a][i] = 1
    i++
    trader_item[a][i] = (30 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 1
    trader_page[a][i] = 1
    i++
    trader_item[a][i] = (19 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 1
    trader_page[a][i] = 1
    i++
    trader_item[a][i] = (17 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 2
    trader_page[a][i] = 1
    i++
    trader_item[a][i] = (84 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 2
    trader_page[a][i] = 1
    i++
    trader_item[a][i] = (58 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 2
    trader_page[a][i] = 1
    i++
    trader_item[a][i] = (41 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 2
    trader_page[a][i] = 1
    i++
    trader_item[a][i] = (43 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 3
    trader_page[a][i] = 1
    i++
    trader_item[a][i] = (70 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 3
    trader_page[a][i] = 1
    i++
    trader_item[a][i] = (74 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 3
    trader_page[a][i] = 1
    i++
    trader_item[a][i] = (89 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 4
    trader_page[a][i] = 1
    i++
    trader_item[a][i] = (83 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 2
    trader_page[a][i] = 1
    i++
    trader_item[a][i] = (416 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 2
    trader_page[a][i] = 1
    i++
    trader_item[a][i] = (417 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 3
    trader_page[a][i] = 1
    scr_assegna_item_a_pagina_trader(a)
    a = (10 << 0)
    id_trader[a] = a
    trader_name[a] = "Riley Evans"
    trader_faction[a] = (3 << 0)
    trader_money[a] = 5000
    i = 0
    trader_item[a][i] = (367 << 0)
    trader_qnt[a][i] = 10
    trader_liv[a][i] = 1
    trader_page[a][i] = 1
    i++
    scr_assegna_item_a_pagina_trader(a)
    a = (11 << 0)
    id_trader[a] = a
    trader_name[a] = ""
    trader_faction[a] = (3 << 0)
    trader_money[a] = 2000
    i = 0
    trader_item[a][i] = (222 << 0)
    trader_qnt[a][i] = 40
    trader_liv[a][i] = 1
    trader_page[a][i] = 0
    i++
    trader_item[a][i] = (556 << 0)
    trader_qnt[a][i] = 25
    trader_liv[a][i] = 1
    trader_page[a][i] = 0
    i++
    trader_item[a][i] = (557 << 0)
    trader_qnt[a][i] = 25
    trader_liv[a][i] = 2
    trader_page[a][i] = 0
    i++
    trader_item[a][i] = (545 << 0)
    trader_qnt[a][i] = 150
    trader_liv[a][i] = 1
    trader_page[a][i] = 0
    i++
    trader_item[a][i] = (603 << 0)
    trader_qnt[a][i] = 150
    trader_liv[a][i] = 1
    trader_page[a][i] = 0
    i++
    trader_item[a][i] = (214 << 0)
    trader_qnt[a][i] = 120
    trader_liv[a][i] = 2
    trader_page[a][i] = 0
    i++
    trader_item[a][i] = (546 << 0)
    trader_qnt[a][i] = 120
    trader_liv[a][i] = 4
    trader_page[a][i] = 0
    i++
    trader_item[a][i] = (551 << 0)
    trader_qnt[a][i] = 60
    trader_liv[a][i] = 1
    trader_page[a][i] = 0
    i++
    trader_item[a][i] = (220 << 0)
    trader_qnt[a][i] = 60
    trader_liv[a][i] = 3
    trader_page[a][i] = 0
    i++
    trader_item[a][i] = (552 << 0)
    trader_qnt[a][i] = 60
    trader_liv[a][i] = 5
    trader_page[a][i] = 0
    i++
    trader_item[a][i] = (216 << 0)
    trader_qnt[a][i] = 200
    trader_liv[a][i] = 1
    trader_page[a][i] = 0
    i++
    trader_item[a][i] = (600 << 0)
    trader_qnt[a][i] = 200
    trader_liv[a][i] = 1
    trader_page[a][i] = 0
    i++
    trader_item[a][i] = (543 << 0)
    trader_qnt[a][i] = 150
    trader_liv[a][i] = 3
    trader_page[a][i] = 0
    i++
    trader_item[a][i] = (225 << 0)
    trader_qnt[a][i] = 250
    trader_liv[a][i] = 1
    trader_page[a][i] = 0
    i++
    trader_item[a][i] = (555 << 0)
    trader_qnt[a][i] = 150
    trader_liv[a][i] = 3
    trader_page[a][i] = 0
    i++
    trader_item[a][i] = (269 << 0)
    trader_qnt[a][i] = 3
    trader_liv[a][i] = 1
    trader_page[a][i] = 0
    i++
    trader_item[a][i] = (243 << 0)
    trader_qnt[a][i] = 3
    trader_liv[a][i] = 1
    trader_page[a][i] = 0
    i++
    trader_item[a][i] = (226 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 1
    trader_page[a][i] = 0
    i++
    trader_item[a][i] = (231 << 0)
    trader_qnt[a][i] = 2
    trader_liv[a][i] = 1
    trader_page[a][i] = 0
    i++
    trader_item[a][i] = (233 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 1
    trader_page[a][i] = 0
    i++
    trader_item[a][i] = (9 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 1
    trader_page[a][i] = 1
    i++
    trader_item[a][i] = (17 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 1
    trader_page[a][i] = 1
    i++
    trader_item[a][i] = (84 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 1
    trader_page[a][i] = 1
    i++
    trader_item[a][i] = (91 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 1
    trader_page[a][i] = 1
    i++
    trader_item[a][i] = (74 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 2
    trader_page[a][i] = 1
    i++
    trader_item[a][i] = (576 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 2
    trader_page[a][i] = 1
    i++
    trader_item[a][i] = (33 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 3
    trader_page[a][i] = 1
    i++
    trader_item[a][i] = (86 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 3
    trader_page[a][i] = 1
    i++
    trader_item[a][i] = (39 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 3
    trader_page[a][i] = 1
    i++
    trader_item[a][i] = (58 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 3
    trader_page[a][i] = 1
    i++
    trader_item[a][i] = (618 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 3
    trader_page[a][i] = 1
    i++
    trader_item[a][i] = (626 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 3
    trader_page[a][i] = 1
    i++
    trader_item[a][i] = (67 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 4
    trader_page[a][i] = 1
    i++
    trader_item[a][i] = (154 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 1
    trader_page[a][i] = 2
    i++
    trader_item[a][i] = (157 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 1
    trader_page[a][i] = 2
    i++
    trader_item[a][i] = (209 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 1
    trader_page[a][i] = 2
    i++
    trader_item[a][i] = (194 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 1
    trader_page[a][i] = 2
    i++
    trader_item[a][i] = (201 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 1
    trader_page[a][i] = 2
    i++
    trader_item[a][i] = (202 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 1
    trader_page[a][i] = 2
    i++
    trader_item[a][i] = (105 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 2
    trader_page[a][i] = 2
    i++
    trader_item[a][i] = (95 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 2
    trader_page[a][i] = 2
    i++
    trader_item[a][i] = (106 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 2
    trader_page[a][i] = 2
    i++
    trader_item[a][i] = (107 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 2
    trader_page[a][i] = 2
    i++
    trader_item[a][i] = (204 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 2
    trader_page[a][i] = 2
    i++
    trader_item[a][i] = (200 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 2
    trader_page[a][i] = 2
    i++
    trader_item[a][i] = (179 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 2
    trader_page[a][i] = 2
    i++
    trader_item[a][i] = (619 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 2
    trader_page[a][i] = 2
    i++
    trader_item[a][i] = (620 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 3
    trader_page[a][i] = 2
    i++
    trader_item[a][i] = (621 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 5
    trader_page[a][i] = 2
    i++
    trader_item[a][i] = (622 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 3
    trader_page[a][i] = 2
    i++
    trader_item[a][i] = (623 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 3
    trader_page[a][i] = 2
    i++
    trader_item[a][i] = (624 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 3
    trader_page[a][i] = 2
    i++
    trader_item[a][i] = (625 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 4
    trader_page[a][i] = 2
    i++
    trader_item[a][i] = (627 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 2
    trader_page[a][i] = 2
    i++
    trader_item[a][i] = (628 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 3
    trader_page[a][i] = 2
    i++
    trader_item[a][i] = (629 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 3
    trader_page[a][i] = 2
    i++
    trader_item[a][i] = (630 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 4
    trader_page[a][i] = 2
    i++
    trader_item[a][i] = (631 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 3
    trader_page[a][i] = 2
    i++
    trader_item[a][i] = (632 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 4
    trader_page[a][i] = 2
    i++
    trader_item[a][i] = (641 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 4
    trader_page[a][i] = 2
    i++
    trader_item[a][i] = (642 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 4
    trader_page[a][i] = 2
    i++
    trader_item[a][i] = (643 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 4
    trader_page[a][i] = 2
    i++
    trader_item[a][i] = (644 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 3
    trader_page[a][i] = 2
    i++
    trader_item[a][i] = (645 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 3
    trader_page[a][i] = 2
    i++
    trader_item[a][i] = (646 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 3
    trader_page[a][i] = 2
    i++
    trader_item[a][i] = (647 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 3
    trader_page[a][i] = 2
    i++
    trader_item[a][i] = (648 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 3
    trader_page[a][i] = 2
    i++
    trader_item[a][i] = (655 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 3
    trader_page[a][i] = 2
    i++
    trader_item[a][i] = (657 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 3
    trader_page[a][i] = 2
    i++
    trader_item[a][i] = (658 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 3
    trader_page[a][i] = 2
    i++
    trader_item[a][i] = (659 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 3
    trader_page[a][i] = 2
    i++
    trader_item[a][i] = (192 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 3
    trader_page[a][i] = 2
    i++
    trader_item[a][i] = (193 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 3
    trader_page[a][i] = 2
    i++
    trader_item[a][i] = (97 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 3
    trader_page[a][i] = 2
    i++
    trader_item[a][i] = (527 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 3
    trader_page[a][i] = 2
    i++
    trader_item[a][i] = (528 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 3
    trader_page[a][i] = 2
    i++
    trader_item[a][i] = (99 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 3
    trader_page[a][i] = 2
    i++
    trader_item[a][i] = (145 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 3
    trader_page[a][i] = 2
    i++
    trader_item[a][i] = (147 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 3
    trader_page[a][i] = 2
    i++
    trader_item[a][i] = (207 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 3
    trader_page[a][i] = 2
    i++
    trader_item[a][i] = (93 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 4
    trader_page[a][i] = 2
    i++
    trader_item[a][i] = (163 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 4
    trader_page[a][i] = 2
    i++
    trader_item[a][i] = (166 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 4
    trader_page[a][i] = 2
    i++
    trader_item[a][i] = (197 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 4
    trader_page[a][i] = 2
    i++
    trader_item[a][i] = (102 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 5
    trader_page[a][i] = 2
    i++
    trader_item[a][i] = (191 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 5
    trader_page[a][i] = 2
    i++
    trader_item[a][i] = (199 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 5
    trader_page[a][i] = 2
    i++
    trader_item[a][i] = (415 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 2
    trader_page[a][i] = 3
    i++
    trader_item[a][i] = (416 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 3
    trader_page[a][i] = 3
    i++
    trader_item[a][i] = (417 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 4
    trader_page[a][i] = 3
    i++
    trader_item[a][i] = (607 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 4
    trader_page[a][i] = 3
    i++
    scr_assegna_item_a_pagina_trader(a)
    a = (12 << 0)
    id_trader[a] = a
    trader_name[a] = ""
    trader_faction[a] = (3 << 0)
    trader_money[a] = 2000
    i = 0
    a = (4 << 0)
    id_trader[a] = a
    trader_name[a] = "Barman"
    trader_faction[a] = (1 << 0)
    trader_money[a] = global.trader_money_all
    i = 0
    trader_item[a][i] = (222 << 0)
    trader_qnt[a][i] = 20
    trader_liv[a][i] = 1
    trader_page[a][i] = 0
    i++
    trader_item[a][i] = (542 << 0)
    trader_qnt[a][i] = 50
    trader_liv[a][i] = 1
    trader_page[a][i] = 0
    i++
    trader_item[a][i] = (215 << 0)
    trader_qnt[a][i] = 70
    trader_liv[a][i] = 1
    trader_page[a][i] = 0
    i++
    trader_item[a][i] = (223 << 0)
    trader_qnt[a][i] = 70
    trader_liv[a][i] = 1
    trader_page[a][i] = 0
    i++
    trader_item[a][i] = (549 << 0)
    trader_qnt[a][i] = 40
    trader_liv[a][i] = 1
    trader_page[a][i] = 0
    i++
    trader_item[a][i] = (221 << 0)
    trader_qnt[a][i] = 15
    trader_liv[a][i] = 1
    trader_page[a][i] = 0
    i++
    trader_item[a][i] = (367 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 1
    trader_page[a][i] = 0
    i++
    trader_item[a][i] = (373 << 0)
    trader_qnt[a][i] = 2
    trader_liv[a][i] = 1
    trader_page[a][i] = 0
    i++
    trader_item[a][i] = (250 << 0)
    trader_qnt[a][i] = 2
    trader_liv[a][i] = 1
    trader_page[a][i] = 0
    i++
    trader_item[a][i] = (270 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 1
    trader_page[a][i] = 0
    i++
    trader_item[a][i] = (243 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 1
    trader_page[a][i] = 0
    i++
    trader_item[a][i] = (245 << 0)
    trader_qnt[a][i] = 2
    trader_liv[a][i] = 1
    trader_page[a][i] = 0
    i++
    trader_item[a][i] = (269 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 1
    trader_page[a][i] = 0
    i++
    trader_item[a][i] = (271 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 1
    trader_page[a][i] = 0
    i++
    trader_item[a][i] = (279 << 0)
    trader_qnt[a][i] = 5
    trader_liv[a][i] = 1
    trader_page[a][i] = 0
    i++
    trader_item[a][i] = (303 << 0)
    trader_qnt[a][i] = 10
    trader_liv[a][i] = 1
    trader_page[a][i] = 0
    i++
    trader_item[a][i] = (338 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 1
    trader_page[a][i] = 0
    i++
    trader_item[a][i] = (577 << 0)
    trader_qnt[a][i] = 3
    trader_liv[a][i] = 1
    trader_page[a][i] = 0
    i++
    trader_item[a][i] = (582 << 0)
    trader_qnt[a][i] = 2
    trader_liv[a][i] = 1
    trader_page[a][i] = 0
    i++
    trader_item[a][i] = (579 << 0)
    trader_qnt[a][i] = 2
    trader_liv[a][i] = 1
    trader_page[a][i] = 0
    i++
    trader_item[a][i] = (34 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 1
    trader_page[a][i] = 1
    i++
    trader_item[a][i] = (64 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 1
    trader_page[a][i] = 1
    i++
    trader_item[a][i] = (47 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 1
    trader_page[a][i] = 1
    i++
    trader_item[a][i] = (80 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 1
    trader_page[a][i] = 1
    i++
    trader_item[a][i] = (3 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 1
    trader_page[a][i] = 1
    i++
    trader_item[a][i] = (23 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 1
    trader_page[a][i] = 1
    i++
    trader_item[a][i] = (28 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 1
    trader_page[a][i] = 1
    i++
    trader_item[a][i] = (32 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 1
    trader_page[a][i] = 1
    i++
    trader_item[a][i] = (55 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 1
    trader_page[a][i] = 1
    i++
    trader_item[a][i] = (38 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 2
    trader_page[a][i] = 1
    i++
    trader_item[a][i] = (402 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 1
    trader_page[a][i] = 2
    i++
    trader_item[a][i] = (403 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 1
    trader_page[a][i] = 2
    i++
    trader_item[a][i] = (404 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 2
    trader_page[a][i] = 2
    i++
    trader_item[a][i] = (405 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 2
    trader_page[a][i] = 2
    i++
    trader_item[a][i] = (409 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 2
    trader_page[a][i] = 2
    i++
    trader_item[a][i] = (410 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 1
    trader_page[a][i] = 2
    i++
    trader_item[a][i] = (566 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 1
    trader_page[a][i] = 2
    i++
    trader_item[a][i] = (570 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 1
    trader_page[a][i] = 2
    i++
    trader_item[a][i] = (429 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 1
    trader_page[a][i] = 3
    i++
    trader_item[a][i] = (428 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 2
    trader_page[a][i] = 3
    i++
    trader_item[a][i] = (418 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 2
    trader_page[a][i] = 3
    i++
    trader_item[a][i] = (419 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 3
    trader_page[a][i] = 3
    i++
    trader_item[a][i] = (559 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 1
    trader_page[a][i] = 4
    i++
    trader_item[a][i] = (560 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 1
    trader_page[a][i] = 4
    i++
    trader_item[a][i] = (561 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 1
    trader_page[a][i] = 4
    i++
    trader_item[a][i] = (562 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 1
    trader_page[a][i] = 4
    i++
    trader_item[a][i] = (563 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 1
    trader_page[a][i] = 4
    i++
    trader_item[a][i] = (565 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 1
    trader_page[a][i] = 4
    i++
    trader_item[a][i] = (564 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 1
    trader_page[a][i] = 4
    i++
    scr_assegna_item_a_pagina_trader(a)
    a = (6 << 0)
    id_trader[a] = a
    trader_name[a] = "Tikhon Romanov"
    trader_faction[a] = (1 << 0)
    trader_money[a] = 20000
    i = 0
    if scr_chance(100)
    {
        trader_item[a][i] = (226 << 0)
        trader_qnt[a][i] = 5
        trader_liv[a][i] = 1
        i++
    }
    if scr_chance(100)
    {
        trader_item[a][i] = (229 << 0)
        trader_qnt[a][i] = 8
        trader_liv[a][i] = 1
        i++
    }
    if scr_chance(100)
    {
        trader_item[a][i] = (373 << 0)
        trader_qnt[a][i] = 1
        trader_liv[a][i] = 1
        i++
    }
    if scr_chance(50)
    {
        trader_item[a][i] = (270 << 0)
        trader_qnt[a][i] = 4
        trader_liv[a][i] = 1
        i++
    }
    if scr_chance(80)
    {
        trader_item[a][i] = (243 << 0)
        trader_qnt[a][i] = 3
        trader_liv[a][i] = 1
        i++
    }
    if scr_chance(80)
    {
        trader_item[a][i] = (244 << 0)
        trader_qnt[a][i] = 2
        trader_liv[a][i] = 1
        i++
    }
    if scr_chance(90)
    {
        trader_item[a][i] = (245 << 0)
        trader_qnt[a][i] = 4
        trader_liv[a][i] = 1
        i++
    }
    if scr_chance(80)
    {
        trader_item[a][i] = (246 << 0)
        trader_qnt[a][i] = 3
        trader_liv[a][i] = 1
        i++
    }
    if scr_chance(100)
    {
        trader_item[a][i] = (269 << 0)
        trader_qnt[a][i] = 5
        trader_liv[a][i] = 1
        i++
    }
    if scr_chance(100)
    {
        trader_item[a][i] = (271 << 0)
        trader_qnt[a][i] = 4
        trader_liv[a][i] = 1
        i++
    }
    if scr_chance(80)
    {
        trader_item[a][i] = (279 << 0)
        trader_qnt[a][i] = 10
        trader_liv[a][i] = 1
        i++
    }
    if scr_chance(50)
    {
        trader_item[a][i] = (431 << 0)
        trader_qnt[a][i] = 10
        trader_liv[a][i] = 1
        i++
    }
    if scr_chance(50)
    {
        trader_item[a][i] = (432 << 0)
        trader_qnt[a][i] = 10
        trader_liv[a][i] = 1
        i++
    }
    if scr_chance(50)
    {
        trader_item[a][i] = (433 << 0)
        trader_qnt[a][i] = 10
        trader_liv[a][i] = 1
        i++
    }
    if scr_chance(50)
    {
        trader_item[a][i] = (434 << 0)
        trader_qnt[a][i] = 10
        trader_liv[a][i] = 1
        i++
    }
    if scr_chance(50)
    {
        trader_item[a][i] = (242 << 0)
        trader_qnt[a][i] = 1
        trader_liv[a][i] = 1
        i++
    }
    if scr_chance(25)
    {
        trader_item[a][i] = (48 << 0)
        trader_qnt[a][i] = 1
        trader_liv[a][i] = 1
        i++
    }
    if scr_chance(25)
    {
        trader_item[a][i] = (22 << 0)
        trader_qnt[a][i] = 1
        trader_liv[a][i] = 1
        i++
    }
    if scr_chance(50)
    {
        trader_item[a][i] = (18 << 0)
        trader_qnt[a][i] = 1
        trader_liv[a][i] = 1
        i++
    }
    if scr_chance(80)
    {
        trader_item[a][i] = (47 << 0)
        trader_qnt[a][i] = 1
        trader_liv[a][i] = 10
    }
    a = (8 << 0)
    id_trader[a] = a
    trader_money[a] = 0
    i = 0
    trader_item[a][i] = (489 << 0)
    trader_qnt[a][i] = 120
    trader_liv[a][i] = 1
    trader_page[a][i] = 0
    i++
    trader_item[a][i] = (491 << 0)
    trader_qnt[a][i] = 120
    trader_liv[a][i] = 1
    trader_page[a][i] = 0
    i++
    trader_item[a][i] = (493 << 0)
    trader_qnt[a][i] = 120
    trader_liv[a][i] = 1
    trader_page[a][i] = 0
    i++
    trader_item[a][i] = (296 << 0)
    trader_qnt[a][i] = 60
    trader_liv[a][i] = 1
    trader_page[a][i] = 0
    i++
    trader_item[a][i] = (285 << 0)
    trader_qnt[a][i] = 60
    trader_liv[a][i] = 1
    trader_page[a][i] = 0
    i++
    trader_item[a][i] = (303 << 0)
    trader_qnt[a][i] = 20
    trader_liv[a][i] = 1
    trader_page[a][i] = 0
    i++
    trader_item[a][i] = (330 << 0)
    trader_qnt[a][i] = 8
    trader_liv[a][i] = 1
    trader_page[a][i] = 0
    i++
    trader_item[a][i] = (349 << 0)
    trader_qnt[a][i] = 2
    trader_liv[a][i] = 1
    trader_page[a][i] = 0
    i++
    trader_item[a][i] = (311 << 0)
    trader_qnt[a][i] = 10
    trader_liv[a][i] = 1
    trader_page[a][i] = 0
    i++
    trader_item[a][i] = (305 << 0)
    trader_qnt[a][i] = 10
    trader_liv[a][i] = 1
    trader_page[a][i] = 0
    i++
    trader_item[a][i] = (287 << 0)
    trader_qnt[a][i] = 5
    trader_liv[a][i] = 1
    trader_page[a][i] = 0
    i++
    trader_item[a][i] = (331 << 0)
    trader_qnt[a][i] = 6
    trader_liv[a][i] = 1
    trader_page[a][i] = 0
    i++
    trader_item[a][i] = (332 << 0)
    trader_qnt[a][i] = 6
    trader_liv[a][i] = 1
    trader_page[a][i] = 0
    i++
    trader_item[a][i] = (333 << 0)
    trader_qnt[a][i] = 6
    trader_liv[a][i] = 1
    trader_page[a][i] = 0
    i++
    trader_item[a][i] = (282 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 1
    trader_page[a][i] = 0
    i++
    trader_item[a][i] = (286 << 0)
    trader_qnt[a][i] = 5
    trader_liv[a][i] = 1
    trader_page[a][i] = 0
    i++
    trader_item[a][i] = (284 << 0)
    trader_qnt[a][i] = 5
    trader_liv[a][i] = 1
    trader_page[a][i] = 0
    i++
    trader_item[a][i] = (341 << 0)
    trader_qnt[a][i] = 3
    trader_liv[a][i] = 1
    trader_page[a][i] = 0
    i++
    trader_item[a][i] = (348 << 0)
    trader_qnt[a][i] = 2
    trader_liv[a][i] = 1
    trader_page[a][i] = 0
    i++
    trader_item[a][i] = (350 << 0)
    trader_qnt[a][i] = 4
    trader_liv[a][i] = 1
    trader_page[a][i] = 0
    i++
    trader_item[a][i] = (289 << 0)
    trader_qnt[a][i] = 5
    trader_liv[a][i] = 1
    trader_page[a][i] = 0
    i++
    trader_item[a][i] = (316 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 1
    trader_page[a][i] = 0
    i++
    scr_assegna_item_a_pagina_trader(a)
    a = (5 << 0)
    id_trader[a] = a
    trader_money[a] = global.trader_money_all
    i = 0
    trader_item[a][i] = (231 << 0)
    trader_qnt[a][i] = 5
    trader_liv[a][i] = 1
    trader_page[a][i] = 0
    i++
    trader_item[a][i] = (226 << 0)
    trader_qnt[a][i] = 3
    trader_liv[a][i] = 1
    trader_page[a][i] = 0
    i++
    trader_item[a][i] = (227 << 0)
    trader_qnt[a][i] = 3
    trader_liv[a][i] = 1
    trader_page[a][i] = 0
    i++
    trader_item[a][i] = (230 << 0)
    trader_qnt[a][i] = 3
    trader_liv[a][i] = 1
    trader_page[a][i] = 0
    i++
    trader_item[a][i] = (229 << 0)
    trader_qnt[a][i] = 6
    trader_liv[a][i] = 1
    trader_page[a][i] = 0
    i++
    trader_item[a][i] = (609 << 0)
    trader_qnt[a][i] = 4
    trader_liv[a][i] = 1
    trader_page[a][i] = 0
    i++
    trader_item[a][i] = (232 << 0)
    trader_qnt[a][i] = 3
    trader_liv[a][i] = 1
    trader_page[a][i] = 0
    i++
    trader_item[a][i] = (233 << 0)
    trader_qnt[a][i] = 3
    trader_liv[a][i] = 1
    trader_page[a][i] = 0
    i++
    trader_item[a][i] = (234 << 0)
    trader_qnt[a][i] = 3
    trader_liv[a][i] = 1
    trader_page[a][i] = 0
    i++
    trader_item[a][i] = (235 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 1
    trader_page[a][i] = 1
    i++
    trader_item[a][i] = (236 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 1
    trader_page[a][i] = 1
    i++
    trader_item[a][i] = (237 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 1
    trader_page[a][i] = 1
    i++
    trader_item[a][i] = (238 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 1
    trader_page[a][i] = 1
    i++
    trader_item[a][i] = (239 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 1
    trader_page[a][i] = 1
    i++
    trader_item[a][i] = (240 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 1
    trader_page[a][i] = 1
    i++
    trader_item[a][i] = (242 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 1
    trader_page[a][i] = 1
    i++
    trader_item[a][i] = (241 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 1
    trader_page[a][i] = 1
    i++
    trader_item[a][i] = (323 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 1
    trader_page[a][i] = 0
    i++
    trader_item[a][i] = (324 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 1
    trader_page[a][i] = 0
    i++
    trader_item[a][i] = (300 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 1
    trader_page[a][i] = 0
    i++
    trader_item[a][i] = (431 << 0)
    trader_qnt[a][i] = 3
    trader_liv[a][i] = 1
    trader_page[a][i] = 2
    i++
    trader_item[a][i] = (432 << 0)
    trader_qnt[a][i] = 3
    trader_liv[a][i] = 1
    trader_page[a][i] = 2
    i++
    trader_item[a][i] = (433 << 0)
    trader_qnt[a][i] = 3
    trader_liv[a][i] = 1
    trader_page[a][i] = 2
    i++
    trader_item[a][i] = (434 << 0)
    trader_qnt[a][i] = 3
    trader_liv[a][i] = 2
    trader_page[a][i] = 2
    i++
    trader_item[a][i] = (435 << 0)
    trader_qnt[a][i] = 3
    trader_liv[a][i] = 2
    trader_page[a][i] = 2
    i++
    trader_item[a][i] = (436 << 0)
    trader_qnt[a][i] = 3
    trader_liv[a][i] = 2
    trader_page[a][i] = 2
    i++
    trader_item[a][i] = (611 << 0)
    trader_qnt[a][i] = 3
    trader_liv[a][i] = 1
    trader_page[a][i] = 2
    i++
    trader_item[a][i] = (422 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 1
    trader_page[a][i] = 3
    i++
    trader_item[a][i] = (423 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 2
    trader_page[a][i] = 3
    i++
    trader_item[a][i] = (424 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 3
    trader_page[a][i] = 3
    i++
    trader_item[a][i] = (608 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 4
    trader_page[a][i] = 3
    i++
    trader_item[a][i] = (408 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 3
    trader_page[a][i] = 4
    i++
    trader_item[a][i] = (406 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 3
    trader_page[a][i] = 4
    i++
    trader_item[a][i] = (407 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 4
    trader_page[a][i] = 4
    i++
    var already_done = global.quest_unique_done[(67 << 0)]
    if (already_done == 1)
    {
        trader_item[a][i] = (521 << 0)
        trader_qnt[a][i] = 1
        trader_liv[a][i] = 1
        trader_page[a][i] = 0
        i++
        trader_item[a][i] = (522 << 0)
        trader_qnt[a][i] = 1
        trader_liv[a][i] = 1
        trader_page[a][i] = 0
        i++
    }
    scr_assegna_item_a_pagina_trader(a)
    a = (9 << 0)
    trader_name[a] = "aaa"
    trader_faction[a] = (9 << 0)
    id_trader[a] = a
    trader_money[a] = 200000
    i = 0
    trader_item[a][i] = (226 << 0)
    trader_qnt[a][i] = 5
    trader_liv[a][i] = 1
    i++
    trader_item[a][i] = (227 << 0)
    trader_qnt[a][i] = 3
    trader_liv[a][i] = 1
    i++
    trader_item[a][i] = (230 << 0)
    trader_qnt[a][i] = 3
    trader_liv[a][i] = 1
    i++
    trader_item[a][i] = (229 << 0)
    trader_qnt[a][i] = 8
    trader_liv[a][i] = 1
    i++
    trader_item[a][i] = (213 << 0)
    trader_qnt[a][i] = 300
    trader_liv[a][i] = 1
    i++
    trader_item[a][i] = (217 << 0)
    trader_qnt[a][i] = 300
    trader_liv[a][i] = 1
    i++
    trader_item[a][i] = (216 << 0)
    trader_qnt[a][i] = 300
    trader_liv[a][i] = 1
    i++
    trader_item[a][i] = (220 << 0)
    trader_qnt[a][i] = 300
    trader_liv[a][i] = 1
    i++
    trader_item[a][i] = (241 << 0)
    trader_qnt[a][i] = 2
    trader_liv[a][i] = 1
    i++
    trader_item[a][i] = (242 << 0)
    trader_qnt[a][i] = 2
    trader_liv[a][i] = 1
    i++
    trader_item[a][i] = (240 << 0)
    trader_qnt[a][i] = 2
    trader_liv[a][i] = 1
    i++
    trader_item[a][i] = (239 << 0)
    trader_qnt[a][i] = 2
    trader_liv[a][i] = 1
    i++
    trader_item[a][i] = (238 << 0)
    trader_qnt[a][i] = 2
    trader_liv[a][i] = 1
    i++
    trader_item[a][i] = (237 << 0)
    trader_qnt[a][i] = 2
    trader_liv[a][i] = 1
    i++
    trader_item[a][i] = (236 << 0)
    trader_qnt[a][i] = 2
    trader_liv[a][i] = 1
    i++
    trader_item[a][i] = (235 << 0)
    trader_qnt[a][i] = 2
    trader_liv[a][i] = 1
    i++
    trader_item[a][i] = (84 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 1
    i++
    trader_item[a][i] = (60 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 1
    i++
    trader_item[a][i] = (69 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 1
    i++
    trader_item[a][i] = (18 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 1
    i++
    trader_item[a][i] = (51 << 0)
    trader_qnt[a][i] = 1
    trader_liv[a][i] = 1
    return;
}

