function state_enemy_mutant_turret() //gml_Script_state_enemy_mutant_turret
{
    target = scr_find_target_for_mutant(npc_alert_visual_distance[npc_id])
    if (target != noone)
    {
        hspd = 0
        vspd = 0
        if scr_chance(npc_prob_attack[npc_id])
        {
            var vel = 1.5
            var dir = point_direction(x, y, target.x, target.y)
            var bull = instance_create_depth(x, y, (-y), obj_bullet_plant)
            bull.hspd = lengthdir_x(vel, dir)
            bull.vspd = lengthdir_y(vel, dir)
            bull.damage = npc_damage_melee[npc_id]
            bull.shooter_faction = faction
            bull.shooter_id = id
        }
    }
    return;
}

