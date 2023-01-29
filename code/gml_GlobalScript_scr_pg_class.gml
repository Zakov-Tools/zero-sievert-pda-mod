function scr_pg_class() //gml_Script_scr_pg_class
{
    var a = (0 << 0)
    class_name[a] = "TANK"
    class_description[a] = "Expert in CQC combat.\nMore health but less stamina and movement speed.\nStarts with a shotgun and armor."
    class_hp[a] = 75
    class_stamina[a] = 100
    class_speed[a] = 0.75
    class_sprint[a] = 1.2
    class_weight[a] = 5
    a = (1 << 0)
    class_name[a] = "ASSAULT"
    class_description[a] = "The more equilibrated class.\nStart with an AK-74 and lot of ammo"
    class_hp[a] = 75
    class_stamina[a] = 100
    class_speed[a] = 0.75
    class_sprint[a] = 1.2
    class_weight[a] = 5
    a = (2 << 0)
    class_name[a] = "SNIPER"
    class_description[a] = "Fragile but very deadly.\nLess health but more movement speed and stamina.\nExcellent to relocate during combat"
    class_hp[a] = 75
    class_stamina[a] = 100
    class_speed[a] = 0.75
    class_sprint[a] = 1.2
    class_weight[a] = 5
    return;
}

