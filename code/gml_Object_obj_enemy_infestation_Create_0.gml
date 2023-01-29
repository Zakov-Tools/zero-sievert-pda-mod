event_inherited()
npc_id = (36 << 0)
faction = npc_faction[npc_id]
hp = npc_hp[npc_id]
state = npc_state_patrol[npc_id]
sprite_index = npc_sprite_idle[npc_id]
timer = 0
timer_max = 240
spawn_amount = 1
spawn_max = 10
max_same_time = 6
repeat (2 + irandom(2))
    instance_create_depth((x + irandom_range(-16, 16)), (y + irandom_range(-16, 16)), 0, obj_enemy_ghoul)
