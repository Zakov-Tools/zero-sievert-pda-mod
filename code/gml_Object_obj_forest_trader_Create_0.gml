event_inherited()
npc_id = (62 << 0)
faction = npc_faction[npc_id]
hp = npc_hp[npc_id]
state = npc_state_patrol[npc_id]
sprite_index = npc_sprite_idle[npc_id]
arma_now = npc_arma[npc_id]
ammo_magazine = arma_magazine[arma_now]
ammo_now = arma_magazine[arma_now]
var fatta_ = global.quest_unique_done[(71 << 0)]
if (fatta_ == 1)
    instance_create_depth((x + 20), y, 0, obj_chest_forest_trader_regalo)
