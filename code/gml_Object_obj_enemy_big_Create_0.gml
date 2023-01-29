event_inherited()
npc_id = (37 << 0)
faction = npc_faction[npc_id]
hp = npc_hp[npc_id]
state = npc_state_patrol[npc_id]
sprite_index = npc_sprite_idle[npc_id]
timer_ruggito = 0
timer_ruggito_max = 0
audio_emitter_falloff(emitter_walk, 96, 200, 1)
audio_play_sound_on(emitter_talk, snd_big_breathing, true, 5)
