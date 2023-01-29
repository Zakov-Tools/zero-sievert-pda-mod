event_inherited()
npc_id = (38 << 0)
faction = npc_faction[npc_id]
hp = npc_hp[npc_id]
state = npc_state_patrol[npc_id]
sprite_index = npc_sprite_idle[npc_id]
weapon_number = 0
weapon_number_max = 6
red_blood = 0
prob_attack1 = 5
dmg_attack1 = 2
instance_create_depth(x, y, 0, obj_light_wraith_electricity)
