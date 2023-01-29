var array_griglia;
function lista_craft() //gml_Script_lista_craft
{
    if (room == r_hub)
    {
        ini_open(global.save_inventory)
        global.book_gunsmith1 = ini_read_real("Book", "gunsmith1", 0)
        global.book_gunsmith2 = ini_read_real("Book", "gunsmith2", 0)
        ini_close()
        global.grid_check_n_item_requiered = 0
        global.craft_req = -4
        global.craft_req_n = -4
        global.craft_id = -4
        global.craft_name = -4
        global.craft_track = -4
        global.craft_cost = -4
        global.craft_type = -4
        global.craft_get = -4
        global.craft_get_n = -4
        global.craft_get_dur = -4
        global.craft_req_skill_id = -4
        global.craft_req_skill_lvl = -4
        global.craft_req_module_id = -4
        global.craft_req_module_lvl = -4
        for (var i = 0; i < 250; i++)
        {
            global.craft_cost[i] = -1
            global.craft_track[i] = 0
        }
        i = 0
        var j = 0
        global.craft_id[i] = i
        global.craft_name[i] = ""
        global.craft_req_skill_id[i] = 0
        global.craft_req_skill_lvl[i] = 0
        global.craft_req_module_id[i] = -1
        global.craft_req_module_lvl[i] = 0
        global.craft_cost[i] = 0
        global.craft_type[i] = (0 << 0)
        global.craft_req[i][0] = (492 << 0)
        global.craft_req_n[i][0] = 3
        global.craft_get[i] = (229 << 0)
        global.craft_get_n[i] = 1
        i++
        global.craft_id[i] = i
        global.craft_name[i] = ""
        global.craft_req_skill_id[i] = 0
        global.craft_req_skill_lvl[i] = 0
        global.craft_req_module_id[i] = -1
        global.craft_req_module_lvl[i] = 0
        global.craft_cost[i] = 0
        global.craft_type[i] = (0 << 0)
        global.craft_req[i][0] = (269 << 0)
        global.craft_req_n[i][0] = 1
        global.craft_req[i][1] = (229 << 0)
        global.craft_req_n[i][1] = 3
        global.craft_get[i] = (609 << 0)
        global.craft_get_n[i] = 3
        i++
        global.craft_id[i] = i
        global.craft_name[i] = ""
        global.craft_req_skill_id[i] = (16 << 0)
        global.craft_req_skill_lvl[i] = 1
        global.craft_req_module_id[i] = (0 << 0)
        global.craft_req_module_lvl[i] = 1
        global.craft_cost[i] = 0
        global.craft_type[i] = (0 << 0)
        global.craft_req[i][0] = (492 << 0)
        global.craft_req_n[i][0] = 5
        global.craft_get[i] = (230 << 0)
        global.craft_get_n[i] = 2
        i++
        global.craft_id[i] = i
        global.craft_name[i] = ""
        global.craft_req_skill_id[i] = (16 << 0)
        global.craft_req_skill_lvl[i] = 1
        global.craft_req_module_id[i] = (0 << 0)
        global.craft_req_module_lvl[i] = 1
        global.craft_cost[i] = 0
        global.craft_type[i] = (0 << 0)
        global.craft_req[i][0] = (492 << 0)
        global.craft_req_n[i][0] = 5
        global.craft_req[i][1] = (229 << 0)
        global.craft_req_n[i][1] = 1
        global.craft_req[i][2] = (609 << 0)
        global.craft_req_n[i][2] = 1
        global.craft_req[i][3] = (610 << 0)
        global.craft_req_n[i][3] = 1
        global.craft_get[i] = (231 << 0)
        global.craft_get_n[i] = 2
        i++
        global.craft_id[i] = i
        global.craft_name[i] = ""
        global.craft_req_skill_id[i] = (16 << 0)
        global.craft_req_skill_lvl[i] = 2
        global.craft_req_module_id[i] = (0 << 0)
        global.craft_req_module_lvl[i] = 1
        global.craft_cost[i] = 0
        global.craft_type[i] = (0 << 0)
        global.craft_req[i][0] = (492 << 0)
        global.craft_req_n[i][0] = 6
        global.craft_req[i][1] = (229 << 0)
        global.craft_req_n[i][1] = 2
        global.craft_req[i][2] = (437 << 0)
        global.craft_req_n[i][2] = 1
        global.craft_req[i][3] = (610 << 0)
        global.craft_req_n[i][3] = 1
        global.craft_get[i] = (226 << 0)
        global.craft_get_n[i] = 1
        i++
        global.craft_id[i] = i
        global.craft_name[i] = ""
        global.craft_req_skill_id[i] = (16 << 0)
        global.craft_req_skill_lvl[i] = 3
        global.craft_req_module_id[i] = (0 << 0)
        global.craft_req_module_lvl[i] = 1
        global.craft_cost[i] = 0
        global.craft_type[i] = (0 << 0)
        global.craft_req[i][0] = (492 << 0)
        global.craft_req_n[i][0] = 6
        global.craft_req[i][1] = (609 << 0)
        global.craft_req_n[i][1] = 2
        global.craft_req[i][2] = (437 << 0)
        global.craft_req_n[i][2] = 1
        global.craft_req[i][3] = (610 << 0)
        global.craft_req_n[i][3] = 1
        global.craft_get[i] = (227 << 0)
        global.craft_get_n[i] = 1
        i++
        global.craft_id[i] = i
        global.craft_name[i] = ""
        global.craft_req_skill_id[i] = (16 << 0)
        global.craft_req_skill_lvl[i] = 3
        global.craft_req_module_id[i] = (0 << 0)
        global.craft_req_module_lvl[i] = 1
        global.craft_cost[i] = 0
        global.craft_type[i] = (0 << 0)
        global.craft_req[i][0] = (229 << 0)
        global.craft_req_n[i][0] = 2
        global.craft_req[i][1] = (492 << 0)
        global.craft_req_n[i][1] = 4
        global.craft_get[i] = (232 << 0)
        global.craft_get_n[i] = 1
        i++
        global.craft_id[i] = i
        global.craft_name[i] = ""
        global.craft_req_skill_id[i] = (16 << 0)
        global.craft_req_skill_lvl[i] = 4
        global.craft_req_module_id[i] = (0 << 0)
        global.craft_req_module_lvl[i] = 1
        global.craft_cost[i] = 0
        global.craft_type[i] = (0 << 0)
        global.craft_req[i][0] = (231 << 0)
        global.craft_req_n[i][0] = 2
        global.craft_req[i][1] = (229 << 0)
        global.craft_req_n[i][1] = 2
        global.craft_req[i][2] = (492 << 0)
        global.craft_req_n[i][2] = 4
        global.craft_get[i] = (233 << 0)
        global.craft_get_n[i] = 1
        i++
        global.craft_id[i] = i
        global.craft_name[i] = ""
        global.craft_req_skill_id[i] = (18 << 0)
        global.craft_req_skill_lvl[i] = 0
        global.craft_req_module_id[i] = (0 << 0)
        global.craft_req_module_lvl[i] = 1
        global.craft_cost[i] = 0
        global.craft_type[i] = (0 << 0)
        global.craft_req[i][0] = (438 << 0)
        global.craft_req_n[i][0] = 3
        global.craft_req[i][1] = (492 << 0)
        global.craft_req_n[i][1] = 10
        global.craft_req[i][2] = (437 << 0)
        global.craft_req_n[i][2] = 1
        global.craft_get[i] = (431 << 0)
        global.craft_get_n[i] = 1
        i++
        global.craft_id[i] = i
        global.craft_name[i] = ""
        global.craft_req_skill_id[i] = (18 << 0)
        global.craft_req_skill_lvl[i] = 1
        global.craft_req_module_id[i] = (0 << 0)
        global.craft_req_module_lvl[i] = 1
        global.craft_cost[i] = 0
        global.craft_type[i] = (0 << 0)
        global.craft_req[i][0] = (438 << 0)
        global.craft_req_n[i][0] = 3
        global.craft_req[i][1] = (492 << 0)
        global.craft_req_n[i][1] = 8
        global.craft_req[i][2] = (490 << 0)
        global.craft_req_n[i][2] = 20
        global.craft_req[i][3] = (437 << 0)
        global.craft_req_n[i][3] = 1
        global.craft_get[i] = (435 << 0)
        global.craft_get_n[i] = 1
        i++
        global.craft_id[i] = i
        global.craft_name[i] = ""
        global.craft_req_skill_id[i] = (18 << 0)
        global.craft_req_skill_lvl[i] = 2
        global.craft_req_module_id[i] = (0 << 0)
        global.craft_req_module_lvl[i] = 1
        global.craft_cost[i] = 0
        global.craft_type[i] = (0 << 0)
        global.craft_req[i][0] = (438 << 0)
        global.craft_req_n[i][0] = 3
        global.craft_req[i][1] = (492 << 0)
        global.craft_req_n[i][1] = 8
        global.craft_req[i][2] = (230 << 0)
        global.craft_req_n[i][2] = 1
        global.craft_req[i][3] = (437 << 0)
        global.craft_req_n[i][3] = 1
        global.craft_get[i] = (436 << 0)
        global.craft_get_n[i] = 1
        i++
        global.craft_id[i] = i
        global.craft_name[i] = ""
        global.craft_req_skill_id[i] = (18 << 0)
        global.craft_req_skill_lvl[i] = 3
        global.craft_req_module_id[i] = (0 << 0)
        global.craft_req_module_lvl[i] = 1
        global.craft_cost[i] = 0
        global.craft_type[i] = (0 << 0)
        global.craft_req[i][0] = (440 << 0)
        global.craft_req_n[i][0] = 2
        global.craft_req[i][1] = (492 << 0)
        global.craft_req_n[i][1] = 16
        global.craft_req[i][2] = (437 << 0)
        global.craft_req_n[i][2] = 1
        global.craft_get[i] = (432 << 0)
        global.craft_get_n[i] = 1
        i++
        global.craft_id[i] = i
        global.craft_name[i] = ""
        global.craft_req_skill_id[i] = (18 << 0)
        global.craft_req_skill_lvl[i] = 4
        global.craft_req_module_id[i] = (0 << 0)
        global.craft_req_module_lvl[i] = 1
        global.craft_cost[i] = 0
        global.craft_type[i] = (0 << 0)
        global.craft_req[i][0] = (440 << 0)
        global.craft_req_n[i][0] = 2
        global.craft_req[i][1] = (438 << 0)
        global.craft_req_n[i][1] = 2
        global.craft_req[i][2] = (492 << 0)
        global.craft_req_n[i][2] = 14
        global.craft_req[i][3] = (437 << 0)
        global.craft_req_n[i][3] = 1
        global.craft_get[i] = (433 << 0)
        global.craft_get_n[i] = 1
        i++
        global.craft_id[i] = i
        global.craft_name[i] = ""
        global.craft_req_skill_id[i] = (18 << 0)
        global.craft_req_skill_lvl[i] = 5
        global.craft_req_module_id[i] = (0 << 0)
        global.craft_req_module_lvl[i] = 1
        global.craft_cost[i] = 0
        global.craft_type[i] = (0 << 0)
        global.craft_req[i][0] = (440 << 0)
        global.craft_req_n[i][0] = 2
        global.craft_req[i][1] = (438 << 0)
        global.craft_req_n[i][1] = 2
        global.craft_req[i][1] = (439 << 0)
        global.craft_req_n[i][1] = 1
        global.craft_req[i][2] = (492 << 0)
        global.craft_req_n[i][2] = 18
        global.craft_req[i][3] = (437 << 0)
        global.craft_req_n[i][3] = 1
        global.craft_get[i] = (434 << 0)
        global.craft_get_n[i] = 1
        var kk = 1
        if (global.sk_k[(70 << 0)] == 1)
            kk = 1.3
        i++
        global.craft_id[i] = i
        global.craft_name[i] = ""
        global.craft_req_skill_id[i] = (22 << 0)
        global.craft_req_skill_lvl[i] = 0
        global.craft_req_module_id[i] = (11 << 0)
        global.craft_req_module_lvl[i] = 1
        global.craft_cost[i] = 0
        global.craft_type[i] = (1 << 0)
        global.craft_req[i][0] = (491 << 0)
        global.craft_req_n[i][0] = 30
        global.craft_req[i][1] = (489 << 0)
        global.craft_req_n[i][1] = 10
        global.craft_get[i] = (215 << 0)
        global.craft_get_n[i] = ceil((50 * kk))
        i++
        global.craft_id[i] = i
        global.craft_name[i] = ""
        global.craft_req_skill_id[i] = (22 << 0)
        global.craft_req_skill_lvl[i] = 3
        global.craft_req_module_id[i] = (11 << 0)
        global.craft_req_module_lvl[i] = 1
        global.craft_cost[i] = 0
        global.craft_type[i] = (1 << 0)
        global.craft_req[i][0] = (491 << 0)
        global.craft_req_n[i][0] = 45
        global.craft_req[i][1] = (489 << 0)
        global.craft_req_n[i][1] = 16
        global.craft_get[i] = (544 << 0)
        global.craft_get_n[i] = ceil((50 * kk))
        i++
        global.craft_id[i] = i
        global.craft_name[i] = ""
        global.craft_req_skill_id[i] = (22 << 0)
        global.craft_req_skill_lvl[i] = 1
        global.craft_req_module_id[i] = (11 << 0)
        global.craft_req_module_lvl[i] = 1
        global.craft_cost[i] = 0
        global.craft_type[i] = (1 << 0)
        global.craft_req[i][0] = (491 << 0)
        global.craft_req_n[i][0] = 35
        global.craft_req[i][1] = (489 << 0)
        global.craft_req_n[i][1] = 10
        global.craft_get[i] = (216 << 0)
        global.craft_get_n[i] = ceil((50 * kk))
        i++
        global.craft_id[i] = i
        global.craft_name[i] = ""
        global.craft_req_skill_id[i] = (22 << 0)
        global.craft_req_skill_lvl[i] = 0
        global.craft_req_module_id[i] = (11 << 0)
        global.craft_req_module_lvl[i] = 1
        global.craft_cost[i] = 0
        global.craft_type[i] = (1 << 0)
        global.craft_req[i][0] = (491 << 0)
        global.craft_req_n[i][0] = 35
        global.craft_req[i][1] = (489 << 0)
        global.craft_req_n[i][1] = 10
        global.craft_get[i] = (600 << 0)
        global.craft_get_n[i] = ceil((50 * kk))
        i++
        global.craft_id[i] = i
        global.craft_name[i] = ""
        global.craft_req_skill_id[i] = (22 << 0)
        global.craft_req_skill_lvl[i] = 4
        global.craft_req_module_id[i] = (11 << 0)
        global.craft_req_module_lvl[i] = 1
        global.craft_cost[i] = 0
        global.craft_type[i] = (1 << 0)
        global.craft_req[i][0] = (491 << 0)
        global.craft_req_n[i][0] = 50
        global.craft_req[i][1] = (489 << 0)
        global.craft_req_n[i][1] = 16
        global.craft_get[i] = (543 << 0)
        global.craft_get_n[i] = ceil((50 * kk))
        i++
        global.craft_id[i] = i
        global.craft_name[i] = ""
        global.craft_req_skill_id[i] = (22 << 0)
        global.craft_req_skill_lvl[i] = 0
        global.craft_req_module_id[i] = (11 << 0)
        global.craft_req_module_lvl[i] = 1
        global.craft_cost[i] = 0
        global.craft_type[i] = (1 << 0)
        global.craft_req[i][0] = (491 << 0)
        global.craft_req_n[i][0] = 30
        global.craft_req[i][1] = (489 << 0)
        global.craft_req_n[i][1] = 10
        global.craft_get[i] = (223 << 0)
        global.craft_get_n[i] = ceil((50 * kk))
        i++
        global.craft_id[i] = i
        global.craft_name[i] = ""
        global.craft_req_skill_id[i] = (22 << 0)
        global.craft_req_skill_lvl[i] = 3
        global.craft_req_module_id[i] = (11 << 0)
        global.craft_req_module_lvl[i] = 1
        global.craft_cost[i] = 0
        global.craft_type[i] = (1 << 0)
        global.craft_req[i][0] = (491 << 0)
        global.craft_req_n[i][0] = 45
        global.craft_req[i][1] = (489 << 0)
        global.craft_req_n[i][1] = 16
        global.craft_get[i] = (554 << 0)
        global.craft_get_n[i] = ceil((50 * kk))
        i++
        global.craft_id[i] = i
        global.craft_name[i] = ""
        global.craft_req_skill_id[i] = (22 << 0)
        global.craft_req_skill_lvl[i] = 1
        global.craft_req_module_id[i] = (11 << 0)
        global.craft_req_module_lvl[i] = 1
        global.craft_cost[i] = 0
        global.craft_type[i] = (1 << 0)
        global.craft_req[i][0] = (491 << 0)
        global.craft_req_n[i][0] = 30
        global.craft_req[i][1] = (489 << 0)
        global.craft_req_n[i][1] = 10
        global.craft_get[i] = (218 << 0)
        global.craft_get_n[i] = ceil((40 * kk))
        i++
        global.craft_id[i] = i
        global.craft_name[i] = ""
        global.craft_req_skill_id[i] = (22 << 0)
        global.craft_req_skill_lvl[i] = 0
        global.craft_req_module_id[i] = (11 << 0)
        global.craft_req_module_lvl[i] = 1
        global.craft_cost[i] = 0
        global.craft_type[i] = (1 << 0)
        global.craft_req[i][0] = (491 << 0)
        global.craft_req_n[i][0] = 30
        global.craft_req[i][1] = (489 << 0)
        global.craft_req_n[i][1] = 10
        global.craft_get[i] = (601 << 0)
        global.craft_get_n[i] = ceil((40 * kk))
        i++
        global.craft_id[i] = i
        global.craft_name[i] = ""
        global.craft_req_skill_id[i] = (22 << 0)
        global.craft_req_skill_lvl[i] = 3
        global.craft_req_module_id[i] = (11 << 0)
        global.craft_req_module_lvl[i] = 1
        global.craft_cost[i] = 0
        global.craft_type[i] = (1 << 0)
        global.craft_req[i][0] = (491 << 0)
        global.craft_req_n[i][0] = 52
        global.craft_req[i][1] = (489 << 0)
        global.craft_req_n[i][1] = 16
        global.craft_get[i] = (548 << 0)
        global.craft_get_n[i] = ceil((40 * kk))
        i++
        global.craft_id[i] = i
        global.craft_name[i] = ""
        global.craft_req_skill_id[i] = (22 << 0)
        global.craft_req_skill_lvl[i] = 2
        global.craft_req_module_id[i] = (11 << 0)
        global.craft_req_module_lvl[i] = 1
        global.craft_cost[i] = 0
        global.craft_type[i] = (1 << 0)
        global.craft_req[i][0] = (491 << 0)
        global.craft_req_n[i][0] = 30
        global.craft_req[i][1] = (489 << 0)
        global.craft_req_n[i][1] = 10
        global.craft_get[i] = (225 << 0)
        global.craft_get_n[i] = ceil((40 * kk))
        i++
        global.craft_id[i] = i
        global.craft_name[i] = ""
        global.craft_req_skill_id[i] = (22 << 0)
        global.craft_req_skill_lvl[i] = 4
        global.craft_req_module_id[i] = (11 << 0)
        global.craft_req_module_lvl[i] = 1
        global.craft_cost[i] = 0
        global.craft_type[i] = (1 << 0)
        global.craft_req[i][0] = (491 << 0)
        global.craft_req_n[i][0] = 45
        global.craft_req[i][1] = (489 << 0)
        global.craft_req_n[i][1] = 15
        global.craft_get[i] = (555 << 0)
        global.craft_get_n[i] = ceil((40 * kk))
        i++
        global.craft_id[i] = i
        global.craft_name[i] = ""
        global.craft_req_skill_id[i] = (22 << 0)
        global.craft_req_skill_lvl[i] = 3
        global.craft_req_module_id[i] = (11 << 0)
        global.craft_req_module_lvl[i] = 1
        global.craft_cost[i] = 0
        global.craft_type[i] = (1 << 0)
        global.craft_req[i][0] = (491 << 0)
        global.craft_req_n[i][0] = 22
        global.craft_req[i][1] = (489 << 0)
        global.craft_req_n[i][1] = 9
        global.craft_get[i] = (217 << 0)
        global.craft_get_n[i] = ceil((30 * kk))
        i++
        global.craft_id[i] = i
        global.craft_name[i] = ""
        global.craft_req_skill_id[i] = (22 << 0)
        global.craft_req_skill_lvl[i] = 5
        global.craft_req_module_id[i] = (11 << 0)
        global.craft_req_module_lvl[i] = 1
        global.craft_cost[i] = 0
        global.craft_type[i] = (1 << 0)
        global.craft_req[i][0] = (491 << 0)
        global.craft_req_n[i][0] = 42
        global.craft_req[i][1] = (489 << 0)
        global.craft_req_n[i][1] = 14
        global.craft_get[i] = (547 << 0)
        global.craft_get_n[i] = ceil((30 * kk))
        i++
        global.craft_id[i] = i
        global.craft_name[i] = ""
        global.craft_req_skill_id[i] = (22 << 0)
        global.craft_req_skill_lvl[i] = 0
        global.craft_req_module_id[i] = (11 << 0)
        global.craft_req_module_lvl[i] = 1
        global.craft_cost[i] = 0
        global.craft_type[i] = (1 << 0)
        global.craft_req[i][0] = (491 << 0)
        global.craft_req_n[i][0] = 15
        global.craft_req[i][1] = (489 << 0)
        global.craft_req_n[i][1] = 4
        global.craft_get[i] = (542 << 0)
        global.craft_get_n[i] = ceil((30 * kk))
        i++
        global.craft_id[i] = i
        global.craft_name[i] = ""
        global.craft_req_skill_id[i] = (22 << 0)
        global.craft_req_skill_lvl[i] = 0
        global.craft_req_module_id[i] = (11 << 0)
        global.craft_req_module_lvl[i] = 1
        global.craft_cost[i] = 0
        global.craft_type[i] = (1 << 0)
        global.craft_req[i][0] = (491 << 0)
        global.craft_req_n[i][0] = 15
        global.craft_req[i][1] = (489 << 0)
        global.craft_req_n[i][1] = 4
        global.craft_get[i] = (604 << 0)
        global.craft_get_n[i] = ceil((30 * kk))
        i++
        global.craft_id[i] = i
        global.craft_name[i] = ""
        global.craft_req_skill_id[i] = (22 << 0)
        global.craft_req_skill_lvl[i] = 2
        global.craft_req_module_id[i] = (11 << 0)
        global.craft_req_module_lvl[i] = 1
        global.craft_cost[i] = 0
        global.craft_type[i] = (1 << 0)
        global.craft_req[i][0] = (491 << 0)
        global.craft_req_n[i][0] = 20
        global.craft_req[i][1] = (489 << 0)
        global.craft_req_n[i][1] = 7
        global.craft_get[i] = (213 << 0)
        global.craft_get_n[i] = ceil((30 * kk))
        i++
        global.craft_id[i] = i
        global.craft_name[i] = ""
        global.craft_req_skill_id[i] = (22 << 0)
        global.craft_req_skill_lvl[i] = 4
        global.craft_req_module_id[i] = (11 << 0)
        global.craft_req_module_lvl[i] = 1
        global.craft_cost[i] = 0
        global.craft_type[i] = (1 << 0)
        global.craft_req[i][0] = (491 << 0)
        global.craft_req_n[i][0] = 38
        global.craft_req[i][1] = (489 << 0)
        global.craft_req_n[i][1] = 15
        global.craft_get[i] = (541 << 0)
        global.craft_get_n[i] = ceil((30 * kk))
        i++
        global.craft_id[i] = i
        global.craft_name[i] = ""
        global.craft_req_skill_id[i] = (22 << 0)
        global.craft_req_skill_lvl[i] = 1
        global.craft_req_module_id[i] = (11 << 0)
        global.craft_req_module_lvl[i] = 1
        global.craft_cost[i] = 0
        global.craft_type[i] = (1 << 0)
        global.craft_req[i][0] = (491 << 0)
        global.craft_req_n[i][0] = 18
        global.craft_req[i][1] = (489 << 0)
        global.craft_req_n[i][1] = 6
        global.craft_get[i] = (549 << 0)
        global.craft_get_n[i] = ceil((30 * kk))
        i++
        global.craft_id[i] = i
        global.craft_name[i] = ""
        global.craft_req_skill_id[i] = (22 << 0)
        global.craft_req_skill_lvl[i] = 1
        global.craft_req_module_id[i] = (11 << 0)
        global.craft_req_module_lvl[i] = 1
        global.craft_cost[i] = 0
        global.craft_type[i] = (1 << 0)
        global.craft_req[i][0] = (491 << 0)
        global.craft_req_n[i][0] = 18
        global.craft_req[i][1] = (489 << 0)
        global.craft_req_n[i][1] = 6
        global.craft_get[i] = (602 << 0)
        global.craft_get_n[i] = ceil((30 * kk))
        i++
        global.craft_id[i] = i
        global.craft_name[i] = ""
        global.craft_req_skill_id[i] = (22 << 0)
        global.craft_req_skill_lvl[i] = 2
        global.craft_req_module_id[i] = (11 << 0)
        global.craft_req_module_lvl[i] = 1
        global.craft_cost[i] = 0
        global.craft_type[i] = (1 << 0)
        global.craft_req[i][0] = (491 << 0)
        global.craft_req_n[i][0] = 25
        global.craft_req[i][1] = (489 << 0)
        global.craft_req_n[i][1] = 8
        global.craft_get[i] = (219 << 0)
        global.craft_get_n[i] = ceil((30 * kk))
        i++
        global.craft_id[i] = i
        global.craft_name[i] = ""
        global.craft_req_skill_id[i] = (22 << 0)
        global.craft_req_skill_lvl[i] = 5
        global.craft_req_module_id[i] = (11 << 0)
        global.craft_req_module_lvl[i] = 1
        global.craft_cost[i] = 0
        global.craft_type[i] = (1 << 0)
        global.craft_req[i][0] = (491 << 0)
        global.craft_req_n[i][0] = 37
        global.craft_req[i][1] = (489 << 0)
        global.craft_req_n[i][1] = 10
        global.craft_get[i] = (550 << 0)
        global.craft_get_n[i] = ceil((30 * kk))
        i++
        global.craft_id[i] = i
        global.craft_name[i] = ""
        global.craft_req_skill_id[i] = (22 << 0)
        global.craft_req_skill_lvl[i] = 1
        global.craft_req_module_id[i] = (11 << 0)
        global.craft_req_module_lvl[i] = 1
        global.craft_cost[i] = 0
        global.craft_type[i] = (1 << 0)
        global.craft_req[i][0] = (491 << 0)
        global.craft_req_n[i][0] = 18
        global.craft_req[i][1] = (489 << 0)
        global.craft_req_n[i][1] = 6
        global.craft_get[i] = (545 << 0)
        global.craft_get_n[i] = ceil((30 * kk))
        i++
        global.craft_id[i] = i
        global.craft_name[i] = ""
        global.craft_req_skill_id[i] = (22 << 0)
        global.craft_req_skill_lvl[i] = 0
        global.craft_req_module_id[i] = (11 << 0)
        global.craft_req_module_lvl[i] = 1
        global.craft_cost[i] = 0
        global.craft_type[i] = (1 << 0)
        global.craft_req[i][0] = (491 << 0)
        global.craft_req_n[i][0] = 18
        global.craft_req[i][1] = (489 << 0)
        global.craft_req_n[i][1] = 6
        global.craft_get[i] = (603 << 0)
        global.craft_get_n[i] = ceil((30 * kk))
        i++
        global.craft_id[i] = i
        global.craft_name[i] = ""
        global.craft_req_skill_id[i] = (22 << 0)
        global.craft_req_skill_lvl[i] = 3
        global.craft_req_module_id[i] = (11 << 0)
        global.craft_req_module_lvl[i] = 1
        global.craft_cost[i] = 0
        global.craft_type[i] = (1 << 0)
        global.craft_req[i][0] = (491 << 0)
        global.craft_req_n[i][0] = 24
        global.craft_req[i][1] = (489 << 0)
        global.craft_req_n[i][1] = 8
        global.craft_get[i] = (214 << 0)
        global.craft_get_n[i] = ceil((30 * kk))
        i++
        global.craft_id[i] = i
        global.craft_name[i] = ""
        global.craft_req_skill_id[i] = (22 << 0)
        global.craft_req_skill_lvl[i] = 5
        global.craft_req_module_id[i] = (11 << 0)
        global.craft_req_module_lvl[i] = 1
        global.craft_cost[i] = 0
        global.craft_type[i] = (1 << 0)
        global.craft_req[i][0] = (491 << 0)
        global.craft_req_n[i][0] = 40
        global.craft_req[i][1] = (489 << 0)
        global.craft_req_n[i][1] = 12
        global.craft_get[i] = (546 << 0)
        global.craft_get_n[i] = ceil((30 * kk))
        i++
        global.craft_id[i] = i
        global.craft_name[i] = ""
        global.craft_req_skill_id[i] = (22 << 0)
        global.craft_req_skill_lvl[i] = 2
        global.craft_req_module_id[i] = (11 << 0)
        global.craft_req_module_lvl[i] = 1
        global.craft_cost[i] = 0
        global.craft_type[i] = (1 << 0)
        global.craft_req[i][0] = (491 << 0)
        global.craft_req_n[i][0] = 35
        global.craft_req[i][1] = (489 << 0)
        global.craft_req_n[i][1] = 10
        global.craft_get[i] = (221 << 0)
        global.craft_get_n[i] = ceil((30 * kk))
        i++
        global.craft_id[i] = i
        global.craft_name[i] = ""
        global.craft_req_skill_id[i] = (22 << 0)
        global.craft_req_skill_lvl[i] = 5
        global.craft_req_module_id[i] = (11 << 0)
        global.craft_req_module_lvl[i] = 1
        global.craft_cost[i] = 0
        global.craft_type[i] = (1 << 0)
        global.craft_req[i][0] = (491 << 0)
        global.craft_req_n[i][0] = 60
        global.craft_req[i][1] = (489 << 0)
        global.craft_req_n[i][1] = 15
        global.craft_get[i] = (553 << 0)
        global.craft_get_n[i] = ceil((30 * kk))
        i++
        global.craft_id[i] = i
        global.craft_name[i] = ""
        global.craft_req_skill_id[i] = (22 << 0)
        global.craft_req_skill_lvl[i] = 2
        global.craft_req_module_id[i] = (11 << 0)
        global.craft_req_module_lvl[i] = 1
        global.craft_cost[i] = 0
        global.craft_type[i] = (1 << 0)
        global.craft_req[i][0] = (491 << 0)
        global.craft_req_n[i][0] = 30
        global.craft_req[i][1] = (489 << 0)
        global.craft_req_n[i][1] = 10
        global.craft_get[i] = (551 << 0)
        global.craft_get_n[i] = ceil((30 * kk))
        i++
        global.craft_id[i] = i
        global.craft_name[i] = ""
        global.craft_req_skill_id[i] = (22 << 0)
        global.craft_req_skill_lvl[i] = 4
        global.craft_req_module_id[i] = (11 << 0)
        global.craft_req_module_lvl[i] = 1
        global.craft_cost[i] = 0
        global.craft_type[i] = (1 << 0)
        global.craft_req[i][0] = (491 << 0)
        global.craft_req_n[i][0] = 38
        global.craft_req[i][1] = (489 << 0)
        global.craft_req_n[i][1] = 13
        global.craft_get[i] = (220 << 0)
        global.craft_get_n[i] = ceil((30 * kk))
        i++
        global.craft_id[i] = i
        global.craft_name[i] = ""
        global.craft_req_skill_id[i] = (22 << 0)
        global.craft_req_skill_lvl[i] = 5
        global.craft_req_module_id[i] = (11 << 0)
        global.craft_req_module_lvl[i] = 1
        global.craft_cost[i] = 0
        global.craft_type[i] = (1 << 0)
        global.craft_req[i][0] = (491 << 0)
        global.craft_req_n[i][0] = 60
        global.craft_req[i][1] = (489 << 0)
        global.craft_req_n[i][1] = 20
        global.craft_get[i] = (552 << 0)
        global.craft_get_n[i] = ceil((30 * kk))
        i++
        global.craft_id[i] = i
        global.craft_name[i] = ""
        global.craft_req_skill_id[i] = (22 << 0)
        global.craft_req_skill_lvl[i] = 1
        global.craft_req_module_id[i] = (11 << 0)
        global.craft_req_module_lvl[i] = 1
        global.craft_cost[i] = 0
        global.craft_type[i] = (1 << 0)
        global.craft_req[i][0] = (491 << 0)
        global.craft_req_n[i][0] = 20
        global.craft_req[i][1] = (489 << 0)
        global.craft_req_n[i][1] = 10
        global.craft_get[i] = (222 << 0)
        global.craft_get_n[i] = ceil((20 * kk))
        i++
        global.craft_id[i] = i
        global.craft_name[i] = ""
        global.craft_req_skill_id[i] = (22 << 0)
        global.craft_req_skill_lvl[i] = 2
        global.craft_req_module_id[i] = (11 << 0)
        global.craft_req_module_lvl[i] = 1
        global.craft_cost[i] = 0
        global.craft_type[i] = (1 << 0)
        global.craft_req[i][0] = (491 << 0)
        global.craft_req_n[i][0] = 28
        global.craft_req[i][1] = (489 << 0)
        global.craft_req_n[i][1] = 13
        global.craft_get[i] = (556 << 0)
        global.craft_get_n[i] = ceil((20 * kk))
        i++
        global.craft_id[i] = i
        global.craft_name[i] = ""
        global.craft_req_skill_id[i] = (22 << 0)
        global.craft_req_skill_lvl[i] = 4
        global.craft_req_module_id[i] = (11 << 0)
        global.craft_req_module_lvl[i] = 1
        global.craft_cost[i] = 0
        global.craft_type[i] = (1 << 0)
        global.craft_req[i][0] = (491 << 0)
        global.craft_req_n[i][0] = 38
        global.craft_req[i][1] = (489 << 0)
        global.craft_req_n[i][1] = 17
        global.craft_get[i] = (557 << 0)
        global.craft_get_n[i] = ceil((20 * kk))
        i++
        j = 0
        global.craft_id[i] = i
        global.craft_name[i] = ""
        global.craft_req_skill_id[i] = 0
        global.craft_req_skill_lvl[i] = 0
        global.craft_req_module_id[i] = -1
        global.craft_req_module_lvl[i] = 0
        global.craft_cost[i] = 0
        global.craft_type[i] = (2 << 0)
        global.craft_req[i][j] = (577 << 0)
        global.craft_req_n[i][j] = 2
        j++
        global.craft_get[i] = (245 << 0)
        global.craft_get_n[i] = 1
        i++
        j = 0
        global.craft_id[i] = i
        global.craft_name[i] = ""
        global.craft_req_skill_id[i] = 0
        global.craft_req_skill_lvl[i] = 0
        global.craft_req_module_id[i] = -1
        global.craft_req_module_lvl[i] = 0
        global.craft_cost[i] = 0
        global.craft_type[i] = (2 << 0)
        global.craft_req[i][j] = (582 << 0)
        global.craft_req_n[i][j] = 2
        j++
        global.craft_get[i] = (269 << 0)
        global.craft_get_n[i] = 1
        i++
        j = 0
        global.craft_id[i] = i
        global.craft_name[i] = ""
        global.craft_req_skill_id[i] = 0
        global.craft_req_skill_lvl[i] = 0
        global.craft_req_module_id[i] = (4 << 0)
        global.craft_req_module_lvl[i] = 1
        global.craft_cost[i] = 0
        global.craft_type[i] = (2 << 0)
        global.craft_req[i][j] = (582 << 0)
        global.craft_req_n[i][j] = 1
        j++
        global.craft_req[i][j] = (303 << 0)
        global.craft_req_n[i][j] = 5
        j++
        global.craft_get[i] = (269 << 0)
        global.craft_get_n[i] = 1
        i++
        j = 0
        global.craft_id[i] = i
        global.craft_name[i] = ""
        global.craft_req_skill_id[i] = 0
        global.craft_req_skill_lvl[i] = 0
        global.craft_req_module_id[i] = -1
        global.craft_req_module_lvl[i] = 0
        global.craft_cost[i] = 0
        global.craft_type[i] = (2 << 0)
        global.craft_req[i][j] = (250 << 0)
        global.craft_req_n[i][j] = 1
        j++
        global.craft_req[i][j] = (245 << 0)
        global.craft_req_n[i][j] = 2
        global.craft_get[i] = (261 << 0)
        global.craft_get_n[i] = 2
        i++
        j = 0
        global.craft_id[i] = i
        global.craft_name[i] = ""
        global.craft_req_skill_id[i] = 0
        global.craft_req_skill_lvl[i] = 0
        global.craft_req_module_id[i] = -1
        global.craft_req_module_lvl[i] = 0
        global.craft_cost[i] = 0
        global.craft_type[i] = (2 << 0)
        global.craft_req[i][j] = (257 << 0)
        global.craft_req_n[i][j] = 1
        j++
        global.craft_req[i][j] = (245 << 0)
        global.craft_req_n[i][j] = 2
        global.craft_get[i] = (259 << 0)
        global.craft_get_n[i] = 2
        i++
        j = 0
        global.craft_id[i] = i
        global.craft_name[i] = ""
        global.craft_req_skill_id[i] = 0
        global.craft_req_skill_lvl[i] = 0
        global.craft_req_module_id[i] = -1
        global.craft_req_module_lvl[i] = 0
        global.craft_cost[i] = 0
        global.craft_type[i] = (2 << 0)
        global.craft_req[i][j] = (255 << 0)
        global.craft_req_n[i][j] = 1
        j++
        global.craft_req[i][j] = (245 << 0)
        global.craft_req_n[i][j] = 1
        global.craft_get[i] = (258 << 0)
        global.craft_get_n[i] = 2
        i++
        j = 0
        global.craft_id[i] = i
        global.craft_name[i] = ""
        global.craft_req_skill_id[i] = 0
        global.craft_req_skill_lvl[i] = 0
        global.craft_req_module_id[i] = -1
        global.craft_req_module_lvl[i] = 0
        global.craft_cost[i] = 0
        global.craft_type[i] = (2 << 0)
        global.craft_req[i][j] = (256 << 0)
        global.craft_req_n[i][j] = 1
        j++
        global.craft_req[i][j] = (245 << 0)
        global.craft_req_n[i][j] = 1
        global.craft_get[i] = (260 << 0)
        global.craft_get_n[i] = 1
        i++
        j = 0
        global.craft_id[i] = i
        global.craft_name[i] = ""
        global.craft_req_skill_id[i] = 0
        global.craft_req_skill_lvl[i] = 0
        global.craft_req_module_id[i] = (4 << 0)
        global.craft_req_module_lvl[i] = 1
        global.craft_cost[i] = 0
        global.craft_type[i] = (2 << 0)
        global.craft_req[i][j] = (266 << 0)
        global.craft_req_n[i][j] = 1
        j++
        global.craft_req[i][j] = (303 << 0)
        global.craft_req_n[i][j] = 1
        j++
        global.craft_req[i][j] = (269 << 0)
        global.craft_req_n[i][j] = 1
        global.craft_get[i] = (267 << 0)
        global.craft_get_n[i] = 1
        i++
        j = 0
        global.craft_id[i] = i
        global.craft_name[i] = ""
        global.craft_req_skill_id[i] = 0
        global.craft_req_skill_lvl[i] = 0
        global.craft_req_module_id[i] = (4 << 0)
        global.craft_req_module_lvl[i] = 1
        global.craft_cost[i] = 0
        global.craft_type[i] = (2 << 0)
        global.craft_req[i][j] = (490 << 0)
        global.craft_req_n[i][j] = 7
        j++
        global.craft_req[i][j] = (303 << 0)
        global.craft_req_n[i][j] = 4
        j++
        global.craft_req[i][j] = (269 << 0)
        global.craft_req_n[i][j] = 1
        global.craft_get[i] = (251 << 0)
        global.craft_get_n[i] = 1
        i++
        j = 0
        global.craft_id[i] = i
        global.craft_name[i] = ""
        global.craft_req_skill_id[i] = 0
        global.craft_req_skill_lvl[i] = 0
        global.craft_req_module_id[i] = (4 << 0)
        global.craft_req_module_lvl[i] = 1
        global.craft_cost[i] = 0
        global.craft_type[i] = (2 << 0)
        global.craft_req[i][j] = (251 << 0)
        global.craft_req_n[i][j] = 1
        j++
        global.craft_req[i][j] = (303 << 0)
        global.craft_req_n[i][j] = 1
        j++
        global.craft_req[i][j] = (269 << 0)
        global.craft_req_n[i][j] = 1
        global.craft_get[i] = (252 << 0)
        global.craft_get_n[i] = 1
        i++
        j = 0
        global.craft_id[i] = i
        global.craft_name[i] = ""
        global.craft_req_skill_id[i] = 0
        global.craft_req_skill_lvl[i] = 0
        global.craft_req_module_id[i] = (4 << 0)
        global.craft_req_module_lvl[i] = 1
        global.craft_cost[i] = 0
        global.craft_type[i] = (2 << 0)
        global.craft_req[i][j] = (373 << 0)
        global.craft_req_n[i][j] = 1
        j++
        global.craft_req[i][j] = (303 << 0)
        global.craft_req_n[i][j] = 1
        global.craft_get[i] = (250 << 0)
        global.craft_get_n[i] = 1
        i++
        j = 0
        global.craft_id[i] = i
        global.craft_name[i] = ""
        global.craft_req_skill_id[i] = 0
        global.craft_req_skill_lvl[i] = 0
        global.craft_req_module_id[i] = (4 << 0)
        global.craft_req_module_lvl[i] = 1
        global.craft_cost[i] = 0
        global.craft_type[i] = (2 << 0)
        global.craft_req[i][j] = (373 << 0)
        global.craft_req_n[i][j] = 2
        j++
        global.craft_req[i][j] = (253 << 0)
        global.craft_req_n[i][j] = 1
        j++
        global.craft_req[i][j] = (303 << 0)
        global.craft_req_n[i][j] = 1
        j++
        global.craft_req[i][j] = (269 << 0)
        global.craft_req_n[i][j] = 1
        global.craft_get[i] = (262 << 0)
        global.craft_get_n[i] = 1
        i++
        j = 0
        global.craft_id[i] = i
        global.craft_name[i] = ""
        global.craft_req_skill_id[i] = 0
        global.craft_req_skill_lvl[i] = 0
        global.craft_req_module_id[i] = (4 << 0)
        global.craft_req_module_lvl[i] = 1
        global.craft_cost[i] = 0
        global.craft_type[i] = (2 << 0)
        global.craft_req[i][j] = (269 << 0)
        global.craft_req_n[i][j] = 1
        j++
        global.craft_req[i][j] = (303 << 0)
        global.craft_req_n[i][j] = 1
        j++
        global.craft_req[i][j] = (338 << 0)
        global.craft_req_n[i][j] = 1
        global.craft_get[i] = (277 << 0)
        global.craft_get_n[i] = 3
        i++
        j = 0
        global.craft_id[i] = i
        global.craft_name[i] = ""
        global.craft_req_skill_id[i] = 0
        global.craft_req_skill_lvl[i] = 0
        global.craft_req_module_id[i] = (4 << 0)
        global.craft_req_module_lvl[i] = 1
        global.craft_cost[i] = 0
        global.craft_type[i] = (2 << 0)
        global.craft_req[i][j] = (269 << 0)
        global.craft_req_n[i][j] = 1
        j++
        global.craft_req[i][j] = (345 << 0)
        global.craft_req_n[i][j] = 1
        j++
        global.craft_req[i][j] = (303 << 0)
        global.craft_req_n[i][j] = 1
        global.craft_get[i] = (278 << 0)
        global.craft_get_n[i] = 2
        i++
        j = 0
        global.craft_id[i] = i
        global.craft_req_skill_id[i] = (20 << 0)
        global.craft_req_skill_lvl[i] = 0
        global.craft_req_module_id[i] = (4 << 0)
        global.craft_req_module_lvl[i] = 1
        global.craft_name[i] = ""
        global.craft_cost[i] = 0
        global.craft_type[i] = (2 << 0)
        global.craft_req[i][j] = (373 << 0)
        global.craft_req_n[i][j] = 2
        j++
        global.craft_req[i][j] = (346 << 0)
        global.craft_req_n[i][j] = 3
        j++
        global.craft_req[i][j] = (347 << 0)
        global.craft_req_n[i][j] = 1
        j++
        global.craft_req[i][j] = (303 << 0)
        global.craft_req_n[i][j] = 1
        global.craft_get[i] = (263 << 0)
        global.craft_get_n[i] = 3
        i++
        j = 0
        global.craft_id[i] = i
        global.craft_name[i] = ""
        global.craft_req_skill_id[i] = (20 << 0)
        global.craft_req_skill_lvl[i] = 0
        global.craft_req_module_id[i] = (4 << 0)
        global.craft_req_module_lvl[i] = 1
        global.craft_cost[i] = 0
        global.craft_type[i] = (2 << 0)
        global.craft_req[i][j] = (266 << 0)
        global.craft_req_n[i][j] = 3
        j++
        global.craft_req[i][j] = (303 << 0)
        global.craft_req_n[i][j] = 3
        j++
        global.craft_req[i][j] = (346 << 0)
        global.craft_req_n[i][j] = 2
        j++
        global.craft_req[i][j] = (347 << 0)
        global.craft_req_n[i][j] = 1
        j++
        global.craft_req[i][j] = (269 << 0)
        global.craft_req_n[i][j] = 1
        global.craft_get[i] = (268 << 0)
        global.craft_get_n[i] = 3
        i++
        j = 0
        global.craft_id[i] = i
        global.craft_name[i] = ""
        global.craft_req_skill_id[i] = 0
        global.craft_req_skill_lvl[i] = 0
        global.craft_req_module_id[i] = -1
        global.craft_req_module_lvl[i] = 0
        global.craft_cost[i] = 0
        global.craft_type[i] = (6 << 0)
        global.craft_req[i][j] = (489 << 0)
        global.craft_req_n[i][j] = 35
        j++
        global.craft_req[i][j] = (296 << 0)
        global.craft_req_n[i][j] = 10
        j++
        global.craft_req[i][j] = (285 << 0)
        global.craft_req_n[i][j] = 10
        j++
        global.craft_req[i][j] = (286 << 0)
        global.craft_req_n[i][j] = 1
        j++
        global.craft_req[i][j] = (284 << 0)
        global.craft_req_n[i][j] = 1
        j++
        global.craft_req[i][j] = (283 << 0)
        global.craft_req_n[i][j] = 1
        j++
        global.craft_req[i][j] = (287 << 0)
        global.craft_req_n[i][j] = 1
        j++
        global.craft_req[i][j] = (330 << 0)
        global.craft_req_n[i][j] = 2
        global.craft_get[i] = (495 << 0)
        global.craft_get_n[i] = 1
        i++
        j = 0
        global.craft_id[i] = i
        global.craft_name[i] = ""
        global.craft_req_skill_id[i] = 0
        global.craft_req_skill_lvl[i] = 0
        global.craft_req_module_id[i] = -1
        global.craft_req_module_lvl[i] = 0
        global.craft_cost[i] = 0
        global.craft_type[i] = (6 << 0)
        global.craft_req[i][j] = (348 << 0)
        global.craft_req_n[i][j] = 4
        j++
        global.craft_req[i][j] = (489 << 0)
        global.craft_req_n[i][j] = 60
        j++
        global.craft_req[i][j] = (296 << 0)
        global.craft_req_n[i][j] = 30
        j++
        global.craft_req[i][j] = (285 << 0)
        global.craft_req_n[i][j] = 30
        j++
        global.craft_req[i][j] = (286 << 0)
        global.craft_req_n[i][j] = 1
        j++
        global.craft_req[i][j] = (284 << 0)
        global.craft_req_n[i][j] = 1
        j++
        global.craft_req[i][j] = (287 << 0)
        global.craft_req_n[i][j] = 2
        j++
        global.craft_req[i][j] = (330 << 0)
        global.craft_req_n[i][j] = 4
        j++
        global.craft_req[i][j] = (305 << 0)
        global.craft_req_n[i][j] = 2
        global.craft_get[i] = (494 << 0)
        global.craft_get_n[i] = 1
        i++
        j = 0
        global.craft_id[i] = i
        global.craft_name[i] = ""
        global.craft_req_skill_id[i] = 0
        global.craft_req_skill_lvl[i] = 0
        global.craft_req_module_id[i] = -1
        global.craft_req_module_lvl[i] = 0
        global.craft_cost[i] = 0
        global.craft_type[i] = (6 << 0)
        global.craft_req[i][j] = (349 << 0)
        global.craft_req_n[i][j] = 4
        j++
        global.craft_req[i][j] = (489 << 0)
        global.craft_req_n[i][j] = 50
        j++
        global.craft_req[i][j] = (296 << 0)
        global.craft_req_n[i][j] = 15
        j++
        global.craft_req[i][j] = (285 << 0)
        global.craft_req_n[i][j] = 15
        j++
        global.craft_req[i][j] = (286 << 0)
        global.craft_req_n[i][j] = 1
        j++
        global.craft_req[i][j] = (284 << 0)
        global.craft_req_n[i][j] = 1
        j++
        global.craft_req[i][j] = (287 << 0)
        global.craft_req_n[i][j] = 2
        j++
        global.craft_req[i][j] = (330 << 0)
        global.craft_req_n[i][j] = 4
        j++
        global.craft_req[i][j] = (331 << 0)
        global.craft_req_n[i][j] = 6
        j++
        global.craft_req[i][j] = (332 << 0)
        global.craft_req_n[i][j] = 6
        j++
        global.craft_req[i][j] = (333 << 0)
        global.craft_req_n[i][j] = 6
        j++
        global.craft_req[i][j] = (305 << 0)
        global.craft_req_n[i][j] = 2
        global.craft_get[i] = (497 << 0)
        global.craft_get_n[i] = 1
        i++
        j = 0
        global.craft_id[i] = i
        global.craft_name[i] = ""
        global.craft_req_skill_id[i] = 0
        global.craft_req_skill_lvl[i] = 0
        global.craft_req_module_id[i] = -1
        global.craft_req_module_lvl[i] = 0
        global.craft_cost[i] = 0
        global.craft_type[i] = (6 << 0)
        global.craft_req[i][j] = (489 << 0)
        global.craft_req_n[i][j] = 60
        j++
        global.craft_req[i][j] = (296 << 0)
        global.craft_req_n[i][j] = 15
        j++
        global.craft_req[i][j] = (285 << 0)
        global.craft_req_n[i][j] = 15
        j++
        global.craft_req[i][j] = (284 << 0)
        global.craft_req_n[i][j] = 1
        j++
        global.craft_req[i][j] = (330 << 0)
        global.craft_req_n[i][j] = 4
        j++
        global.craft_req[i][j] = (305 << 0)
        global.craft_req_n[i][j] = 2
        j++
        global.craft_req[i][j] = (492 << 0)
        global.craft_req_n[i][j] = 25
        j++
        global.craft_req[i][j] = (340 << 0)
        global.craft_req_n[i][j] = 3
        j++
        global.craft_req[i][j] = (341 << 0)
        global.craft_req_n[i][j] = 2
        j++
        global.craft_req[i][j] = (348 << 0)
        global.craft_req_n[i][j] = 1
        global.craft_get[i] = (496 << 0)
        global.craft_get_n[i] = 1
        i++
        j = 0
        global.craft_id[i] = i
        global.craft_name[i] = ""
        global.craft_req_skill_id[i] = 0
        global.craft_req_skill_lvl[i] = 0
        global.craft_req_module_id[i] = -1
        global.craft_req_module_lvl[i] = 0
        global.craft_cost[i] = 0
        global.craft_type[i] = (6 << 0)
        global.craft_req[i][j] = (489 << 0)
        global.craft_req_n[i][j] = 80
        j++
        global.craft_req[i][j] = (296 << 0)
        global.craft_req_n[i][j] = 10
        j++
        global.craft_req[i][j] = (285 << 0)
        global.craft_req_n[i][j] = 25
        j++
        global.craft_req[i][j] = (286 << 0)
        global.craft_req_n[i][j] = 1
        j++
        global.craft_req[i][j] = (284 << 0)
        global.craft_req_n[i][j] = 1
        j++
        global.craft_req[i][j] = (287 << 0)
        global.craft_req_n[i][j] = 2
        j++
        global.craft_req[i][j] = (330 << 0)
        global.craft_req_n[i][j] = 4
        j++
        global.craft_req[i][j] = (302 << 0)
        global.craft_req_n[i][j] = 2
        j++
        global.craft_req[i][j] = (490 << 0)
        global.craft_req_n[i][j] = 40
        global.craft_get[i] = (499 << 0)
        global.craft_get_n[i] = 1
        i++
        j = 0
        global.craft_id[i] = i
        global.craft_name[i] = ""
        global.craft_req_skill_id[i] = 0
        global.craft_req_skill_lvl[i] = 0
        global.craft_req_module_id[i] = -1
        global.craft_req_module_lvl[i] = 0
        global.craft_cost[i] = 0
        global.craft_type[i] = (6 << 0)
        global.craft_req[i][j] = (489 << 0)
        global.craft_req_n[i][j] = 50
        j++
        global.craft_req[i][j] = (296 << 0)
        global.craft_req_n[i][j] = 35
        j++
        global.craft_req[i][j] = (285 << 0)
        global.craft_req_n[i][j] = 35
        j++
        global.craft_req[i][j] = (286 << 0)
        global.craft_req_n[i][j] = 1
        j++
        global.craft_req[i][j] = (282 << 0)
        global.craft_req_n[i][j] = 1
        j++
        global.craft_req[i][j] = (283 << 0)
        global.craft_req_n[i][j] = 1
        j++
        global.craft_req[i][j] = (284 << 0)
        global.craft_req_n[i][j] = 1
        j++
        global.craft_req[i][j] = (305 << 0)
        global.craft_req_n[i][j] = 4
        j++
        global.craft_req[i][j] = (493 << 0)
        global.craft_req_n[i][j] = 60
        global.craft_get[i] = (500 << 0)
        global.craft_get_n[i] = 1
        i++
        j = 0
        global.craft_id[i] = i
        global.craft_name[i] = ""
        global.craft_req_skill_id[i] = 0
        global.craft_req_skill_lvl[i] = 0
        global.craft_req_module_id[i] = -1
        global.craft_req_module_lvl[i] = 0
        global.craft_cost[i] = 0
        global.craft_type[i] = (6 << 0)
        global.craft_req[i][j] = (489 << 0)
        global.craft_req_n[i][j] = 20
        j++
        global.craft_req[i][j] = (305 << 0)
        global.craft_req_n[i][j] = 5
        j++
        global.craft_req[i][j] = (350 << 0)
        global.craft_req_n[i][j] = 4
        j++
        global.craft_req[i][j] = (320 << 0)
        global.craft_req_n[i][j] = 3
        global.craft_get[i] = (501 << 0)
        global.craft_get_n[i] = 1
        i++
        j = 0
        global.craft_id[i] = i
        global.craft_name[i] = ""
        global.craft_req_skill_id[i] = 0
        global.craft_req_skill_lvl[i] = 0
        global.craft_req_module_id[i] = -1
        global.craft_req_module_lvl[i] = 0
        global.craft_cost[i] = 0
        global.craft_type[i] = (6 << 0)
        global.craft_req[i][j] = (489 << 0)
        global.craft_req_n[i][j] = 60
        j++
        global.craft_req[i][j] = (296 << 0)
        global.craft_req_n[i][j] = 20
        j++
        global.craft_req[i][j] = (285 << 0)
        global.craft_req_n[i][j] = 20
        j++
        global.craft_req[i][j] = (286 << 0)
        global.craft_req_n[i][j] = 1
        j++
        global.craft_req[i][j] = (284 << 0)
        global.craft_req_n[i][j] = 1
        j++
        global.craft_req[i][j] = (287 << 0)
        global.craft_req_n[i][j] = 1
        j++
        global.craft_req[i][j] = (330 << 0)
        global.craft_req_n[i][j] = 6
        j++
        global.craft_req[i][j] = (491 << 0)
        global.craft_req_n[i][j] = 150
        j++
        global.craft_req[i][j] = (493 << 0)
        global.craft_req_n[i][j] = 60
        global.craft_get[i] = (502 << 0)
        global.craft_get_n[i] = 1
        i++
        j = 0
        global.craft_id[i] = i
        global.craft_name[i] = ""
        global.craft_req_skill_id[i] = 0
        global.craft_req_skill_lvl[i] = 0
        global.craft_req_module_id[i] = -1
        global.craft_req_module_lvl[i] = 0
        global.craft_cost[i] = 0
        global.craft_type[i] = (6 << 0)
        global.craft_req[i][j] = (489 << 0)
        global.craft_req_n[i][j] = 40
        j++
        global.craft_req[i][j] = (296 << 0)
        global.craft_req_n[i][j] = 25
        j++
        global.craft_req[i][j] = (285 << 0)
        global.craft_req_n[i][j] = 25
        j++
        global.craft_req[i][j] = (303 << 0)
        global.craft_req_n[i][j] = 15
        j++
        global.craft_req[i][j] = (286 << 0)
        global.craft_req_n[i][j] = 1
        j++
        global.craft_req[i][j] = (284 << 0)
        global.craft_req_n[i][j] = 1
        j++
        global.craft_req[i][j] = (287 << 0)
        global.craft_req_n[i][j] = 1
        j++
        global.craft_req[i][j] = (330 << 0)
        global.craft_req_n[i][j] = 4
        j++
        global.craft_req[i][j] = (491 << 0)
        global.craft_req_n[i][j] = 300
        global.craft_get[i] = (506 << 0)
        global.craft_get_n[i] = 1
        i++
        j = 0
        global.craft_id[i] = i
        global.craft_name[i] = ""
        global.craft_req_skill_id[i] = 0
        global.craft_req_skill_lvl[i] = 0
        global.craft_req_module_id[i] = -1
        global.craft_req_module_lvl[i] = 0
        global.craft_cost[i] = 0
        global.craft_type[i] = (6 << 0)
        global.craft_req[i][j] = (489 << 0)
        global.craft_req_n[i][j] = 100
        j++
        global.craft_req[i][j] = (491 << 0)
        global.craft_req_n[i][j] = 100
        j++
        global.craft_req[i][j] = (492 << 0)
        global.craft_req_n[i][j] = 25
        j++
        global.craft_req[i][j] = (490 << 0)
        global.craft_req_n[i][j] = 30
        j++
        global.craft_req[i][j] = (493 << 0)
        global.craft_req_n[i][j] = 50
        global.craft_get[i] = (503 << 0)
        global.craft_get_n[i] = 1
        i++
        j = 0
        global.craft_id[i] = i
        global.craft_name[i] = ""
        global.craft_req_skill_id[i] = 0
        global.craft_req_skill_lvl[i] = 0
        global.craft_req_module_id[i] = -1
        global.craft_req_module_lvl[i] = 0
        global.craft_cost[i] = 0
        global.craft_type[i] = (6 << 0)
        global.craft_req[i][j] = (489 << 0)
        global.craft_req_n[i][j] = 120
        j++
        global.craft_req[i][j] = (296 << 0)
        global.craft_req_n[i][j] = 30
        j++
        global.craft_req[i][j] = (285 << 0)
        global.craft_req_n[i][j] = 30
        j++
        global.craft_req[i][j] = (303 << 0)
        global.craft_req_n[i][j] = 30
        j++
        global.craft_req[i][j] = (282 << 0)
        global.craft_req_n[i][j] = 1
        j++
        global.craft_req[i][j] = (284 << 0)
        global.craft_req_n[i][j] = 1
        j++
        global.craft_req[i][j] = (286 << 0)
        global.craft_req_n[i][j] = 2
        global.craft_get[i] = (504 << 0)
        global.craft_get_n[i] = 1
        i++
        j = 0
        global.craft_id[i] = i
        global.craft_name[i] = ""
        global.craft_req_skill_id[i] = 0
        global.craft_req_skill_lvl[i] = 0
        global.craft_req_module_id[i] = -1
        global.craft_req_module_lvl[i] = 0
        global.craft_cost[i] = 0
        global.craft_type[i] = (6 << 0)
        global.craft_req[i][j] = (269 << 0)
        global.craft_req_n[i][j] = 8
        j++
        global.craft_req[i][j] = (270 << 0)
        global.craft_req_n[i][j] = 5
        j++
        global.craft_req[i][j] = (274 << 0)
        global.craft_req_n[i][j] = 3
        j++
        global.craft_req[i][j] = (245 << 0)
        global.craft_req_n[i][j] = 10
        j++
        global.craft_req[i][j] = (243 << 0)
        global.craft_req_n[i][j] = 5
        j++
        global.craft_req[i][j] = (338 << 0)
        global.craft_req_n[i][j] = 2
        j++
        global.craft_req[i][j] = (345 << 0)
        global.craft_req_n[i][j] = 2
        j++
        global.craft_req[i][j] = (251 << 0)
        global.craft_req_n[i][j] = 3
        j++
        global.craft_req[i][j] = (316 << 0)
        global.craft_req_n[i][j] = 1
        j++
        global.craft_get[i] = (505 << 0)
        global.craft_get_n[i] = 1
        i++
        j = 0
        global.craft_id[i] = i
        global.craft_name[i] = ""
        global.craft_req_skill_id[i] = 0
        global.craft_req_skill_lvl[i] = 0
        global.craft_req_module_id[i] = -1
        global.craft_req_module_lvl[i] = 0
        global.craft_cost[i] = 0
        global.craft_type[i] = (7 << 0)
        global.craft_req[i][j] = (489 << 0)
        global.craft_req_n[i][j] = 80
        j++
        global.craft_req[i][j] = (296 << 0)
        global.craft_req_n[i][j] = 40
        j++
        global.craft_req[i][j] = (285 << 0)
        global.craft_req_n[i][j] = 40
        j++
        global.craft_req[i][j] = (286 << 0)
        global.craft_req_n[i][j] = 2
        j++
        global.craft_req[i][j] = (284 << 0)
        global.craft_req_n[i][j] = 1
        j++
        global.craft_req[i][j] = (283 << 0)
        global.craft_req_n[i][j] = 1
        j++
        global.craft_req[i][j] = (282 << 0)
        global.craft_req_n[i][j] = 1
        j++
        global.craft_req[i][j] = (287 << 0)
        global.craft_req_n[i][j] = 2
        j++
        global.craft_req[i][j] = (330 << 0)
        global.craft_req_n[i][j] = 4
        global.craft_get[i] = (508 << 0)
        global.craft_get_n[i] = 1
        i++
        j = 0
        global.craft_id[i] = i
        global.craft_name[i] = ""
        global.craft_req_skill_id[i] = (22 << 0)
        global.craft_req_skill_lvl[i] = 1
        global.craft_req_module_id[i] = -1
        global.craft_req_module_lvl[i] = 0
        global.craft_cost[i] = 0
        global.craft_type[i] = (3 << 0)
        global.craft_req[i][j] = (489 << 0)
        global.craft_req_n[i][j] = 10
        j++
        global.craft_req[i][j] = (493 << 0)
        global.craft_req_n[i][j] = 15
        j++
        global.craft_req[i][j] = (287 << 0)
        global.craft_req_n[i][j] = 1
        j++
        global.craft_req[i][j] = (289 << 0)
        global.craft_req_n[i][j] = 1
        j++
        global.craft_req[i][j] = (284 << 0)
        global.craft_req_n[i][j] = 1
        global.craft_get[i] = (240 << 0)
        global.craft_get_n[i] = 1
        i++
        j = 0
        global.craft_id[i] = i
        global.craft_name[i] = ""
        global.craft_req_skill_id[i] = (22 << 0)
        global.craft_req_skill_lvl[i] = 1
        global.craft_req_module_id[i] = -1
        global.craft_req_module_lvl[i] = 0
        global.craft_cost[i] = 0
        global.craft_type[i] = (3 << 0)
        global.craft_req[i][j] = (489 << 0)
        global.craft_req_n[i][j] = 50
        j++
        global.craft_req[i][j] = (287 << 0)
        global.craft_req_n[i][j] = 1
        j++
        global.craft_req[i][j] = (289 << 0)
        global.craft_req_n[i][j] = 1
        j++
        global.craft_req[i][j] = (284 << 0)
        global.craft_req_n[i][j] = 1
        j++
        global.craft_req[i][j] = (286 << 0)
        global.craft_req_n[i][j] = 1
        j++
        global.craft_get[i] = (241 << 0)
        global.craft_get_n[i] = 1
        i++
        j = 0
        global.craft_id[i] = i
        global.craft_name[i] = ""
        global.craft_req_skill_id[i] = (22 << 0)
        global.craft_req_skill_lvl[i] = 2
        global.craft_req_module_id[i] = -1
        global.craft_req_module_lvl[i] = 0
        global.craft_cost[i] = 0
        global.craft_type[i] = (3 << 0)
        global.craft_req[i][j] = (489 << 0)
        global.craft_req_n[i][j] = 15
        j++
        global.craft_req[i][j] = (493 << 0)
        global.craft_req_n[i][j] = 25
        j++
        global.craft_req[i][j] = (287 << 0)
        global.craft_req_n[i][j] = 2
        j++
        global.craft_req[i][j] = (289 << 0)
        global.craft_req_n[i][j] = 1
        j++
        global.craft_req[i][j] = (284 << 0)
        global.craft_req_n[i][j] = 1
        global.craft_get[i] = (238 << 0)
        global.craft_get_n[i] = 1
        i++
        j = 0
        global.craft_id[i] = i
        global.craft_name[i] = ""
        global.craft_req_skill_id[i] = (22 << 0)
        global.craft_req_skill_lvl[i] = 3
        global.craft_req_module_id[i] = -1
        global.craft_req_module_lvl[i] = 0
        global.craft_cost[i] = 0
        global.craft_type[i] = (3 << 0)
        global.craft_req[i][j] = (489 << 0)
        global.craft_req_n[i][j] = 20
        j++
        global.craft_req[i][j] = (493 << 0)
        global.craft_req_n[i][j] = 30
        j++
        global.craft_req[i][j] = (287 << 0)
        global.craft_req_n[i][j] = 2
        j++
        global.craft_req[i][j] = (289 << 0)
        global.craft_req_n[i][j] = 1
        j++
        global.craft_req[i][j] = (284 << 0)
        global.craft_req_n[i][j] = 1
        global.craft_get[i] = (236 << 0)
        global.craft_get_n[i] = 1
        i++
        j = 0
        global.craft_id[i] = i
        global.craft_name[i] = ""
        global.craft_req_skill_id[i] = (22 << 0)
        global.craft_req_skill_lvl[i] = 3
        global.craft_req_module_id[i] = -1
        global.craft_req_module_lvl[i] = 0
        global.craft_cost[i] = 0
        global.craft_type[i] = (3 << 0)
        global.craft_req[i][j] = (489 << 0)
        global.craft_req_n[i][j] = 35
        j++
        global.craft_req[i][j] = (493 << 0)
        global.craft_req_n[i][j] = 55
        j++
        global.craft_req[i][j] = (287 << 0)
        global.craft_req_n[i][j] = 3
        j++
        global.craft_req[i][j] = (289 << 0)
        global.craft_req_n[i][j] = 1
        j++
        global.craft_req[i][j] = (282 << 0)
        global.craft_req_n[i][j] = 1
        j++
        global.craft_req[i][j] = (284 << 0)
        global.craft_req_n[i][j] = 1
        global.craft_get[i] = (239 << 0)
        global.craft_get_n[i] = 1
        i++
        j = 0
        global.craft_id[i] = i
        global.craft_name[i] = ""
        global.craft_req_skill_id[i] = (22 << 0)
        global.craft_req_skill_lvl[i] = 4
        global.craft_req_module_id[i] = -1
        global.craft_req_module_lvl[i] = 0
        global.craft_cost[i] = 0
        global.craft_type[i] = (3 << 0)
        global.craft_req[i][j] = (489 << 0)
        global.craft_req_n[i][j] = 45
        j++
        global.craft_req[i][j] = (493 << 0)
        global.craft_req_n[i][j] = 65
        j++
        global.craft_req[i][j] = (287 << 0)
        global.craft_req_n[i][j] = 3
        j++
        global.craft_req[i][j] = (289 << 0)
        global.craft_req_n[i][j] = 1
        j++
        global.craft_req[i][j] = (282 << 0)
        global.craft_req_n[i][j] = 1
        j++
        global.craft_req[i][j] = (284 << 0)
        global.craft_req_n[i][j] = 1
        global.craft_get[i] = (237 << 0)
        global.craft_get_n[i] = 1
        i++
        j = 0
        global.craft_id[i] = i
        global.craft_name[i] = ""
        global.craft_req_skill_id[i] = (22 << 0)
        global.craft_req_skill_lvl[i] = 4
        global.craft_req_module_id[i] = -1
        global.craft_req_module_lvl[i] = 0
        global.craft_cost[i] = 0
        global.craft_type[i] = (3 << 0)
        global.craft_req[i][j] = (489 << 0)
        global.craft_req_n[i][j] = 60
        j++
        global.craft_req[i][j] = (493 << 0)
        global.craft_req_n[i][j] = 80
        j++
        global.craft_req[i][j] = (287 << 0)
        global.craft_req_n[i][j] = 4
        j++
        global.craft_req[i][j] = (289 << 0)
        global.craft_req_n[i][j] = 1
        j++
        global.craft_req[i][j] = (283 << 0)
        global.craft_req_n[i][j] = 1
        j++
        global.craft_req[i][j] = (282 << 0)
        global.craft_req_n[i][j] = 1
        j++
        global.craft_req[i][j] = (284 << 0)
        global.craft_req_n[i][j] = 1
        global.craft_get[i] = (235 << 0)
        global.craft_get_n[i] = 1
        i++
        j = 0
        global.craft_id[i] = i
        global.craft_name[i] = ""
        global.craft_req_skill_id[i] = (22 << 0)
        global.craft_req_skill_lvl[i] = 4
        global.craft_req_module_id[i] = -1
        global.craft_req_module_lvl[i] = 0
        global.craft_cost[i] = 0
        global.craft_type[i] = (3 << 0)
        global.craft_req[i][j] = (489 << 0)
        global.craft_req_n[i][j] = 100
        j++
        global.craft_req[i][j] = (287 << 0)
        global.craft_req_n[i][j] = 2
        j++
        global.craft_req[i][j] = (289 << 0)
        global.craft_req_n[i][j] = 1
        j++
        global.craft_req[i][j] = (284 << 0)
        global.craft_req_n[i][j] = 1
        j++
        global.craft_req[i][j] = (282 << 0)
        global.craft_req_n[i][j] = 1
        j++
        global.craft_req[i][j] = (297 << 0)
        global.craft_req_n[i][j] = 1
        global.craft_get[i] = (242 << 0)
        global.craft_get_n[i] = 1
        i++
        j = 0
        global.craft_id[i] = i
        global.craft_name[i] = ""
        global.craft_req_skill_id[i] = 0
        global.craft_req_skill_lvl[i] = 0
        global.craft_req_module_id[i] = -1
        global.craft_req_module_lvl[i] = 0
        global.craft_cost[i] = 0
        global.craft_type[i] = (8 << 0)
        global.craft_req[i][j] = (290 << 0)
        global.craft_req_n[i][j] = 1
        j++
        global.craft_req[i][j] = (305 << 0)
        global.craft_req_n[i][j] = 24
        j++
        global.craft_req[i][j] = (311 << 0)
        global.craft_req_n[i][j] = 10
        j++
        global.craft_req[i][j] = (309 << 0)
        global.craft_req_n[i][j] = 5
        j++
        global.craft_req[i][j] = (317 << 0)
        global.craft_req_n[i][j] = 2
        j++
        global.craft_req[i][j] = (321 << 0)
        global.craft_req_n[i][j] = 5
        j++
        global.craft_get[i] = (663 << 0)
        global.craft_get_n[i] = 1
        global.last_stastic_craft = (i + 1)
        for (var m = 0; m < global.last_stastic_craft; m++)
            global.craft_track[m] = 0
        scr_load_tracked_craft()
        if (ds_list_size(global.lista_repair_id) > 0)
        {
            for (j = 0; j < ds_list_size(global.lista_repair_id); j++)
            {
                i++
                global.craft_id[i] = i
                global.craft_name[i] = ""
                global.craft_cost[i] = 0
                global.craft_req_skill_id[i] = 0
                global.craft_req_skill_lvl[i] = 0
                global.craft_req_module_id[i] = -1
                global.craft_req_module_lvl[i] = 0
                global.craft_type[i] = (4 << 0)
                global.craft_req[i][0] = (493 << 0)
                global.craft_req_n[i][0] = ds_list_find_value(global.lista_repair_qnt, j)
                global.craft_req[i][1] = (489 << 0)
                global.craft_req_n[i][1] = ceil((ds_list_find_value(global.lista_repair_qnt, j) * 0.25))
                global.craft_get[i] = ds_list_find_value(global.lista_repair_id, j)
                global.craft_get_n[i] = 1
                global.craft_get_dur[i] = ds_list_find_value(global.lista_repair_dur, j)
            }
        }
        if (ds_list_size(global.lista_mod_id) > 0)
        {
            for (var k = 0; k < ds_list_size(global.lista_mod_id); k++)
            {
                i++
                global.craft_id[i] = i
                global.craft_name[i] = ""
                global.craft_req_skill_id[i] = 0
                global.craft_req_skill_lvl[i] = 0
                global.craft_req_module_id[i] = -1
                global.craft_req_module_lvl[i] = 0
                global.craft_cost[i] = 0
                global.craft_type[i] = (5 << 0)
                global.craft_req[i][0] = (493 << 0)
                global.craft_req_n[i][0] = 1
                global.craft_get[i] = ds_list_find_value(global.lista_mod_id, k)
                global.craft_get_n[i] = 1
            }
        }
        global.craft_grid = ds_grid_create(50, 11)
        ds_grid_destroy(global.craft_grid)
        global.craft_grid = ds_grid_create(50, 11)
        ds_grid_clear(global.craft_grid, -1)
        var ii = array_length_1d(global.craft_type)
        array_griglia[(0 << 0)] = 0
        array_griglia[(2 << 0)] = 0
        array_griglia[(1 << 0)] = 0
        array_griglia[(3 << 0)] = 0
        array_griglia[(4 << 0)] = 0
        array_griglia[(5 << 0)] = 0
        array_griglia[(6 << 0)] = 0
        array_griglia[(7 << 0)] = 0
        array_griglia[(8 << 0)] = 0
        for (var a = 0; a < ii; a++)
        {
            if (global.craft_cost[a] != -1)
            {
                var tipo = global.craft_type[a]
                ds_grid_set(global.craft_grid, array_get(array_griglia, tipo), tipo, global.craft_id[a])
                array_griglia[tipo] += 1
            }
        }
        global.grid_craft_i = ds_grid_create(21, 9)
        ds_grid_destroy(global.grid_craft_i)
        global.grid_craft_i = ds_grid_create(21, 9)
        ds_grid_clear(global.grid_craft_i, -1)
    }
    return;
}

