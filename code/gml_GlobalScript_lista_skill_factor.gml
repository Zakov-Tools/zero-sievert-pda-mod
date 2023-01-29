function lista_skill_factor() //gml_Script_lista_skill_factor
{
    global.sk_k[(0 << 0)] = 0
    global.sk_na[(0 << 0)] = "stamina"
    global.sk_k[(1 << 0)] = 0
    global.sk_na[(1 << 0)] = "max weight"
    global.sk_k[(2 << 0)] = 0
    global.sk_na[(2 << 0)] = "free run"
    global.sk_k[(3 << 0)] = 0
    global.sk_na[(3 << 0)] = "move overkg"
    global.sk_k[(4 << 0)] = 1
    global.sk_na[(4 << 0)] = "run cost"
    global.sk_k[(5 << 0)] = 1
    global.sk_na[(5 << 0)] = "run speed"
    global.sk_k[(6 << 0)] = 1
    global.sk_na[(6 << 0)] = "stamina regen"
    global.sk_k[(7 << 0)] = 1
    global.sk_na[(7 << 0)] = "loot speed"
    global.sk_k[(8 << 0)] = 1
    global.sk_na[(8 << 0)] = "More loot"
    global.sk_k[(9 << 0)] = 0
    global.sk_na[(9 << 0)] = "see chest"
    global.sk_k[(10 << 0)] = 1
    global.sk_na[(10 << 0)] = "En sight range"
    global.sk_k[(11 << 0)] = 1
    global.sk_na[(11 << 0)] = "En long detection"
    global.sk_k[(12 << 0)] = 1
    global.sk_na[(12 << 0)] = "damage undetected"
    global.sk_k[(13 << 0)] = 0
    global.sk_na[(13 << 0)] = "en out camera"
    global.sk_k[(14 << 0)] = 1
    global.sk_na[(14 << 0)] = "en longer visible"
    global.sk_k[(15 << 0)] = 1
    global.sk_na[(15 << 0)] = "more stash"
    global.sk_k[(16 << 0)] = 1
    global.sk_na[(16 << 0)] = "recoil"
    global.sk_k[(17 << 0)] = 1
    global.sk_na[(17 << 0)] = "reload_speed"
    global.sk_k[(18 << 0)] = 1
    global.sk_na[(18 << 0)] = "ergonomics_while_aiming"
    global.sk_k[(19 << 0)] = 1
    global.sk_na[(19 << 0)] = "damage_while_aiming"
    global.sk_k[(20 << 0)] = 0
    global.sk_na[(20 << 0)] = "bullet_time_while_aiming"
    global.sk_k[(21 << 0)] = 1
    global.sk_na[(21 << 0)] = "sell_price"
    global.sk_k[(22 << 0)] = 1
    global.sk_na[(22 << 0)] = "trader_have_more_money"
    global.sk_k[(23 << 0)] = 1
    global.sk_na[(23 << 0)] = "trader_sell_more_items"
    global.sk_k[(24 << 0)] = 1
    global.sk_na[(24 << 0)] = "trader_have_more_quest"
    global.sk_k[(25 << 0)] = 1
    global.sk_na[(25 << 0)] = "increase_quest_reward"
    global.sk_k[(26 << 0)] = 0
    global.sk_na[(26 << 0)] = "craft_basic_medicine"
    global.sk_k[(27 << 0)] = 0
    global.sk_na[(27 << 0)] = "craft_advance_medicine"
    global.sk_k[(28 << 0)] = 1
    global.sk_na[(28 << 0)] = "heal_animation_speed"
    global.sk_k[(29 << 0)] = 1
    global.sk_na[(29 << 0)] = "heal_duration"
    global.sk_k[(30 << 0)] = 0
    global.sk_na[(30 << 0)] = "mod_weapon_1"
    global.sk_k[(31 << 0)] = 0
    global.sk_na[(31 << 0)] = "mod_weapon_2"
    global.sk_k[(32 << 0)] = 1
    global.sk_na[(32 << 0)] = "weapon_durability_loss"
    global.sk_k[(33 << 0)] = 1
    global.sk_na[(33 << 0)] = "modder"
    global.sk_k[(34 << 0)] = 0
    global.sk_na[(34 << 0)] = "cook_basic"
    global.sk_k[(35 << 0)] = 0
    global.sk_na[(35 << 0)] = "cook_advance"
    global.sk_k[(37 << 0)] = 1
    global.sk_na[(37 << 0)] = "cook_costa_meno"
    global.sk_k[(36 << 0)] = 1
    global.sk_na[(36 << 0)] = "cook_nutrition_food"
    global.sk_k[(38 << 0)] = 0
    global.sk_na[(38 << 0)] = "nutritionist_hp"
    global.sk_k[(39 << 0)] = 0
    global.sk_na[(39 << 0)] = "nutritionist_stamina"
    global.sk_k[(40 << 0)] = 0
    global.sk_na[(40 << 0)] = "craftmanship_1"
    global.sk_k[(41 << 0)] = 0
    global.sk_na[(41 << 0)] = "engineer"
    global.sk_k[(42 << 0)] = 0
    global.sk_na[(42 << 0)] = "manual_work"
    global.sk_k[(43 << 0)] = 0
    global.sk_na[(43 << 0)] = "hp"
    global.sk_k[(44 << 0)] = 1
    global.sk_na[(44 << 0)] = "chance_bleeding"
    global.sk_k[(45 << 0)] = 1
    global.sk_na[(45 << 0)] = "restore_bleeding"
    global.sk_k[(46 << 0)] = 0
    global.sk_na[(46 << 0)] = "restore_hp"
    global.sk_k[(47 << 0)] = 1
    global.sk_na[(47 << 0)] = "restore_rad"
    global.sk_k[(49 << 0)] = 1
    global.sk_na[(49 << 0)] = "exp_rate_all"
    global.sk_k[(50 << 0)] = 1
    global.sk_na[(50 << 0)] = "restore_fatigue"
    global.sk_k[(51 << 0)] = 1
    global.sk_na[(51 << 0)] = "restore_wound"
    global.sk_k[(48 << 0)] = 0
    global.sk_na[(48 << 0)] = "exp_gain_time_max"
    global.sk_k[(52 << 0)] = 1
    global.sk_na[(52 << 0)] = "rate_hunger"
    global.sk_k[(53 << 0)] = 1
    global.sk_na[(53 << 0)] = "rate_thirst"
    global.sk_k[(54 << 0)] = 1
    global.sk_na[(54 << 0)] = "scrap_item_ottenuti"
    global.sk_k[(55 << 0)] = 1
    global.sk_na[(55 << 0)] = "exp_rate_cardio"
    global.sk_k[(56 << 0)] = 1
    global.sk_na[(56 << 0)] = "rate_fatigue"
    global.sk_k[(57 << 0)] = 1
    global.sk_na[(57 << 0)] = "exp_rate_shooting"
    global.sk_k[(58 << 0)] = 1
    global.sk_na[(58 << 0)] = "weapon_damage"
    global.sk_k[(59 << 0)] = 0
    global.sk_na[(59 << 0)] = "provde_scrap_material"
    global.sk_k[(62 << 0)] = 0
    global.sk_na[(62 << 0)] = "provide_scrap_ammo"
    global.sk_k[(60 << 0)] = 0
    global.sk_na[(60 << 0)] = "provide_scrap_food"
    global.sk_k[(61 << 0)] = 0
    global.sk_na[(61 << 0)] = "provide_scrap_med"
    global.sk_k[(63 << 0)] = 0
    global.sk_na[(63 << 0)] = "provide_random_item"
    global.sk_k[(64 << 0)] = 1
    global.sk_na[(64 << 0)] = "more_scrap_from_item"
    global.sk_k[(65 << 0)] = 0
    global.sk_na[(65 << 0)] = "repair_all"
    global.sk_k[(66 << 0)] = 1
    global.sk_na[(66 << 0)] = "repair_all_rate"
    global.sk_k[(67 << 0)] = 0
    global.sk_na[(67 << 0)] = "kitchen_built"
    global.sk_k[(68 << 0)] = 0
    global.sk_na[(68 << 0)] = "infirmary_built"
    global.sk_k[(69 << 0)] = 0
    global.sk_na[(69 << 0)] = "ammo_built"
    global.sk_k[(70 << 0)] = 0
    global.sk_na[(70 << 0)] = "ammo_built_tier2"
    global.sk_k[(0 << 0)] += (2 * floor(global.sk_lvl[(0 << 0)]))
    if (global.sk_lvl[(1 << 0)] >= 0)
    {
        global.sk_k[(0 << 0)] += (10 + (2 * floor(global.sk_lvl[(1 << 0)])))
        global.sk_k[(2 << 0)] = (20 + (2 * floor(global.sk_lvl[(1 << 0)])))
    }
    if (global.sk_lvl[(2 << 0)] >= 0)
    {
        global.sk_k[(3 << 0)] = 1
        global.sk_k[(1 << 0)] += (5 + (0.6 * floor(global.sk_lvl[(2 << 0)])))
    }
    if (global.sk_lvl[(3 << 0)] >= 0)
    {
        global.sk_k[(0 << 0)] += (5 + (1 * floor(global.sk_lvl[(3 << 0)])))
        global.sk_k[(5 << 0)] += (0.1 + (0.03 * floor(global.sk_lvl[(3 << 0)])))
        global.sk_k[(4 << 0)] -= (0.3 + (0.02 * floor(global.sk_lvl[(3 << 0)])))
    }
    global.sk_k[(7 << 0)] += (0.03 * floor(global.sk_lvl[(4 << 0)]))
    if (global.sk_lvl[(5 << 0)] >= 0)
    {
        global.sk_k[(7 << 0)] += (0.3 + (0.03 * floor(global.sk_lvl[(5 << 0)])))
        global.sk_k[(9 << 0)] = 1
        global.sk_k[(8 << 0)] += (0.2 + (0.02 * floor(global.sk_lvl[(5 << 0)])))
    }
    if (global.sk_lvl[(6 << 0)] >= 0)
    {
        global.sk_k[(10 << 0)] += (-0.1 - (0.01 * floor(global.sk_lvl[(6 << 0)])))
        global.sk_k[(11 << 0)] += (1 + (0.05 * floor(global.sk_lvl[(6 << 0)])))
        global.sk_k[(12 << 0)] += (0.1 + (0.02 * floor(global.sk_lvl[(6 << 0)])))
    }
    if (global.sk_lvl[(7 << 0)] >= 0)
    {
        global.sk_k[(7 << 0)] += (0.1 + (0.02 * floor(global.sk_lvl[(7 << 0)])))
        global.sk_k[(14 << 0)] += (0.2 + (0.03 * floor(global.sk_lvl[(7 << 0)])))
        global.sk_k[(15 << 0)] += (0.3 + (0.02 * floor(global.sk_lvl[(7 << 0)])))
    }
    global.sk_k[(16 << 0)] += (-0.02 * floor(global.sk_lvl[(8 << 0)]))
    global.sk_k[(17 << 0)] += (-0.01 * floor(global.sk_lvl[(8 << 0)]))
    if (global.sk_lvl[(9 << 0)] >= 0)
    {
        global.sk_k[(16 << 0)] += (-0.15 - (0.02 * floor(global.sk_lvl[(9 << 0)])))
        global.sk_k[(17 << 0)] += (-0.05 - (0.01 * floor(global.sk_lvl[(9 << 0)])))
    }
    if (global.sk_lvl[(10 << 0)] >= 0)
    {
        global.sk_k[(16 << 0)] += (-0.05 - (0.01 * floor(global.sk_lvl[(10 << 0)])))
        global.sk_k[(17 << 0)] += (-0.2 - (0.02 * floor(global.sk_lvl[(10 << 0)])))
    }
    if (global.sk_lvl[(11 << 0)] >= 0)
    {
        global.sk_k[(18 << 0)] += (1 + (0.1 * floor(global.sk_lvl[(11 << 0)])))
        global.sk_k[(19 << 0)] += (0.5 + (0.08 * floor(global.sk_lvl[(11 << 0)])))
        global.sk_k[(20 << 0)] = 1
    }
    global.sk_k[(21 << 0)] += (0.01 * floor(global.sk_lvl[(12 << 0)]))
    global.sk_k[(22 << 0)] += (0.02 * floor(global.sk_lvl[(12 << 0)]))
    if (global.sk_lvl[(13 << 0)] >= 0)
        global.sk_k[(22 << 0)] += (0.5 + (0.06 * floor(global.sk_lvl[(13 << 0)])))
    if (global.sk_lvl[(14 << 0)] >= 0)
        global.sk_k[(23 << 0)] += (0.5 + (0.05 * floor(global.sk_lvl[(13 << 0)])))
    if (global.sk_lvl[(15 << 0)] >= 0)
    {
        global.sk_k[(24 << 0)] += 2
        global.sk_k[(25 << 0)] += (0.3 + (0.03 * floor(global.sk_lvl[(15 << 0)])))
    }
    if (global.sk_lvl[(16 << 0)] > 0)
        global.sk_k[(26 << 0)] = 1
    if (global.sk_lvl[(17 << 0)] >= 0)
    {
        global.sk_k[(28 << 0)] += (1 + (0.1 * floor(global.sk_lvl[(17 << 0)])))
        global.sk_k[(29 << 0)] += (0.4 + (0.06 * floor(global.sk_lvl[(17 << 0)])))
    }
    if (global.sk_lvl[(18 << 0)] >= 0)
        global.sk_k[(27 << 0)] = 1
    if (global.sk_lvl[(22 << 0)] > 0)
    {
        global.sk_k[(30 << 0)] = 1
        global.sk_k[(32 << 0)] -= (0.03 * global.sk_lvl[(22 << 0)])
    }
    if (global.sk_lvl[(23 << 0)] >= 0)
        global.sk_k[(33 << 0)] = (1.1 + (0.02 * global.sk_lvl[(23 << 0)]))
    if (global.sk_lvl[(24 << 0)] >= 0)
        global.sk_k[(32 << 0)] -= (0.2 + (0.05 * global.sk_lvl[(24 << 0)]))
    if (global.sk_lvl[(19 << 0)] > 0)
    {
        global.sk_k[(34 << 0)] = 1
        global.sk_k[(36 << 0)] += (0.03 * global.sk_lvl[(19 << 0)])
    }
    if (global.sk_lvl[(20 << 0)] >= 0)
    {
        global.sk_k[(35 << 0)] = 1
        global.sk_k[(37 << 0)] = 0.75
        global.sk_k[(36 << 0)] += (0.3 + (0.05 * global.sk_lvl[(20 << 0)]))
    }
    for (var i = 0; i < array_length_1d(global.sl_id); i++)
    {
        var bid = global.sl_base_id[i]
        if (bid != -1)
        {
            var lvl_now = global.base_lvl[bid]
            switch bid
            {
                case (1 << 0):
                    if (lvl_now == 1)
                    {
                    }
                    break
                case (2 << 0):
                    if (lvl_now == 1)
                    {
                        global.sk_k[(48 << 0)] = 108000
                        global.sk_k[(49 << 0)] = 1.1
                        global.sk_k[(50 << 0)] = 1.5
                        global.sk_k[(51 << 0)] = 1.5
                    }
                    if (lvl_now == 2)
                    {
                        global.sk_k[(48 << 0)] = 108000
                        global.sk_k[(49 << 0)] = 1.2
                        global.sk_k[(50 << 0)] = 2
                        global.sk_k[(51 << 0)] = 2
                    }
                    break
                case (4 << 0):
                    if (lvl_now == 1)
                    {
                        global.sk_k[(52 << 0)] = 0.9
                        global.sk_k[(53 << 0)] = 0.9
                        global.sk_k[(67 << 0)] = 1
                    }
                    if (lvl_now == 2)
                    {
                        global.sk_k[(52 << 0)] = 0.8
                        global.sk_k[(53 << 0)] = 0.8
                        global.sk_k[(67 << 0)] = 1
                    }
                    break
                case (0 << 0):
                    if (lvl_now == 1)
                    {
                        global.sk_k[(43 << 0)] += 10
                        global.sk_k[(44 << 0)] += -0.2
                        global.sk_k[(45 << 0)] += 0.2
                        global.sk_k[(46 << 0)] += 0.0033333333333333335
                        global.sk_k[(68 << 0)] = 1
                    }
                    if (lvl_now == 2)
                    {
                        global.sk_k[(43 << 0)] += 20
                        global.sk_k[(44 << 0)] += -0.5
                        global.sk_k[(45 << 0)] += 0.5
                        global.sk_k[(46 << 0)] += 0.006666666666666667
                        global.sk_k[(47 << 0)] += 0.5
                        global.sk_k[(68 << 0)] = 1
                    }
                    break
                case (3 << 0):
                    if (lvl_now == 1)
                    {
                    }
                    break
                case (5 << 0):
                    if (lvl_now == 1)
                        global.sk_k[(64 << 0)] += 0.15
                    if (lvl_now == 2)
                        global.sk_k[(64 << 0)] += 0.3
                    break
                case (6 << 0):
                    if (lvl_now == 1)
                    {
                        global.sk_k[(55 << 0)] += 0.15
                        global.sk_k[(56 << 0)] += -0.2
                        global.sk_k[(0 << 0)] += 10
                    }
                    if (lvl_now == 2)
                    {
                        global.sk_k[(55 << 0)] += 0.3
                        global.sk_k[(56 << 0)] += -0.5
                        global.sk_k[(0 << 0)] += 20
                    }
                    break
                case (7 << 0):
                    if (lvl_now == 1)
                    {
                        global.sk_k[(57 << 0)] += 0.1
                        global.sk_k[(58 << 0)] += 0.05
                    }
                    if (lvl_now == 2)
                    {
                        global.sk_k[(57 << 0)] += 0.25
                        global.sk_k[(58 << 0)] += 0.1
                    }
                    break
                case (8 << 0):
                    if (lvl_now == 1)
                        global.sk_k[(59 << 0)] = 1
                    if (lvl_now == 2)
                        global.sk_k[(59 << 0)] = 2
                    break
                case (9 << 0):
                    if (lvl_now == 1)
                        global.sk_k[(63 << 0)] = 1
                    if (lvl_now == 2)
                        global.sk_k[(63 << 0)] = 1.5
                    break
                case (10 << 0):
                    if (lvl_now == 1)
                    {
                        global.sk_k[(60 << 0)] = 1
                        global.sk_k[(61 << 0)] = 10
                    }
                    if (lvl_now == 2)
                    {
                        global.sk_k[(60 << 0)] = 2
                        global.sk_k[(61 << 0)] = 25
                    }
                    break
                case (11 << 0):
                    if (lvl_now == 1)
                    {
                        global.sk_k[(69 << 0)] = 1
                        global.sk_k[(62 << 0)] = 1
                    }
                    if (lvl_now == 2)
                    {
                        global.sk_k[(69 << 0)] = 1
                        global.sk_k[(70 << 0)] = 1
                        global.sk_k[(62 << 0)] = 2
                    }
                    break
                case (12 << 0):
                    if (lvl_now == 1)
                    {
                        global.sk_k[(65 << 0)] = 1
                        global.sk_k[(66 << 0)] = 1
                    }
                    if (lvl_now == 2)
                    {
                        global.sk_k[(65 << 0)] = 1
                        global.sk_k[(66 << 0)] = 0.5
                    }
                    break
            }

        }
    }
    return;
}

