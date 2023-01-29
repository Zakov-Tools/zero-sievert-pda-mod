if (damage_on_hit == 1)
{
    if (npc_damage_melee[npc_id] > 0)
    {
        if (other.faction != faction)
        {
            if (other.hit == 0)
            {
                other.hit = 1
                other.shader_hit = 1
                other.alarm[2] = other.shader_hit_time
                other.alarm[4] = other.hit_time
                other.alarm[1] = (npc_damage_melee[npc_id] div 5)
                other.hp -= (npc_damage_melee[npc_id] / 2)
                scr_enemy_sound_attack()
            }
        }
    }
}
