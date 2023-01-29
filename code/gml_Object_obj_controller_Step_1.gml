global.status_state_now[(0 << 0)] = scr_get_status_state((0 << 0), obj_player.fatigue)
global.status_state_now[(1 << 0)] = scr_get_status_state((1 << 0), obj_player.energy)
global.status_state_now[(2 << 0)] = scr_get_status_state((1 << 0), obj_player.thirst)
global.status_state_now[(3 << 0)] = scr_get_status_state((3 << 0), obj_player.radiation_accumulata)
ds_list_clear(global.list_status_id)
for (var i = 0; i < array_length_1d(global.status_id); i++)
    ds_list_add(global.list_status_id, i)
lista_skill_factor()
var oo = (0 << 0)
switch global.status_state_now[oo]
{
    case (0 << 0):
        break
    case (1 << 0):
        break
    case (2 << 0):
        global.sk_k[(6 << 0)] += global.status_f1[oo][(2 << 0)]
        break
    case (3 << 0):
        global.sk_k[(6 << 0)] += global.status_f1[oo][(3 << 0)]
        break
    case (4 << 0):
        global.sk_k[(6 << 0)] += global.status_f1[oo][(4 << 0)]
        break
    default:

}

oo = (1 << 0)
switch global.status_state_now[oo]
{
    case (0 << 0):
        global.sk_k[(1 << 0)] += global.status_f1[oo][(0 << 0)]
        break
    case (1 << 0):
        break
    case (2 << 0):
        global.sk_k[(1 << 0)] += global.status_f1[oo][(2 << 0)]
        break
    case (3 << 0):
        global.sk_k[(1 << 0)] += global.status_f1[oo][(3 << 0)]
        break
    case (4 << 0):
        global.sk_k[(1 << 0)] += global.status_f1[oo][(4 << 0)]
        break
}

oo = (2 << 0)
switch global.status_state_now[oo]
{
    case (0 << 0):
        global.sk_k[(1 << 0)] += global.status_f1[oo][(0 << 0)]
        break
    case (1 << 0):
        break
    case (2 << 0):
        global.sk_k[(1 << 0)] += global.status_f1[oo][(2 << 0)]
        break
    case (3 << 0):
        global.sk_k[(1 << 0)] += global.status_f1[oo][(3 << 0)]
        break
    case (4 << 0):
        global.sk_k[(1 << 0)] += global.status_f1[oo][(4 << 0)]
        break
}

oo = (3 << 0)
var chance_bleed = 0.027777777777777776
var chance_vomito = 0.009259259259259259
var chance_dead = 0.002777777777777778
switch global.status_state_now[oo]
{
    case (0 << 0):
        break
    case (1 << 0):
        break
    case (2 << 0):
        if scr_chance(chance_bleed)
        {
            obj_player.bleed += 1
            scr_draw_npc_text(obj_player.id, (32 << 0))
        }
        break
    case (3 << 0):
        if scr_chance((chance_bleed * 1.5))
        {
            obj_player.bleed += 1
            scr_draw_npc_text(obj_player.id, (32 << 0))
        }
        if scr_chance(chance_vomito)
        {
            obj_player.energy -= 25
            obj_player.thirst -= 35
            scr_draw_npc_text(obj_player.id, (31 << 0))
        }
        break
    case (4 << 0):
        if scr_chance((chance_bleed * 2))
            obj_player.bleed += 1
        if scr_chance((chance_vomito * 1.5))
        {
            obj_player.energy -= 25
            obj_player.thirst -= 35
            scr_draw_npc_text(obj_player.id, (31 << 0))
        }
        if scr_chance(chance_dead)
        {
            if (room == room1)
                obj_player.hp = 0
        }
        break
    default:

}

if instance_exists(obj_player)
{
    if (obj_player.state != gml_Script_scr_player_state_inventory)
    {
        obj_player.check_max_weight += 1
        if (obj_player.check_max_weight >= obj_player.check_max_weight_max)
        {
            obj_player.check_max_weight = 0
            with (obj_player)
                scr_check_weight()
        }
    }
    else
        obj_player.check_max_weight = (obj_player.check_max_weight_max - 2)
}
