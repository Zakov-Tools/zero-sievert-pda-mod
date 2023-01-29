event_inherited()
npc_id = (39 << 0)
faction = npc_faction[npc_id]
hp = npc_hp[npc_id]
state = npc_state_patrol[npc_id]
sprite_index = npc_sprite_idle[npc_id]
weapon_number = 0
weapon_number_max = 6
red_blood = 0
prob_attac = 1
damage_bullet = 10
bullet_spd = 2.5
instance_create_depth(x, y, 0, obj_light_wraith_fire)
